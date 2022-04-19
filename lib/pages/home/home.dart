import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var logos = [
    {'img': 'assets/all-services.png', 'service': 'All Services'},
    {'img': 'assets/cleaning.png', 'service': 'Cleaning'},
    {'img': 'assets/electrician.png', 'service': 'Electrician'},
    {'img': 'assets/plumbing.png', 'service': 'Plumbing'},
    {'img': 'assets/capentry.png', 'service': 'Capentry'},
    {'img': 'assets/painting.png', 'service': 'Painting'},
    {'img': 'assets/ac-repair.png', 'service': 'AC Repair'},
    {'img': 'assets/washing.png', 'service': 'Washing'},
    {'img': 'assets/refrigerrator.png', 'service': 'Refrigarator'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        icon: const FaIcon(
                          FontAwesomeIcons.locationDot,
                          size: 17.0,
                        ),
                        onPressed: () {}),
                    Text('Los Angeles',
                        style: TextStyle(
                            fontFamily: 'MulishRegular',
                            color: Colors.grey[600]))
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.bell,
                        size: 20.0,
                      ),
                      onPressed: () {}),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              height: 45.0,
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    size: 25.0,
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'Search',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Categories',
                      style: TextStyle(
                          fontFamily: 'MulishRegular',
                          fontWeight: FontWeight.w700)),
                ],
              ),
            ),
            SizedBox(height: 5.0),
            Container(
              child: GridView.count(
                crossAxisCount: 5,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                shrinkWrap: true,
                children: List.generate(
                  9,
                  (index) {
                    return Column(
                      children: [
                        Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black,
                                  width: 1.0,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset('assets/all-services.png')),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text('All Services',
                              style: TextStyle(
                                  fontSize: 10.0, fontFamily: 'MulishRegular')),
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('All Services',
                      style: TextStyle(
                          fontFamily: 'MulishRegular',
                          fontWeight: FontWeight.w700)),
                  Text('View All',
                      style: TextStyle(
                          fontFamily: 'MulishRegular',
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[500])),
                ],
              ),
            ),
            Center(
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Image.asset('assets/user.png'),
                      title: Text('Albert Flores'),
                      subtitle: Text('Plumber'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
