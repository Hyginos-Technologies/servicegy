import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 290.0,
                padding: EdgeInsets.fromLTRB(8.0, 0.0, 10.0, 0.0),
                margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
                child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Text('Enter your mobile number to get started',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0,
                        fontFamily: 'MulishRegular',
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                    text: TextSpan(
                  text: 'You will receive a  ',
                  style: TextStyle(
                      fontFamily: 'MulishRegular',
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0),
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'One Time password(OTP)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black)),
                    TextSpan(text: ' to this number'),
                  ],
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Mobile Number',
                    style: TextStyle(
                        fontFamily: 'MulishRegular',
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600)),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration:
                        new InputDecoration(labelText: "Enter your number"),
                    keyboardType: TextInputType.number,
                  )),
              SizedBox(height: 40.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                    text: TextSpan(
                  text: 'By continuing you are agreeing to our ',
                  style: TextStyle(
                      fontFamily: 'MulishRegular',
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w400,
                      fontSize: 12.0),
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'Terms & Conditions and  Privacy Policy',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        )),
                  ],
                )),
              ),
              SizedBox(height: 180.0),
              Container(
                width: MediaQuery.of(context).size.width,
                child: FlatButton(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'GET OTP',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  color: Colors.black,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, '/otp');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
