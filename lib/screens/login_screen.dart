import 'package:ecommerce/constances.dart';
import 'package:ecommerce/screens/register_screen.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _showPassword = false;
  bool _value = false;
  bool _enabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                //decoration: BoxDecoration(color: Colors.red),
                width: 200,
                height: 150,
                child: Center(child: Image.asset("assets/images/logo.jpg")),
              ),
              const Row(
                children: [
                  Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                  Spacer()
                ],
              ),
              Row(
                children: [
                  Text(
                    "Login to your account, Don't have an account?",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.grey),
                  ),
                  Spacer()
                ],
              ),
              Row(
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()));
                      },
                      child: Text("Sign Up",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: primaryColor))),
                  Spacer()
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    "Email / Phone",
                    style: TextStyle(fontSize: 18),
                  ),
                  Spacer()
                ],
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter phone number or email",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.grey,
                        width: 2,
                      ))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    "Password",
                    style: TextStyle(fontSize: 18),
                  ),
                  Spacer()
                ],
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  obscureText: _showPassword,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _showPassword = !_showPassword;
                            });
                          },
                          icon: Icon(Icons.remove_red_eye)),
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.grey,
                        width: 2,
                      ))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      }),
                  Text(
                    "Remember me",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: Text("Forgot Password?",
                          style: TextStyle(fontWeight: FontWeight.w700)))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: BeveledRectangleBorder(),
                      padding: EdgeInsets.only(left: 40, right: 40)),
                  onPressed: _enabled ? () {} : null,
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
