import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hardware_app/Pishniyaz/Pishniyaz.dart';
import 'package:hardware_app/level1/level1.dart';
import 'package:hardware_app/level2/level2.dart';
import 'package:hardware_app/level3/level3.dart';
import 'package:hardware_app/navigation_drawer.dart';
import 'package:hardware_app/Pishniyaz/Pishniyaz.dart';
import 'package:hardware_app/level1/level1.dart';
import 'package:hardware_app/level2/level2.dart';
import 'package:hardware_app/level3/level3.dart';
import 'package:hardware_app/webView.dart';
// import 'package:webview_flutter/webview_flutter.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const NavigationDrawer(),
        body: NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  SliverAppBar(
                    leading: IconButton(
                      icon: const Icon(Icons.menu),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();

                        print("Opeeeened");
                      },
                    ),
                    actions: [
                      IconButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: const Text(
                                    '!! برای مشاهده ویدیو ها حتما با فیلترشکن وارد شوید'),

                                duration: const Duration(milliseconds: 3000),
                                width: 320.0, // Width of the SnackBar.

                                padding: const EdgeInsets.symmetric(
                                  horizontal:
                                      20.0, // Inner padding for SnackBar content.
                                ),
                                behavior: SnackBarBehavior.floating,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            );
                          },
                          icon: const Icon(Icons.help_outline_outlined))
                    ],
                    expandedHeight: 240,
                    backgroundColor: Color.fromARGB(255, 69, 9, 129),
                    flexibleSpace: FlexibleSpaceBar(
                      title: Text(
                        'Hardware Engineering',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 28,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: 'grodna'),
                      ),
                      background: Image.network(
                        'https://images.unsplash.com/photo-1518770660439-4636190af475?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bW90aGVyYm9hcmR8ZW58MHx8MHx8&w=1000&q=80',
                        fit: BoxFit.cover,
                      ),
                    ),
                    floating: true,
                    snap: true,
                    pinned: true,
                  ),
                ],
            body: ListView(
              children: <Widget>[
                Card(
                  child: ListTile(
                    leading: SizedBox(
                      width: 40,
                      height: 40,
                      child: Image.asset("images/prerequisite.png"),
                    ),
                    title: Text(
                      'پیش نیاز تعمیرات لپتاپ',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const pishniyaz()),
                      );
                    },
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: SizedBox(
                      width: 40,
                      height: 40,
                      child: Image.asset("images/1.png"),
                    ),
                    title: Text(
                      'آموزش تعمیرات لپتاپ سطح ۱',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const level1()),
                      );
                    },
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: SizedBox(
                      width: 40,
                      height: 40,
                      child: Image.asset("images/2.png"),
                    ),
                    title: Text(
                      'آموزش تعمیرات لپتاپ سطح ۲',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const level2()),
                      );
                    },
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: SizedBox(
                      width: 40,
                      height: 40,
                      child: Image.asset("images/3.png"),
                    ),
                    title: Text(
                      'آموزش تعمیرات لپتاپ سطح ۳',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const level3()),
                      );
                    },
                  ),
                ),
                // Card(
                //   child: ListTile(
                //     title: Text(
                //       'کوییز آخر فصل',
                //       textDirection: TextDirection.rtl,
                //       textAlign: TextAlign.center,
                //     ),
                //     onTap: () {
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => const webviewapp()),
                //       );
                //     },
                //   ),
                // ),
              ],
            )));
  }
}
