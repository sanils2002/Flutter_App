import 'package:flutter/material.dart';

class name extends StatefulWidget {
  name({Key? key}) : super(key: key);

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  var date = [
    '1/2/2023',
    '2/2/2023',
    '3/3/2023',
    '4/4/2023',
    '5/4/2023',
    '5/5/2023'
  ];
  var event_name = [
    'Co Curricular Activities',
    'Sports Events',
    'Abhivyakti Fest',
    'Internship',
    'Holidays',
    'Others'
  ];
  var description = [
    ' Co-curricular activities are activities that take place outside the classroom but reinforce or supplement classroom curriculum in some way',
    'physical contests pursued for the goals and challenges they entail. Sports are part of every culture past and present',
    'an assembly of people engaged in a common activity (often used in combination): filmfest; gabfest; love-fest; poetry ',
    'Enternships is a portal that connects students and graduates to entrepreneurial workplacements (enternships) in start-ups and small businesses worldwide',
    'List of Public and Government Holidays ',
    'ch'
  ];
  var images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRguphONS7yrhzk4zeYRKZeluU2WhecU5ipQj7X_a3-fmI8ta0tYaXcIvGq7bq0uNaZzBM&usqp=CAU',
    "https://image.shutterstock.com/image-vector/editable-vector-illustration-soccer-players-600w-1922121362.jpg",
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTepW5-6US94Ms-MEOD2yB-oTgOKjqTCiUtJQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrBoP9gEvwzezzgLukO7H6tP4ZuJHWa2cfqg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdDkpUQrT5z2YQwDx2B2_wMQcBMR-NWHIkJQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp3JzUJqwPZZSUlcD-3BW03TtmtYFft0txhQ&usqp=CAU'
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Updates and events"),
      ),
      body: new Column(children: <Widget>[
        new Padding(
          padding: new EdgeInsets.all(0.0),
          child: new PhysicalModel(
            color: Colors.white,
            elevation: 3.0,
            child: new TextField(
              // controller: _controller,
              // onSubmitted: handleTextInputSubmit,
              decoration: new InputDecoration(
                  hintText: 'Finding a Event?', icon: new Icon(Icons.search)),
            ),
          ),
        ),
        new Expanded(
            child: new ListView.builder(
          itemCount: event_name.length,
          padding: new EdgeInsets.all(8.0),
          itemBuilder: (BuildContext context, int index) {
            return new Card(
              elevation: 1.7,
              child: new Padding(
                padding: new EdgeInsets.all(10.0),
                child: new Column(
                  children: [
                    new Row(
                      children: <Widget>[
                        new Padding(
                          padding: new EdgeInsets.only(left: 4.0),
                          child: new Text(
                            "Date: ",
                            style: new TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        new Padding(
                          padding: new EdgeInsets.all(5.0),
                          child: new Text(
                            date[index],
                            style: new TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                      ],
                    ),
                    new Row(
                      children: [
                        new Expanded(
                          child: new GestureDetector(
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                new Padding(
                                  padding: new EdgeInsets.only(
                                      left: 4.0,
                                      right: 8.0,
                                      bottom: 8.0,
                                      top: 8.0),
                                  child: new Text(
                                    event_name[index],
                                    style: new TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                new Padding(
                                  padding: new EdgeInsets.only(
                                      left: 4.0, right: 4.0, bottom: 4.0),
                                  child: new Text(
                                    description[index],
                                    style: new TextStyle(
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // onTap: () {
                            //   flutterWebviewPlugin.launch(
                            //       data["articles"][index]["url"],
                            //       fullScreen: false);
                            // },
                          ),
                        ),
                        new Column(
                          children: <Widget>[
                            new Padding(
                              padding: new EdgeInsets.only(top: 8.0),
                              child: new SizedBox(
                                height: 100.0,
                                width: 100.0,
                                child: new Image.network(images[index]),
                              ),
                            ),
                            new Row(
                              children: <Widget>[
                                new GestureDetector(
                                  child: new Padding(
                                      padding: new EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 5.0),
                                      child: Icon(Icons.share)),
                                  // onTap: () {
                                  //   share(data["articles"][index]
                                  //       ["url"]);
                                  // },
                                ),
                                new GestureDetector(
                                  child: new Padding(
                                      padding: new EdgeInsets.all(5.0),
                                      child: Icon(Icons.bookmark)),
                                  // onTap: () {
                                  //   _onBookmarkTap(
                                  //       data["articles"][index]);
                                  // },
                                ),
                                new GestureDetector(
                                  child: new Padding(
                                      padding: new EdgeInsets.all(5.0),
                                      child: Icon(Icons.not_interested)),
                                  // onTap: () {
                                  //   _onRemoveSource(
                                  //       data["articles"][index]
                                  //           ["source"]["id"],
                                  //       data["articles"][index]
                                  //           ["source"]["name"]);
                                  // },
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ), ////
              ),
            );
          },
        )
            // : new Center(
            //     child: new Column(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         new Icon(Icons.chrome_reader_mode,
            //             color: Colors.grey, size: 60.0),
            //         new Text(
            //           "No articles saved",
            //           style: new TextStyle(
            //               fontSize: 24.0, color: Colors.grey),
            //         ),
            //       ],
            //     ),
            //   ),
            )
      ]),
    );
  }
}
