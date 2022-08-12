import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class mem_pwm_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<mem_pwm_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/zDxFbAhu4Bo';
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
              title: const Text('Memory PWM'),
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
                      '''دو نکته بسیار مهم در اسلات رم ها داریم:
1-ولتاژ کاری VRAM
2- سیگنال ارتباطی بین پل شمالی و اسلات رم که بهش VTT می گوین.!

حالا یه خورده بیشتر راهنماییتون می کنم :

ولتاژ کاری رم ها در اسلات های مختلف متفاوتند
: DDRI=2.5V
DDRII = 1.8V
DDRIII = 1.5 V
که جهت تست اون می تونید از قطعات SMD کوچیک کنار اسلات رم ها استفاده کنید .

البته دقیقش اینه
DDRI: پایه دوم قسمت کوچیک پایین اسلات رم
DDRII : پایه هفتم قسمت بزرگ پایین اسلات رم
DDRIII: پایه ششم قسمت بزرگ پایین اسلات رم
دوستان vram رو با vrm اشتباه نگیرین vram یعنی همون ولتاژ رم ،ولی vrm مخفف VRM: Voltage regulator module

VTT : (یا سیگنال ارتباطی بین پل شمالی و اسلات رم ) این میزان دقیقا می بایست نصف ولتاژ کاری در رم های متفاوت باشه !

جهت تست ولتاژ و VTT بهتره از پایه روبروی پایه مربوط به VRAM ولتاژگیری کرد ، که در اسلات های مختلف متفاوت است.

نکته بسیار بسیار مهم ::در صورت پایین بودن VRAM مشکل می تونه ولتاژ کاری CPU باشه که در این صورت معمولا هر دو اسلت خراب میشن.

نکته بعدی (که فراگیر تر هست):در صورت پایین بودن ولتاژ رم، مدار تغذیه رم، که متشکل از فت های کنار اسلات رم هستند و در بعضی از مواقع یک آی سی درایور از اون ها پشتیبانی می کند می تونه ،علت مشکل ما باشه


خوب حالا براتون دوتا جدول می زارم حالشو ببرید ،تو این جدول انواع ولتاژ ها معرفی شده ،البته در مدل amd ساپورت و intel ساپورت:


در سیستم های اینتل :
VTT خط ولتاژي ست که کنترلر حافظه، مسير QPI، مسير FSB، حافظه کش L3 ، مسير کنترل حرارتي (رابط PECI) و ساير مدارهاي مرتبط را تغذيه مي‌کند، ……….یا خدا خسته شدم . توجه داشته باشيد که تمام پردازنده‌هاي اينتل داراي اين قابليت‌ها نيستند و VTT هم به هر کدام از اين قابليت‌ها در صورت وجود، مرتبط مي‌شود.

در سیستم های AMD
VDDIO : این عبارت، ولتاژ استفاده شده توسط سیگنال‌های مسیر حافظه را نشان می‌دهد که به ولتاژ حافظه شهرت پیدا کرده است. مقدار پیش‌فرض این ولتاژ، توسط موسسه استانداردهای حافظه (JEDEC) مشخص می‌شود که برای حافظه‌های DDR2 به مقدار 8/1 ولت و برای حافظه‌های DDR3، به میزان 5/1 ولت است. در جدول نام‌های مختلفی که برای این ولتاژ استفاده شده را می‌بینید.


VTT : این عبارت،‌ ولتاژی که مدار Terminatioin Voltage قرار گرفته درون چیپ حافظه را تغذیه می‌کند، تنظیم می‌کند. مقدار پیش‌فرض این ولتاژ، نصف ولتاژ VDDIO است. پردازنده‌های اینتل نیز یک ولتاژ VTT دارند که نباید با این ولتاژ اشتباه گرفته شود.


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
