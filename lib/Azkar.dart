import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/AzkarUI.dart';
import 'package:flutter_application_2/MyAzkar/Provider/dark_provider.dart';
import 'package:flutter_application_2/MyAzkar/Provider/db_Proveder.dart';
import 'package:flutter_application_2/Scrren2/AzkarMaslm.dart';
import 'package:provider/provider.dart';

//ValueNotifier<bool> isDark = ValueNotifier<bool>(false);

class Azkar extends StatefulWidget {
  @override
  State<Azkar> createState() => _AzkarState();
}

class _AzkarState extends State<Azkar> {
  late bool dart;

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          appBar: AppBar(
              title: Text("القائمة الرئيسية".tr()),
              backgroundColor: provider.isDark!
                  ? const Color.fromARGB(255, 91, 100, 99)
                  : const Color.fromARGB(255, 67, 160, 236),
              actions: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width / 9.5,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 22,
                ),
                GestureDetector(
                  onTap: () {
                    if (context.locale.toString() == "en") {
                      context.setLocale(const Locale("ar"));
                    } else {
                      context.setLocale(const Locale("en"));
                    }
                  },
                  child: const Icon(Icons.language),
                ),
                const SizedBox(
                  width: 20,
                )
              ]),
          body: AzkarUI(),
        );
      },
    );
  }
}
