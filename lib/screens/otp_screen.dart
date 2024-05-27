import 'package:ecommerce/screens/main_screen.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/otp.png'),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "OTP Vérification",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'An OTP (One Time Password) has been sent to your email.Please enter the OTP in the field below to verify your email.',
                textAlign: TextAlign.center,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Resend code within",
                    style: TextStyle(color: Colors.red),
                  )),
              const Text("00:00"),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 60.0,
                    height: 60.0,
                    child: TextFormField(
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            counterText: '',
                            filled: true,
                            fillColor: Colors.grey[200], // Gray background color
                            hintText: '',
                            
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(5), // No border radius
                              borderSide: BorderSide.none, // No border side
                            ))),
                  ),
                  SizedBox(
                    width: 60.0,
                    height: 60.0,
                    child: TextFormField(
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          counterText: '',
                            filled: true,
                            fillColor: Colors.grey[200], // Gray background color
                            hintText: '',
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(5), // No border radius
                              borderSide: BorderSide.none, // No border side
                            ))),
                  ),
                  SizedBox(
                    width: 60.0,
                    height: 60.0,
                    child: TextFormField(
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          counterText: '',
                            filled: true,
                            fillColor: Colors.grey[200], // Gray background color
                            hintText: '',
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(5), // No border radius
                              borderSide: BorderSide.none, // No border side
                            ))),
                  ),
                  SizedBox(
                    width: 60.0,
                    height: 60.0,
                    child: TextFormField(
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            counterText: "",
                            filled: true,
                            fillColor: Colors.grey[200], // Gray background color
                            hintText: '',
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(5), // No border radius
                              borderSide: BorderSide.none, // No border side
                            ))),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Resend OTP",
                        style: TextStyle(color: Colors.red),
                      ),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(8.0), // Border radius
                            side: BorderSide(color: Colors.red), // Border color
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                            Colors.white), // Button background color
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 24.0)), // Button padding
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainScreen()));
                    },
                    child: Text(
                      "Verify",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(8.0), // Border radius
                          side: BorderSide(color: Colors.red), // Border color
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                          Colors.red), // Red background color
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 24.0)), // Button padding
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
