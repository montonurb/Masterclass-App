import 'package:dio/dio.dart';
import 'package:masterclass_app/models/service/users_model.dart';

class UsersService {
  final dio = Dio();

  Future<List<UsersModel>> getAllUsers() async {
    final response =
        await dio.get("https://jsonplaceholder.typicode.com/users");

    List list = response.data;
    final users = list
        .map((e) => UsersModel(
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
