import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class biosprogramming_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<biosprogramming_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/Ta_PPndnCTk';
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
              title: const Text('نحوه پروگرم کردن بایوس'),
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
                      '''تراشه BIOS قطعه‌ای از حافظه فقط خواندنی (ROM) است که روی مادربرد قرار دارد و اطلاعات لازم برای راه اندازی کامپیوتر را در اختیار دارد. پروگرام کردن بایوس به معنای تغییر تنظیماتی در صفحه تنظیمات BIOS است که در دسترس کاربران قرار می‌گیرد. اگر هر یک از دلیل‌های بالا، باعث ایراد یا بالا نیامدن کامپیوتر شما شد، می‌توانید یک بار پروگرام کردن مجدد BIOS را امتحان کنید. توجه داشته باشید که انجام برخی تغییرات روی بایوس ممکن است باعث بی‌ثبات شدن عملکرد سیستم شما شود؛ بنابراین هنگام برنامه ریزی مجدد بایوس کامپیوتر خود نهایت دقت را به عمل بیاورید. برای این کار، کافیست مراحل زیر را دنبال کنید:
                      
                      گام اول
برای پروگرام کردن بایوس در ابتدا کامپیوتر خود را ریستارت کنید. شما باید برای ورود به ابزار بایوس از محیطی خارج از سیستم عامل عادی کامپیوتر خود استفاده کنید.

گام دوم
دکمه مخصوص ورود به تنظیمات بایوس را از روی صفحه کلید بفشارید. این دکمه معمولاً ESC یا یکی از کلیدهای ردیف F است. برای اینکه بفهمید این کلید روی کامپیوتر یا لپ تاپ شما کدام دکمه است، می‌توانید به دفترچه راهنمای مادربرد سیستم خود مراجعه کنید.

گام سوم
با کلیدهای جهت‌دار روی کیبورد می‌توانید در صفحه تنظیمات بایوس به این طرف و آن طرف بروید. برای اینکه متوجه شوید تنظیماتی که قصد برنامه ریزی مجدد آن‌ها را دارید در کدام زیر شاخه منوها هستند، باید به دفترچه راهنمای کامپیوتر خود مراجعه کنید.

گام چهارم
با کلیدهای جهت‌دار روی کیبورد خود می‌توانید تنظیمات گزینه مربوطه را تغییر دهید و سپس کلید Enter را بفشارید. با این کار فهرستی از گزینه‌های مخصوص به آن بخش به نمایش درخواهد آمد. شما از این فهرست می‌توانید یکی را انتخاب کرده و مجدداً کلید Enter را بزنید.

گام پنجم
کار تمام است. در انتها می‌توانید با فشردن کلید ESC به منوی خروج بروید و روی دکمه Y کلیک کنید تا تغییرات اعمال شده بعد از پروگرام کردن بایوس ذخیره شوند.

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
