import 'package:flutter/material.dart';
import 'package:hardware_app/Pishniyaz/resistor.dart';

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
                    MaterialPageRoute(
                        builder: (context) => const resistor_page()),
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
                onTap: () {},
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
                onTap: () {},
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
                onTap: () {},
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
                onTap: () {},
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
                onTap: () {},
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
                onTap: () {},
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
                onTap: () {},
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
                onTap: () {},
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
