import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class psas3 extends StatefulWidget {
  @override
  State<psas3> createState() => _LoginPageState();
}

class _LoginPageState extends State<psas3> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.topLeft,
              colors: [
            Color.fromARGB(255, 124, 118, 124),
            Color.fromARGB(255, 212, 160, 190),
            Color.fromARGB(255, 124, 118, 124),
          ])),
      child: Scaffold(
        backgroundColor: Color.fromARGB(0, 255, 255, 255),
        body: _page(),
      ),
    );
  }

  Widget _page() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _icon(),
            const SizedBox(height: 50),
            _inputField("Username", usernameController),
            const SizedBox(height: 20),
            _inputField("Password", passwordController, isPassword: true),
            const SizedBox(height: 50),
            _loginBtn(),
            const SizedBox(height: 20),
            _extraText(),
          ],
        ),
      ),
    );
  }

  Widget _icon() {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(255, 0, 0, 0), width: 2),
            shape: BoxShape.circle),
        child: const Icon(
          Icons.person,
          color: Color.fromARGB(255, 0, 0, 0),
          size: 120,
        ));
  }

  Widget _inputField(String hintText, TextEditingController controller,
      {isPassword = false}) {
    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: Colors.white));
    return TextField(
      style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        enabledBorder: border,
        focusedBorder: border,
      ),
      obscureText: isPassword,
    );
  }

  Widget _loginBtn() {
    return ElevatedButton(
      onPressed: () {
        debugPrint("Username : " + usernameController.text);
        debugPrint("Password : " + passwordController.text);
      },
      child: const SizedBox(
          width: double.infinity,
          child: Text(
            "Sign in ",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          )),
      style: ElevatedButton.styleFrom(
        foregroundColor: Color.fromARGB(255, 0, 0, 0),
        shape: const StadiumBorder(),
        backgroundColor: Color.fromARGB(255, 224, 122, 202),
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
    );
  }

  Widget _extraText() {
    return const Text(
      "can't access to your account?",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 0, 0, 0)),
    );
  }
}
