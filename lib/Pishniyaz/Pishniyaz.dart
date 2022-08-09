import 'package:flutter/material.dart';
import 'package:hardware_app/Pishniyaz/capacitor.dart';
import 'package:hardware_app/Pishniyaz/crystal.dart';
import 'package:hardware_app/Pishniyaz/diod.dart';
import 'package:hardware_app/Pishniyaz/fuse.dart';
import 'package:hardware_app/Pishniyaz/inductor.dart';
import 'package:hardware_app/Pishniyaz/microcontroller.dart';
import 'package:hardware_app/Pishniyaz/relay.dart';
import 'package:hardware_app/Pishniyaz/resistor.dart';
import 'package:hardware_app/Pishniyaz/transformer.dart';
import 'package:hardware_app/Pishniyaz/transistor.dart';

class pishniyaz extends StatelessWidget {
  const pishniyaz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("پیش نیاز تعمیرات لپتاپ"),
          backgroundColor: Color.fromARGB(255, 69, 9, 129),
        ),
        body: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/resistor.png"),
                ),
                title: Text(
                  'مقاومت',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => resistor_main()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/capacitor.png"),
                ),
                title: Text(
                  'خازن',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => capacitor_main()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/Fuse.png"),
                ),
                title: Text(
                  'فیوز',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => fuse_main()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/Inductor.png"),
                ),
                title: Text(
                  'سلف یا کویل',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => inductor_main()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/Diode.png"),
                ),
                title: Text(
                  'دیود',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => diod_main()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/relay.png"),
                ),
                title: Text(
                  'رله',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => relay_main()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/Crystal.png"),
                ),
                title: Text(
                  'کریستال',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => crystall_main()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/Transistor.png"),
                ),
                title: Text(
                  'ترانزیستور',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => transistor_main()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/microcontroller.png"),
                ),
                title: Text(
                  'آی سی و میکروکنترلر',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => microcontroller_main()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/Transformer.png"),
                ),
                title: Text(
                  'ترانسفورمر',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => transformer_main()),
                  );
                },
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
