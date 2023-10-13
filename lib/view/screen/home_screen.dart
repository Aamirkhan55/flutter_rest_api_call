import 'package:flutter/material.dart';
import 'package:flutter_rest_api_call/model/user_model.dart';
import 'package:flutter_rest_api_call/services/base_client_services.dart';
import 'package:flutter_rest_api_call/view/widgets/app_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const FlutterLogo(size: 72),
              AppButton(
                operation: 'GET',
                operationColor: Colors.lightGreen,
                description: 'Fetch users',
                onPressed: () async {
                  var response =
                      await BaseClient().get('/users').catchError((err) {});
                  if (response == null) return;
                  debugPrint('successful:');

                  var users = userFromJson(response);
                  debugPrint('Users count: ${users.length}');
                },
              ),
              AppButton(
                operation: 'POST',
                operationColor: Colors.lightBlue,
                description: 'Add user',
                onPressed: () async {
                  var user = User(
                    name: 'Asif Ali',
                    qualifications: [
                      Qualification(
                          degree: 'Master', completionData: '01-01-2025'),
                    ],
                  );

                  var response = await BaseClient()
                      .post('/users', user)
                      .catchError((err) {});
                  if (response == null) return;
                  debugPrint('successful:');
                },
              ),
              AppButton(
                operation: 'PUT',
                operationColor: Colors.orangeAccent,
                description: 'Edit user',
                onPressed: () {},
              ),
              AppButton(
                operation: 'DEL',
                operationColor: Colors.red,
                description: 'Delete user',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
