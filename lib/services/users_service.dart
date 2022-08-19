import 'package:dio/dio.dart';
import 'package:masterclass_app/models/user/user_model.dart';

class UsersService {
  final dio = Dio();

  Future<List<UserModel>> getAllUsers() async {
    final response =
        await dio.get("https://jsonplaceholder.typicode.com/users");

    List list = response.data;
    final users = list
        .map((e) => UserModel(
              id: e["id"],
              name: e["name"],
              username: e["username"],
              email: e["email"],
              phone: e["phone"],
              website: e["website"],
            ))
        .toList();

    return users;
  }
}
