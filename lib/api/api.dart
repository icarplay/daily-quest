import 'package:http/http.dart' as http;

class API {

  String url = 'localhost:3000';

  Future<http.Response> login(String email, String password) async {
    return await http.post(Uri.http(url, 'v1/user/login'), body: { 'email': email, 'passowrd': password });
  }

}