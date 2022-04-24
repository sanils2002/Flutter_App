import 'package:home_page_flutter/pages/models/userModel.dart';
import 'package:home_page_flutter/pages/userDetail.dart';
import 'package:flutter/material.dart';

class contacts extends StatefulWidget {
  contacts({Key? key}) : super(key: key);

  @override
  State<contacts> createState() => _contactsState();
}

class _contactsState extends State<contacts> {
  final List<User> user = [
    User(
        name: "Dr. Sammit Despande",
        phoneNumber: "024 755 6221",
        imgUrl: "assets/profile.png"),
    User(
        name: "Dr. Sushrut Athawale",
        phoneNumber: "024 155 6221",
        imgUrl: "assets/profile.png"),
    User(
        name: "Dr. Keshav Kumar",
        phoneNumber: "024 755 6221",
        imgUrl: "assets/male.png"),
    User(
        name: "Dr. Yash Sharma",
        phoneNumber: "024 755 6221",
        imgUrl: "assets/teacher.png"),
    User(
        name: "Dr. Sanil Sattarkar",
        phoneNumber: "024 755 6221",
        imgUrl: "assets/soccer.png"),
    User(
        name: "Dr. Sandesh",
        phoneNumber: "024 755 6221",
        imgUrl: "assets/teacher.png"),
    User(
        name: "Teacher", phoneNumber: "024 755 6221", imgUrl: "assets/guy.jpg"),
    User(
        name: "Teacher3",
        phoneNumber: "024 755 6221",
        imgUrl: "assets/profile.png"),
    User(
        name: "New teacher",
        phoneNumber: "024 755 6221",
        imgUrl: "assets/people.png"),
    User(
        name: "Old teacher",
        phoneNumber: "024 155 6221",
        imgUrl: "assets/profile.png"),
    User(
        name: "Physics teacher",
        phoneNumber: "024 755 6221",
        imgUrl: "assets/male.png"),
    User(
        name: "Computer teacher",
        phoneNumber: "024 755 6221",
        imgUrl: "assets/teacher.png"),
    User(
        name: "Dr. Sammit Despande",
        phoneNumber: "024 755 6221",
        imgUrl: "assets/people.png"),
    User(
        name: "Dr Sushrut Athawale",
        phoneNumber: "024 155 6221",
        imgUrl: "assets/profile.png"),
    User(
        name: "Dr Keshav Kumar",
        phoneNumber: "024 755 6221",
        imgUrl: "assets/male.png"),
    User(
        name: "Dr. Yash Sharma",
        phoneNumber: "024 755 6221",
        imgUrl: "assets/teacher.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("Faculty Contact Details"),
          centerTitle: true,
          // actions: [Icon(Icons.more_vert)],
        ),
        body: ListView(children: <Widget>[
          IntrinsicWidth(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 40, 10, 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Expanded(
                  //   child: TextField(
                  //     decoration: InputDecoration(
                  //         filled: true,
                  //         fillColor: Colors.white,
                  //         hintText: "SEARCH",
                  //         hintStyle: TextStyle(fontWeight: FontWeight.normal),
                  //         prefixIcon: Icon(Icons.search)),
                  //   ),
                  // ),
                  // Icon(
                  //   Icons.add,
                  //   size: 50,
                  //   color: Colors.white,
                  // ),
                  // Icon(
                  //   Icons.people_alt,
                  //   size: 43,
                  //   color: Colors.white,
                  // ),
                  // Icon(
                  //   Icons.more_vert,
                  //   size: 43,
                  //   color: Colors.white,
                  // ),
                ],
              ),
            ),
          ),
          Column(
            children: user.map((user) {
              return UserCard(user: user);
            }).toList(),
          )
        ]));
  }
}

class UserCard extends StatelessWidget {
  final User user;
  UserCard({required this.user});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromRGBO(196, 196, 196, 1),
      child: ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => UserDetails(
                        user: user,
                      )));
        },
        leading: CircleAvatar(backgroundImage: AssetImage(user.imgUrl)),
        title: Text(
          user.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(user.phoneNumber),
        trailing: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.call,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 10),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.message,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 10),
              // CircleAvatar(
              //   backgroundColor: Colors.white,
              //   child: Icon(
              //     Icons.video_call,
              //     color: Colors.black,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
