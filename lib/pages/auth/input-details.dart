import 'package:flutter/material.dart';

class InputDeatils extends StatefulWidget {
  const InputDeatils({Key? key}) : super(key: key);

  @override
  State<InputDeatils> createState() => _InputDeatilsState();
}

class _InputDeatilsState extends State<InputDeatils> {
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
        title: Text('ENTER YOUR DETAILS',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
                fontFamily: 'MulishRegular')),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        width: 350.0,
        child: Column(
          children: [
            SizedBox(height: 20.0),
            TextField(
              style: TextStyle(fontFamily: 'MulishRegular'),
              decoration: InputDecoration(
                label: Text.rich(
                  TextSpan(
                    children: <InlineSpan>[
                      WidgetSpan(
                        child: Text(
                          'Phone no',
                          style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 20.0,
                              fontFamily: 'MulishRegular'),
                        ),
                      ),
                      WidgetSpan(
                        child: Text(
                          '*',
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            TextField(
              style: TextStyle(fontFamily: 'MulishRegular'),
              decoration: InputDecoration(
                label: Text.rich(
                  TextSpan(
                    children: <InlineSpan>[
                      WidgetSpan(
                        child: Text(
                          'Full name',
                          style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 20.0,
                              fontFamily: 'MulishRegular'),
                        ),
                      ),
                      WidgetSpan(
                        child: Text(
                          '*',
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            TextField(
              style: TextStyle(fontFamily: 'MulishRegular'),
              decoration: InputDecoration(
                label: Text.rich(
                  TextSpan(
                    children: <InlineSpan>[
                      WidgetSpan(
                        child: Text(
                          'Email',
                          style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 20.0,
                              fontFamily: 'MulishRegular'),
                        ),
                      ),
                      WidgetSpan(
                        child: Text(
                          '*',
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 200.0),
            Container(
              width: MediaQuery.of(context).size.width,
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
                  Navigator.pushNamed(context, '/home');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
