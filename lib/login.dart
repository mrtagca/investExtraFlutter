import 'package:flutter/material.dart';
import 'package:investextraqnb/components/menu/base/baseAppBar.dart';
import 'package:email_validator/email_validator.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _key = GlobalKey<FormState>();
  String _email = '';
  String _phone = '';

  @override
  Widget build(BuildContext context) {
    Future<bool> _onWillPop() async {
      return false;
    }

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Invest Extra Giriş"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Form(
              key: _key,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    //initialValue: 'mert.agca@qnbfi.com',
                    onSaved: (emailValue) {
                      _email = emailValue!;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        //errorStyle: TextStyle(color: Colors.orange),
                        labelText: "Email",
                        hintText: "Email",
                        border: OutlineInputBorder()),
                    validator: (String? value) {
                      if (EmailValidator.validate(value!)) {
                        return null;
                      } else {
                        return "Geçerli bir mail adresi giriniz";
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    //initialValue: 'mert.agca@qnbfi.com',
                    onSaved: (phoneValue) {
                      _phone = phoneValue!;
                    },
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        //errorStyle: TextStyle(color: Colors.orange),
                        labelText: "Phone",
                        hintText: "Phone",
                        border: OutlineInputBorder()),
                    validator: (String? value) {
                      if (value!.length >= 10) {
                        return null;
                      } else {
                        return "Geçerli telefon numarası giriniz";
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (_key.currentState!.validate()) {
                          _key.currentState!.save();
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content:
                                  Text("Email: $_email - Phone: $_phone")));
                          Navigator.of(context).pushNamed("myPage");
                        }
                      },
                      child: Text("KAYDET"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
