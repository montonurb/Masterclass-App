import 'package:flutter/material.dart';
import 'package:masterclass_app/controllers/users_controller.dart';
import 'package:masterclass_app/models/service/users_model.dart';
import 'package:masterclass_app/screen/widgets/header_widget.dart';
import 'package:masterclass_app/theme/app_theme.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  State<UsersScreen> createState() => UsersScreenState();
}

class UsersScreenState extends State<UsersScreen> {
  final service = UsersController();

  @override
  void initState() {
    service.getUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.colors.scaffoldBackground,
        body: Padding(
          padding:
              const EdgeInsets.only(top: 35, left: 15, right: 15, bottom: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                HeaderWidget(title: "Usuários", logo: false),
                const SizedBox(height: 16),
                ListView.builder(
                    itemCount: service.users.length,
                    itemBuilder: (context, index) {
                      UsersModel user = service.users[index];
                      return ListTile(
                        leading: Text(user.id),
                        title: Text(user.name),
                        subtitle: Text(user.email),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
