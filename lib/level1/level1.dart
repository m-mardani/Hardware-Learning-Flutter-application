import 'package:flutter/material.dart';
import 'package:hardware_app/Pishniyaz/resistor.dart';

class level1 extends StatelessWidget {
  const level1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("آموزش تعمیرات لپتاپ سطح ۱"),
          backgroundColor: Color.fromARGB(255, 69, 9, 129),
        ),
        body: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/repairer.png"),
                ),
                title: Text(
                  'ابزارهای مورد نیاز تعمیرکار وآشنایی با آنها',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/laptop.png"),
                ),
                title: Text(
                  'آموزش باز و بستن لپ تاپ',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/laptop_test.png"),
                ),
                title: Text(
                  'تست های تشخیصی لپ تاپ های مختلف',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/bios.png"),
                ),
                title: Text(
                  'تنظیمات بایوس',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/harddisk.png"),
                ),
                title: Text(
                  'هارد دیسک و انواع آن و تست نرم افزاری',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/harddisk_prob.png"),
                ),
                title: Text(
                  'بدسکتور هارد و انواع آن و نحوه برطرف کردن',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/thermal.png"),
                ),
                title: Text(
                  'مشکلات حرارتی و نحوه صحیح سرویس لپ تاپ',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/heater.png"),
                ),
                title: Text(
                  'آموزش حرفه ای کار با هیتر',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/SolderingـSystem.png"),
                ),
                title: Text(
                  'آموزش لحیم کاری حرفه ای smd',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/socket.png"),
                ),
                title: Text(
                  'آموزش تعویض انواع سوکت و جک',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/keyboard.png"),
                ),
                title: Text(
                  'آموزش رفع مشکلات کیبورد',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/lcd.png"),
                ),
                title: Text(
                  'خرابی های lcd و led و تعمیر آن',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/adaptor.png"),
                ),
                title: Text(
                  'انواع آداپتور و خرابی ها',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/Debagar.png"),
                ),
                title: Text(
                  'دیباگرها و انواع آن',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/Speaker.png"),
                ),
                title: Text(
                  'خرابی های تاچ پد odd اسپیکر',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/broken.png"),
                ),
                title: Text(
                  'شکستگی قاب یا لولا و راه حلهای آن',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/flat_cable.png"),
                ),
                title: Text(
                  'تعمیر انواع کابل فلت',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/Os_windows.png"),
                ),
                title: Text(
                  'مشکلات مربوط به سیستم عامل',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/measure.png"),
                ),
                title: Text(
                  'آموزش کار با تجهیزات اندازه گیری',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {},
              ),
            ),
          ],
        ));
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:

      case 7:
    }
  }
}
