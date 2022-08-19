import 'package:flutter/foundation.dart';
import 'package:masterclass_app/models/user/user_model.dart';
import 'package:masterclass_app/services/users_service.dart';

class UsersController extends ChangeNotifier {
  final service = UsersService();
  List<UserModel> users = [];

  getUsers() async {
    users = await service.getAllUsers();
    notifyListeners();
  }
}
