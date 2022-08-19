import 'package:flutter/foundation.dart';
import 'package:masterclass_app/models/service/users_model.dart';
import 'package:masterclass_app/services/users_service.dart';

class UsersController extends ChangeNotifier {
  final service = UsersService();
  List<UsersModel> users = [];

  getUsers() async {
    users = await service.getAllUsers();
  }
}
