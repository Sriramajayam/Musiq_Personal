import 'dart:convert';
import 'dart:ffi';
import 'package:loginproviderproject/data/login_data.dart';
import 'package:loginproviderproject/screens/loginpage/signuppage.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LogInProvider extends ChangeNotifier {
  late BuildContext context;
  LoginErrors _email = LoginErrors("", "");
  LoginErrors _password = LoginErrors("", "");

  LoginErrors get email => _email;
  LoginErrors get password => _password;

  FlutterSecureStorage securestoragae = FlutterSecureStorage();
  void getvalues() {
    getvalue("email");
    getvalue("password");
  }

  Future<void> _save(String key, String value) async {
    await securestoragae.write(key: key, value: value);
  }

  Future<String> getvalue(String key) async {
    return await securestoragae.read(key: key) ?? "";
  }
  

  void saveDetails() async {
    _save("email", email.value);
    _save("password", password.value);
    _save("islogged", "true");
    getvalue('email');
    print(await getvalue("email"));
    print(await getvalue("password"));



  }

  void changeEmail(String value) {
    print(value);
    if (value.isEmpty) {
      _email = LoginErrors(value, "Field is Required");
    } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
      _email = LoginErrors(value, "Invalid email Format");
    } else {
      _email = LoginErrors(value, "");
    }
    notifyListeners();
  }

  void Changepassword(String value) {
    if (value.isEmpty) {
      _password = LoginErrors(value, "Field is Required");
    } else {
      _password = LoginErrors(value, "");
    }
    notifyListeners();
  }

  void passwordTap() {
    print(email.value);

    if (email.value.isEmpty) {
      _email = LoginErrors(email.value, "Field is Required");
    }
    else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(email.value)) {
      _email = LoginErrors(email.value, "Invalid email Format");
    }
     else {
      _email = LoginErrors(email.value, "");
    }
    notifyListeners();
  }


  void PostApi(contex) async {
    print(email.value);

    print("hh");
    print(password.value);
    print(email.value);

    try {
      var response = await http.post(
          Uri.parse("https://api-musiq.applogiq.org/api/v1/users/login"),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(
              {"email": email.value, "password": password.value}));
      print(response.statusCode);

      print(response.body);
      print("SDEdwrhrthjrtydrtyhrttfFFFGG");
      if (response.statusCode == 200) {
        saveDetails();
        // cheaklogged();
        Navigator.push(
            contex,
            MaterialPageRoute(
                builder: (contex) => signuppage(
                      context: contex,
                    )));
      }

      notifyListeners();
    } catch (e) {
      print(e.toString());
      print("error");
    }
    notifyListeners();
  }
}
