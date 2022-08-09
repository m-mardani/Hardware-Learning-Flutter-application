import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class relay_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<relay_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/n9renPKEtUc';
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
              title: const Text('رله'),
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
                      '''واژه «رله» (Reley) عموماً به قطعه‌ای گفته می‌شود که در پاسخ به اعمال یک ولتاژ، اتصال الکتریکی بین دو یا چند نقطه را برقرار می‌کند. متداول‌ترین و پرکاربردترین نوع رله الکتریکی رله الکترومکانیکی یا EMR است.

پایه‌ای‌ترین عمل کنترلی برای هر تجهیز، روشن (ON) و خاموش (OFF) کردن آن است. ساده‌ترین راه برای انجام این کار، استفاده از سوئیچ‌ها یا کلیدها برای ایجاد وقفه در رسیدن انرژی منبع الکتریکی به مدار است. هرچند سوئیچ‌ها (کلیدها) برای عمل کنترل مورد استفاده قرار می‌گیرند، اما معایبی نیز دارند. بزرگترین عیب آن‌ها قطع یا وصل به صورت فیزیکی است. علااوه بر این، اندازه کلیدها نسبتاً بزرگ است، کُند عمل می‌کنند و تنها قابلیت سوئیچ جریان‌های الکتریکی کم را دارند.

رله‌های الکتریکی اساساً سوئیچ‌هایی هستند که عملکرد آن‌ها الکتریکی است و در شکل‌ها، اندازه‌ها و توان‌های متنوع برای کاربردهای مختلف مورد استفاده قرار می‌گیرند. رله‌ها همچنین می‌توانند یک یا چند کنتاکت در یک بسته با توان بالاتر باشند که برای ولتاژهای بالا یا کاربردهای سوئیچینگ جریان به کار می‌روند و در این حالت کنتاکتور (Contactor) نامیده می‌شوند.

در این آموزش،‌ اصول اساسی عملکرد رله‌های الکترومکانیکی را بررسی می‌کنیم که در کنترل موتور یا مدارهای رباتیک مورد استفاده قرار می‌گیرند. چنین رله‌هایی در مدارهای کنترل یا سوئیچینگ الکترونیکی و الکتریکی به کار می‌روند و مستقیماً در بُردهای PCB نصب می‌شوند یا به صورت مجزا قرار می‌گیرند و جریان‌های بار را از مقدار کسری از یک آمپر تا بالاتر از ۲۰ آمپر سوئیچ می‌کنند. البته مدار رله‌ها در کاربردهای الکترونیکی مشابه است.

«رله‌های الکترومکانیکی»، همان‌گونه که از نامشان پیداست، قطعاتی الکترومغناطیسی هستند که شار مغناطیسی تولیدی حاصل از اعمالِ یک سیگنال کنترل الکتریکی ولتاژ  پایین DC یا AC‌ در ترمینال‌های رله را به نیروی مکانیکی کششی تبدیل می‌کنند و کنتاکت‌های الکتریکی درون رله را به کار می‌اندازند (کنترل می‌کنند). رایج‌ترین نوع رله‌های الکترومکانیکی از یک کویل یا سیم‌پیچ انرژی دهنده به نام مدار اولیه (Primary Winding) تشکیل شده‌اند که به دور یک هسته آهنی با قابلیت نفوذپذیری پیچانده می‌شود.

این هسته آهنی از یک بخش ثابت به نام «یوغ» (Yoke) و یک فنر متحرک به نام آرمیچر (Armature) تشکیل می‌شود که مدار میدان مغناطیسی را با بستن فاصله هوایی بین سیم‌پیچ الکتریکی آرمیچرِ متحرک کامل می‌کند. آرمیچر به گونه‌ای تعبیه شده که می‌تواند در اثر بسته شدن مسیر میدان مغناطیسی آزادانه حرکت کند و کنتاکت‌های الکتریکی را ببندد. اتصال بین یوغ و آرمیچر معمولاً یک یا چند فنر است که کنتاکت‌ها را به حالت بدون انرژی، یعنی حالت OFF، بازنشانی می‌کند.''',
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
