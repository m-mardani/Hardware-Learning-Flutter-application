import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class microcontroller_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<microcontroller_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/JwCTkm43CxQ';
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
              title: const Text('میکروکنترلر'),
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
                      '''میکروکنترلر ها جزء لاینفک سیستم های امبدد هستند. میکروکنترلر در واقع رایانه ای ارزان و کوچک در یک تراشه است که شامل یک پردازنده، یک حافظه کوچک و لوازم جانبی ورودی-خروجی قابل برنامه ریزی است. این محصولات قرار است در محصولات و دستگاه های کنترل شده خودکار برای انجام کارهای از پیش تعریف شده و از قبل برنامه ریزی شده استفاده شوند.
                      میکروکنترلر یک میکرو کامپیوتر فشرده است که برای کنترل عملکرد سیستم های تعبیه شده در ماشین های اداری ، ربات ها ، لوازم خانگی ، وسایل نقلیه موتوری و تعدادی دیگر از تجهیزات تولید می شود. میکروکنترلر شامل اجزایی مانند حافظه ، وسایل جانبی و از همه مهمتر پردازنده است. میکروکنترلرها اساساً در دستگاههایی بکار می روند که برای اعمال توسط کاربر دستگاه به درجه ای از کنترل نیاز دارند.
                      یکروکنترلر یک قطعه از نوع IC است. IC نیز به معنای مدار مجتمع است. میکروکنترلر ها قابل برنامه ریزی هستند. یعنی هرچیزی را که شما با استفاده از کامپایلر خود (مثل بسکام، اتمل استودیو، کدویژن و …) به میکروکنترلر بدهید، میکروکنترلر آن را انجام میدهد.
                      میکروکنترلر ها در سیستم های توکار استفاده می شوند، اساساً انواع مختلفی از محصولات و دستگاه هایی که ترکیبی از سخت افزار و نرم افزار هستند و برای انجام عملکردهای خاص ساخته شده اند. چند نمونه از سیستم های توکار که در آن ها میکروکنترلر ها استفاده می شوند شامل – ماشین لباسشویی، ماشین فروش خودکار، مایکروویو، دوربین دیجیتال، اتومبیل، تجهیزات پزشکی، تلفن های هوشمند، ساعت های هوشمند، روبات ها و لوازم خانگی مختلف.
                      برای برنامه نویسی میکروکنترلر ها ، نرم افزار های خاصی وجود دارند که به آن ها کامپایلر (Compiler) میگویند. در زیر چند تا از کامپایلر های محبوب را آورده ایم :

اتمل استودیو Atmel Studio
کدویژن Codevision
بسکام Bascom
کیل Keil
و …
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
