import 'package:flutter/material.dart';

class level3 extends StatelessWidget {
  const level3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("آموزش تعمیرات لپتاپ سطح 3 "),
          backgroundColor: Color.fromARGB(255, 69, 9, 129),
        ),
        body: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/no_power.png"),
                ),
                title: Text(
                  'تعمیر لپ تاپ های NO POWER',
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
                  child: Image.asset("images/no_boot.png"),
                ),
                title: Text(
                  'لپ تاپ های رندوم بوت و NO BOOT',
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
                  child: Image.asset("images/bga_machine.png"),
                ),
                title: Text(
                  'آموزش کار با دستگاه BGA',
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
                  'آموزش تعویض چیپ',
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
                  child: Image.asset("images/motherboard_prob.png"),
                ),
                title: Text(
                  'تعمیر مادربردهای آسیب دیده و آب خورده',
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
                  'مشکلات بکلایت LCD و LED',
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
                  child: Image.asset("images/graphic_card.png"),
                ),
                title: Text(
                  'آموزش غیرفعال کردن گرافیک DIS-UMA',
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
                  child: Image.asset("images/ram.png"),
                ),
                title: Text(
                  'مشکلات رم و غیرفعال کردن رم آنبرد',
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
                  child: Image.asset("images/problems.png"),
                ),
                title: Text(
                  'تجربیات و ایرادات شایع در تعمیرات لپ تاپ',
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
                  'لپ تاپ روشن میشود تصویر ندارد',
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
