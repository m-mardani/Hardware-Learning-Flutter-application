import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class diod_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<diod_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/6lep5e3KMdY';
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
              title: const Text('دیود'),
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
                      '''دیود (Diode) به قطعه‌ای الکترونیکی گفته می‌شود که در مدار‌های الکتریکی از آن استفاده می‌شود. ویژگی اصلی این قطعه، عبور دادن جریان الکتریکی در یک جهت است. در این مطلب قصد داریم تا ویژگی‌ها و نحوه تشخیص انواع دیود‌ها را به زبان ساده بیان کنیم. این قطعه نیز در کنار خازن، ترانزیستور و مقاومت از اجزاء مهم در یک مدار الکترونیکی محسوب می‌شود.
                      بردار مشکی رنگِ ▶ جهت جریان الکتریکیِ i را نشان می‌دهد. جهت مثبت دیود،‌ پایه‌ای است که جریان الکتریکی به آن وارد و جهت منفی دیود، پایه‌ای است که جریان از آن خارج می‌شود. احتمالا شما نیز متوجه مفهوم این نماد شده‌اید. خط عمودی استفاده شده نشان می‌دهد که جریان، اجازه عبور از سمت راست به چپ را ندارد.
                      بسته به نوع کاربری، دیود‌ها را می‌توان به‌شکل‌های گوناگونی در یک مدار قرار داد. در هرکدام از این حالات، جریان برقرار شده در دیود به‌صورت متفاوتی عمل می‌کند.

جریان مستقیم
فرض کنید در دو سر یک دیود سیلیکونی، ولتاژی برابر با ۰.۲V اعمال شود. با اعمال این ولتاژ اندک، جریان الکتریکی در دیود برقرار نخواهد شد. زمانی‌که اندازه ولتاژ تا ۰.۶V افزایش یابد، جریان الکتریکی قابل اندازه‌گیری در دیود برقرار خواهد شد. با افزایشِ بیشتر از این مقدار، جریان به‌سرعت در دیود افزایش خواهد یافت. در این نقطه، نمودار i-v تقریبا به‌صورت عمودی خواهد شد. شکل زیر نمودار جریان-ولتاژ برای دیودی سیلیکونی نشان داده شده.
با توجه به مفاهیم بالا، زمانی که ولتاژی مثبت دو سر یک دیود اعمال شود، به حالت ایجاد شده، «بایاس مستقیم» (Forward Bias) گفته می‌شود. در حقیقت زمانی یک دیود بایاس مستقیم است که در تمامی نقاط، ولتاژ در بخش مثبت قرار گرفته باشد. در شرایطی نرمال، ولتاژ در حالت بایاس مستقیم، بین ۰.۶ تا ۰.۷۵ ولت است. اگر ولتاژ اعمال شده، در شرایطی اجباری بیشتر از ۰.۷۵ ولت شود، جریان الکتریکی بسیار زیاد خواهد شد که منجر به داغ شدن دیود می‌شود.

جریان معکوس
اگر ولتاژی منفی دو سر دیود اعمال شود، پایه – در پتانسیل بیشتری نسبت به + قرار دارد. در این حالت در بخش سمت چپ شکل ۲ قرار داریم. به دیود در این حالت،‌ دیود با بایاس معکوس (Reverse Bias) گفته می‌شود. در حالت معکوس، اندازه جریان الکتریکی تقریبا نزدیک به صفر و دارای مقداری منفی است.

در مواردی به این جریان، «جریان اشباع معکوس» (Reverse Saturation Current) نیز گفته می‌شود. اندازه این جریان در دیود‌های استاندارد بین Is=10-9 A تا Is=10-۱۲ A است؛ البته در تحلیل‌های الکتریکی این مقدار را برابر با صفر در نظر می‌گیرند.

دیود در حالت بایاس، در بعضی موارد ممکن است نتواند نقش خود را ایفا کند. برای نمونه در ولتاژ‌های بالا، تحت عنوان «ولتاژ شکست» (Breakdown Voltage) یا VBR، دیود همانند یک رسانا عمل کرده و جریان الکتریکی را از خود عبور می‌دهد. در لحظه شکست، جریان به‌سرعت و در جهت معکوس افزایش می‌یابد. اندازه VBR در یک دیود معمولی حدود 
−
50
V
 است. در اکثر موارد تلاش بر این است که دیود به دور از ولتاژ شکست نگه داشته شود.
 
''',
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
