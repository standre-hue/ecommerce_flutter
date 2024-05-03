import 'package:ecommerce/constances.dart';
import 'package:ecommerce/screens/login_screen.dart';
import 'package:flutter/material.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({ Key? key }) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
          child: SingleChildScrollView(
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
                      "Sign Up",
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                    Spacer()
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      "Create your account, already have one?",
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
                                  builder: (context) => LoginScreen()));
                        },
                        child: Text("Login",
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
                      "Username",
                      style: TextStyle(fontSize: 18),
                    ),
                    Spacer()
                  ],
                ),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter username",
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
                      "Email",
                      style: TextStyle(fontSize: 18),
                    ),
                    Spacer()
                  ],
                ),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter your email",
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
                      "Phone number",
                      style: TextStyle(fontSize: 18),
                    ),
                    Spacer()
                  ],
                ),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter your phone number",
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
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: BeveledRectangleBorder(),
                    padding: EdgeInsets.only(left:40, right: 40)
                  ),
                  onPressed: _enabled ? (){} : null, child: Text("Sign Up",style: TextStyle(fontSize: 20, color: Colors.white),)),

                const SizedBox(
                  height: 20,
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.mail, color: Colors.red, size:40)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.facebook, color: Colors.blue,size:40)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}