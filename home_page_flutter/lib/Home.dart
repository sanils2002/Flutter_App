// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:home_page_flutter/calendar.dart';
import 'package:home_page_flutter/pages/home.dart';
import 'package:home_page_flutter/updates.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

//import 'package:/Project/Done_File/lib/main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String StateUrl;

  late String url;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .3,
            decoration: BoxDecoration(
                image: DecorationImage(
              alignment: Alignment.topCenter,
              image: Image.network(
                      "https://mars-metcdn-com.global.ssl.fastly.net/content/uploads/sites/101/2019/04/30162428/Top-Header-Background.png")
                  .image,
            )),
          ),
          SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                  height: 62,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const CircleAvatar(
                        radius: 62,
                        backgroundImage: NetworkImage(
                            "https://w7.pngwing.com/pngs/17/243/png-transparent-computer-icons-arshad-ayub-graduate-business-school-students-miscellaneous-logo-monochrome.png"),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            'Student',
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 3),
                          ),
                          const Text(
                            'BT20CSE0X0',
                            style: const TextStyle(color: Colors.black),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: GridView.count(
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.network(
                              "https://collegemarker.com/blogs/wp-content/uploads/2021/09/Tme-Table-1024x682.jpg",
                              height: 120,
                            ),
                            TextButton(
                              onPressed: () {
                                // Navigator.pushNamed(context, 'calender');
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => calendar()),
                                );
                              },
                              child: const Text('Time Table'),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.network(
                              "https://www.subr.edu/assets/subr/images/Updates.jpg",
                              height: 120,
                            ),
                            TextButton(
                              onPressed: () {
                                // Navigator.pushNamed(context, 'homepage');
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => name()),
                                );
                              },
                              child: const Text('Updates'),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.network(
                              "https://www.himalayanuniversity.com/images/faculty.jpg",
                              height: 120,
                            ),
                            TextButton(
                              onPressed: () {
                                // Navigator.pushNamed(context, 'homepage');
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => contacts()),
                                );
                              },
                              child: const Text('Faculty Contacts'),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.network(
                              "https://pngimage.net/wp-content/uploads/2018/06/homework-cartoon-png-2.png",
                              height: 120,
                            ),
                            Link(
                                uri: Uri.parse('https://flutter.dev'),
                                builder: (context, followLink) => MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: followLink,
                                      child: const Text('Exam Results'),
                                    ))),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.network(
                              "https://i.pinimg.com/originals/55/69/55/5569554b4d8a9bb11965949e1af08dbf.png",
                              height: 120,
                            ),
                            Link(
                                uri: Uri.parse('https://flutter.dev'),
                                builder: (context, followLink) => MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: followLink,
                                      child: const Text('Faculty Records'),
                                    ))),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTku2oJC2M9rZu0jq3hLd7n_lgwUEFudUCVLu_XOo7bY0V_7ih5LsWA9p2LBVPFNkbVZx8&usqp=CAU",
                              height: 120,
                            ),
                            Link(
                                uri: Uri.parse('https://flutter.dev'),
                                builder: (context, followLink) => MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: followLink,
                                      child: const Text('Log Out'),
                                    ))),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
