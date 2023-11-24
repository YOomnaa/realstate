import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormFieldState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(context),
    );
  }
}

// ignore: non_constant_identifier_names
Widget content(Context) {
  return SingleChildScrollView(
    child: Column(children: [
      Container(
        height: 150,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(51, 0, 146, 0.322),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.elliptical(50, 50),
            bottomLeft: Radius.elliptical(50, 50),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
          child: Image.asset("assets/images/logo.png"),
        ),
      ),
      const SizedBox(
        height: 40,
      ),
      TextFormField(
        decoration: InputDecoration(
          labelText: "username",
          labelStyle: const TextStyle(color: Colors.amber),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
      const SizedBox(
        height: 40,
      ),
      TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: "Password",
          labelStyle: const TextStyle(color: Colors.amber),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
      const SizedBox(
        height: 40,
      ),
      TextFormField(
        decoration: InputDecoration(
          labelText: "Email",
          labelStyle: const TextStyle(color: Colors.amber),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
      const SizedBox(
        height: 40,
      ),
      TextFormField(
        decoration: InputDecoration(
          labelText: "PhoneNumber",
          labelStyle: const TextStyle(color: Colors.amber),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
      const SizedBox(
        height: 40,
      ),
      Container(
        height: 60,
        width: 300,
        decoration: const BoxDecoration(),
        child: TextButton(
          onPressed: () {
            Alert(
              context: Context,
              title: "Sussessfully Registered",
              closeIcon: const Icon(Icons.close),
              desc: "Are You Exit",
              buttons: [
                DialogButton(
                  // ignore: sort_child_properties_last
                  child: const Text(
                    "Ok",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),

                  onPressed: () {
                    Navigator.of(Context).pushNamed("/");
                  },
                  width: 120,
                ),
                DialogButton(
                  // ignore: sort_child_properties_last
                  child: const Text(
                    "Cancel",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),

                  onPressed: () => Navigator.pop(Context),
                  width: 120,
                ),
              ],
            ).show();
          },
          child: const Text(
            "Register",
            style: TextStyle(
              fontSize: 18,
              color: Colors.amber,
            ),
          ),
        ),
      ),
    ]),
  );
}

Widget inputStyle(String title, String hintxt) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(40, 5, 20, 10),
    child: Row(
      children: [
        Text(
          "$title : ",
          style: const TextStyle(fontSize: 18),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ]),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(left: 14),
                hintText: hintxt,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
