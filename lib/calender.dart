// ignore_for_file: unused_import, avoid_unnecessary_containers
import 'package:flutter/material.dart';

//kalender
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
//kalender

class MayKalender extends StatefulWidget {
  const MayKalender({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<MayKalender> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MayKalender> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Kalender"),
        ),
        body: SafeArea(
            child: Container(
                padding: const EdgeInsets.all(15),
                child: TableCalendar(
                    locale: 'id_ID',
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    focusedDay: DateTime.now(),
                    onFormatChanged: (CalendarFormat _format) {
                      setState(() {
                        format = _format;
                      });
                    },
                    startingDayOfWeek: StartingDayOfWeek.sunday,
                    daysOfWeekVisible: true,
                    //Day Changed
                    onDaySelected: (DateTime selectDay, DateTime focusDay) {
                      setState(() {
                        selectedDay = selectDay;
                        focusedDay = focusDay;
                      });
                      // ignore: avoid_print
                      print(focusedDay);
                    },
                    selectedDayPredicate: (DateTime date) {
                      return isSameDay(selectedDay, date);
                    },
                    headerStyle: HeaderStyle(
                      formatButtonTextStyle:
                          const TextStyle(color: Colors.white),
                      formatButtonVisible: true,
                      titleCentered: true,
                      formatButtonShowsNext: false,
                      formatButtonDecoration: BoxDecoration(
                        color: const Color.fromARGB(255, 24, 133, 241),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    calendarStyle: const CalendarStyle(
                      isTodayHighlighted: true,

                      selectedTextStyle: TextStyle(color: Colors.white),
                      defaultTextStyle:
                          TextStyle(color: Color.fromARGB(255, 15, 15, 15)),
                      defaultDecoration: BoxDecoration(
                          color: Color.fromARGB(255, 253, 253, 252)),
                      weekendTextStyle:
                          TextStyle(color: Color.fromARGB(255, 221, 12, 12)),
                      weekendDecoration: BoxDecoration(
                          color: Color.fromARGB(255, 253, 253, 252)),

                      // ),
                    )))));
  }
}
