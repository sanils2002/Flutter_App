import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class calendar extends StatelessWidget {
  const calendar({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Timetable'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SfCalendar(
      view: CalendarView.schedule,
      allowedViews: <CalendarView>[
        CalendarView.day,
        CalendarView.workWeek,
        CalendarView.week,
        CalendarView.month,
        CalendarView.timelineDay,
        CalendarView.timelineWeek,
        CalendarView.timelineWorkWeek,
        CalendarView.timelineMonth,
        CalendarView.schedule
      ],
      firstDayOfWeek: 6,
      //initialDisplayDate: DateTime(2021, 03, 01, 08, 30),
      //initialSelectedDate: DateTime(2021, 03, 01, 08, 30),
      dataSource: MeetingDataSource(getAppointments()),
      // dataSource: MeetingDataSource(getAppointmentss()),
    );
  }
}

List<Appointment> getAppointments() {
  List<Appointment> meetings = <Appointment>[];
  final DateTime today = DateTime.now();

  final DateTime startTime =
      DateTime(today.year, today.month, today.day, 9, 0, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 1));

  meetings.add(Appointment(
      startTime: startTime,
      endTime: endTime,
      subject: 'EM',
      // width: screenWidth * 0.7,
      // height: screenHeight * 0.5,
      // color: Colors.deepOrangeAccent
      color: Colors.blue,
      recurrenceRule: 'FREQ=DAILY;COUNT=10',
      isAllDay: false));

  final DateTime startTimee =
      DateTime(today.year, today.month, today.day, 11, 0, 0);
  final DateTime endTimee = startTime.add(const Duration(hours: 1));

  meetings.add(Appointment(
      startTime: startTimee,
      endTime: endTimee,
      subject: 'CAO',
      color: Colors.blue,
      recurrenceRule: 'FREQ=DAILY;COUNT=10',
      isAllDay: false));

  final DateTime startTimeee =
      DateTime(today.year, today.month, today.day, 12, 0, 0);
  final DateTime endTimeee = startTime.add(const Duration(hours: 1));

  meetings.add(Appointment(
      startTime: startTimeee,
      endTime: endTimeee,
      subject: 'HDL',
      color: Colors.blue,
      recurrenceRule: 'FREQ=DAILY;COUNT=10',
      isAllDay: false));

  final DateTime startTimeeee =
      DateTime(today.year, today.month, today.day, 14, 0, 0);
  final DateTime endTimeeee = startTime.add(const Duration(hours: 2));

  meetings.add(Appointment(
      startTime: startTimeeee,
      endTime: endTimeeee,
      subject: 'CS',
      // width: calendarAppointmentDetails.bounds.width,
      // height: calendarAppointmentDetails.bounds.height,
      color: Colors.blue,
      recurrenceRule: 'FREQ=DAILY;COUNT=10',
      isAllDay: false));

  final DateTime startTimeeeee =
      DateTime(today.year, today.month, today.day, 16, 0, 0);
  final DateTime endTimeeeee = startTime.add(const Duration(hours: 2));

  meetings.add(Appointment(
      startTime: startTimeeeee,
      endTime: endTimeeeee,
      subject: 'ITW 2',
      color: Colors.blue,
      recurrenceRule: 'FREQ=DAILY;COUNT=10',
      isAllDay: false));

  return meetings;
}

// List<Appointment> getAppointmentss() {
//   List<Appointment> meetings = <Appointment>[];
//   final DateTime today = DateTime.now();
//   final DateTime startTime =
//   DateTime(today.year, today.month, today.day, 11, 0, 0);
//   final DateTime endTime = startTime.add(const Duration(hours: 1));
//
//   meetings.add(Appointment(
//       startTime: startTime,
//       endTime: endTime,
//       subject: 'CAO',
//       color: Colors.blue,
//       recurrenceRule: 'FREQ=DAILY;COUNT=10',
//       isAllDay: false));
//
//   return meetings;
// }

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}
