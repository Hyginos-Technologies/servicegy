import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  OtpFieldController otpController = OtpFieldController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
                icon: const Icon(Icons.arrow_back_ios_new_sharp),
                onPressed: () {
                  Navigator.pop(context);
                });
          },
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: Text('VERIFY MOBILE NUMBER',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
                fontFamily: 'MulishRegular')),
      ),
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30.0),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: 109.0,
                child: Text('OTP Verification',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'MulishRegular',
                        fontSize: 20.0)),
              )),
          Container(
            padding: EdgeInsets.fromLTRB(0.0, 11.0, 0.0, 11.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Enter the OTP sent to +91 9391767777',
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontFamily: 'MulishRegular',
                        fontSize: 14.0)),
                Text('Edit',
                    style: TextStyle(
                        fontFamily: 'MulishRegular',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600))
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(0.0, 11.0, 0.0, 11.0),
            child: OTPTextField(
              controller: otpController,
              length: 6,
              fieldWidth: 30,
              width: 10.0,
              style: TextStyle(fontSize: 17),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.underline,
              onChanged: (pin) {
                print("Changed: " + pin);
              },
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
            child: Container(
              child: Text('Didn’t receive the OTP?',
                  style: TextStyle(
                      fontFamily: 'MulishRegular',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500)),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: Text('Resend OTP(29)',
                style: TextStyle(
                    color: Colors.grey[500],
                    fontFamily: 'MulishRegular',
                    decoration: TextDecoration.underline,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500)),
          ),
          SizedBox(height: 180.0),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(10.0),
            child: FlatButton(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'SUBMIT',
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
      )),
    );
  }
}
