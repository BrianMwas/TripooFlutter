
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';


class Bookings extends StatefulWidget {
  @override
  _BookingsState createState() => _BookingsState();
}

class _BookingsState extends State<Bookings> {
  List<Meeting> meetings;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black87
        ),
        elevation: 0,
        title: Text("My Calendar",
          style: TextStyle(fontFamily: "ProductSans", color: Colors.black87),),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SfCalendar(
              todayTextStyle: TextStyle(
                fontFamily: "ProductSans",
              ),
              appointmentTextStyle: TextStyle(
                fontFamily: "Lato"
              ),
              view: CalendarView.schedule,
              scheduleViewSettings: const ScheduleViewSettings(
                appointmentItemHeight: 70,
                hideEmptyScheduleWeek: true,
              )
            )
          ]
        )
      )
    );
  }

  List<Meeting> _getDataSource() {
    meetings = <Meeting>[];
    final DateTime today = DateTime.now();
    final DateTime startTime =
    DateTime(today.year, today.month, today.day, 9, 0, 0);
    final DateTime endTime = startTime.add(const Duration(hours: 2));
    meetings.add(Meeting(
        'Conference', startTime, endTime, const Color(0xFF0F8644), false));
    return meetings;
  }
}

class Meeting {
  /// Creates a meeting class with required details.
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

  /// Event name which is equivalent to subject property of [Appointment].
  String eventName;

  /// From which is equivalent to start time property of [Appointment].
  DateTime from;

  /// To which is equivalent to end time property of [Appointment].
  DateTime to;

  /// Background which is equivalent to color property of [Appointment].
  Color background;

  /// IsAllDay which is equivalent to isAllDay property of [Appointment].
  bool isAllDay;
}

