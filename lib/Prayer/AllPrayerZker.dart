import 'package:flutter/material.dart';
import 'package:flutter_application_2/AzkarModels/DoaaWidget.dart';
import 'package:flutter_application_2/Prayer/PrayerWidgit.dart';
import 'package:flutter_application_2/data/Prayer.dart';
import 'package:flutter_application_2/data/data.dart';
import 'package:easy_localization/easy_localization.dart';

class AllPrayerZkerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("أذكار المسلم ").tr(),
            backgroundColor: const Color.fromARGB(255, 67, 160, 236),
            actions: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.brightness_3,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.notifications_active,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              )
            ]),
        body: ListView.builder(
            shrinkWrap: true,
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: PrayerList.length,
            itemBuilder: ((context, index) {
              return PrayerWidgit(PrayerList[index].prayer);
            })));
  }
}
