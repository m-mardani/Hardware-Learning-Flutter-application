import 'package:flutter/material.dart';
import 'package:hardware_app/Pishniyaz/resistor.dart';
import 'package:hardware_app/level2/IO.dart';
import 'package:hardware_app/level2/Usb_hdmi_prob.dart';
import 'package:hardware_app/level2/bios_programming.dart';
import 'package:hardware_app/level2/biosvsec.dart';
import 'package:hardware_app/level2/change_component.dart';
import 'package:hardware_app/level2/charge_prob.dart';
import 'package:hardware_app/level2/connection_prob.dart';
import 'package:hardware_app/level2/me_region.dart';
import 'package:hardware_app/level2/motherboard_volt.dart';
import 'package:hardware_app/level2/network_prob.dart';
import 'package:hardware_app/level2/pwm_cpu.dart';
import 'package:hardware_app/level2/pwm_mem.dart';
import 'package:hardware_app/level2/sound_prob.dart';

class level2 extends StatelessWidget {
  const level2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("آموزش تعمیرات لپتاپ سطح 2"),
          backgroundColor: Color.fromARGB(255, 69, 9, 129),
        ),
        body: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/motherboard.png"),
                ),
                title: Text(
                  'آموزش تعویض قطعات روی مادربرد',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => change_comp_main()),
                  );
                },
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
                  'بایوس و EC چیست',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => biosvsec_main()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/programation.png"),
                ),
                title: Text(
                  'نحوه پروگرام کردن انواع بایوس',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => biosprogramming_main()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/inandout.png"),
                ),
                title: Text(
                  'i/o چیست و انواع آن',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => io_main()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/binary.png"),
                ),
                title: Text(
                  'مشکلات و آموزشهای Me-Region',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => me_region_main()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/battery.png"),
                ),
                title: Text(
                  'مشکلات شارژ و دیتکت باتری و تعمیرات',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => charge_prob_main()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/cpu.png"),
                ),
                title: Text(
                  'PWM تغذیه CPU و عیب یابی',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => cpu_pwm_main()),
                  );
                },
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
                  'PWM تغذیه RAM و عیب یابی',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => mem_pwm_main()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/voltage.png"),
                ),
                title: Text(
                  'ولتاژ گیری و تست پوینت های مادربرد لپ تاپ',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => motherboard_voltage_main()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/sound.png"),
                ),
                title: Text(
                  'مشکلات صدا',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => sound_prob_main()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/laptop_network.png"),
                ),
                title: Text(
                  'مشکلات شبکه',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => network_prob_main()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/electric.png"),
                ),
                title: Text(
                  'اتصالی یا شورتی در مادربرد لپ تاپ',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => connection_prob_main()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset("images/usb.png"),
                ),
                title: Text(
                  'کارنکردن پورت USB و HDMI ',
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => usbhdmi_prob_main()),
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
