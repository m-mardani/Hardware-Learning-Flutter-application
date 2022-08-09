import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class inductor_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<inductor_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/abO6gfo8_58';
    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: const YoutubePlayerFlags(
        mute: false,
        loop: false,
        autoPlay: false,
      ),
    );
  }

  @override
  void deactivate() {
    controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: controller,
      ),
      builder: (context, player) => Scaffold(
            appBar: AppBar(
              title: const Text('سلف یا کویل'),
              backgroundColor: Color.fromARGB(255, 69, 9, 129),
            ),
            body: ListView(
              children: [
                player,
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  width: 350,
                  child: Expanded(
                    child: Text(
                      '''
اما ویژگی مهم دیگری نیز مربوط به یک «پیچه» (Coil) وجود دارد و آن این است که در اثر شار مغناطیسی، ولتاژ ثانویه‌ای در آن القا می‌شود که در برابر هرگونه تغییر جریان الکتریکی گذرنده از آن مقاومت یا مخالفت می‌کند.

یک سلف یا القاگر (Inductor)، در ساده‌ترین شکل خود، چیزی جز یک سیم‌پیچ حول یک هسته مرکزی نیست. در اغلب پیچه‌ها، جریان 
i
 گذرنده از سیم‌پیچی، شار مغناطیسی 
N
ϕ
 را تولید می‌کند که متناسب با جریان گذرنده از آن است.

سلف که گاهی «چوک» (Choke) نیز نامیده می‌شود، یک قطعه الکتریکی پسیو است که از یک پیچه سیمی تشکیل شده است.
سلف‌ها از یک سیم‌پیچی محکم به دور یک هسته مرکزی جامد ساخته می‌شوند. هسته می‌تواند به شکل استوانه یا یک چنبره باشد که به دور آن سیم پیچانده شده است تا شار مغناطیسی را درون حلقه خود متمرکز کند.

نماد شماتیکی سلف، یک پیچه از سیم است. بنابراین، می‌توان یک پیچه از سیم را یک القاگر یا سلف دانست. سلف‌ها را معمولاً بر اساس نوع هسته داخلی که به دور آن سیم پیچانده شده است دسته‌بندی می‌کنند. برای مثال: هسته خالی (هوا)، هسته آهن سخت یا هسته فریت نرم. این نوع هسته‌ها با دو خط موازی ممتد یا منقطع در کنار نماد اصلی سلف نشان داده می‌شوند. شکل زیر این موضوع را نشان می‌دهد.

وقتی جریان 
i
 از سلف می‌گذرد، یک شار مغناطیسی تولید می‌شود که متناسب با این جریان است. اما برخلاف خازن که در برابر تغییر ولتاژ صفحات مخالفت می‌کند، سلف در برابر تغییر جریان گذرنده از سیم مخالفت می‌کند.

به عبارت دیگر، سلف‌ها در برابر تغییرات جریان مخالفت یا مقاومت می‌کنند، اما در حالت ماندگار 
DC
، به سادگی جریان را از خود عبور می‌دهند. این قابلیت سلف در مقاومت در برابر تغییرات جریان 
i
 که آن را به شار پیوندی مغناطیسی 
N
Φ
 مرتبط می‌کند، «اندوکتانس» (Inductance) نام دارد و با نماد 
L
 نشان داده می‌شود. واحد اندوکتانس، هانری (
 H 
) است و به افتخار «جوزف هانری» (Joseph Henry) نامگذاری شده است.''',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ));
}
