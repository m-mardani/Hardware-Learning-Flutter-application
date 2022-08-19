import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(about_us());

class about_us extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<about_us> {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: <Widget>[
        AppBar(
          backgroundColor: Color.fromARGB(255, 69, 9, 129),
          centerTitle: true,
          title: const Text("About Us"),
        ),
        Container(
          child: Column(
            children: [
              Text(
                """با سلام خدمت شما دوست عزیز روز به روز مرز های استفاده از تکلونوژی به جلو حرکت میکنه و ما سعی میکنیم که راهکار های مقابله با این مشکلات رو هم اراءه بدیم 
در این برنامه ما راهکار های تعمیرات لپتاپ و مادربرد پی سی رو براتون آماده  کردیم و شمایی که علاقه به تعمیرات دارید میتونید از این استفاده کنید.
همچنین میتوانید برای راهنمایی های بیشتر با ایمیل یا شماره زیر ارتباط برقرار کنید:
              c.s.mohammad2000@gmail.com
              +989028938455""",
                textDirection: TextDirection.rtl,
              )
            ],
          ),
        )
      ],
    );
  }
}
