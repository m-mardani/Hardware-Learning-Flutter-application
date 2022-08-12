import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class nopower_prob_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<nopower_prob_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/OCuAP8lBqdc';
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
              title: const Text('No Power مشکل '),
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
                      '''این بخش مسئول پردازش تمامی اطلاعاتیست که در لپ تاپ صورت می‌گیرد . بنابراین در صورتی که این سمت خراب شود، معمولا سرعت پردازش در لپ تاپ کاهش پیدا می‌کند . از این رو شما به مرور مشاهده می‌کنید سیستم کند شده است . حتی هنگ کردن سیستم می‌تواند نشانه ای از خراب شدن این بخش باشد .

نوسان برق در بروز این مشکل دخیل است . البته در زمان جا به جایی نیز باید دقت کنید برای این بخش مشکلی رخ ندهد . در صورت بروز هر گونه مشکل برای آن می‌بایست با تعمیرکار تماس بگیرید .

علت خراب شدن این بخش ورود ضربه به لپ تاپ ، نوسان برق و آبخوردگی است . معمولا در صورت بروز مشکل در این بخش دستگاه خاموش شده و یا هنگ می‌کند .
همانطور که پیش تر گفته شد در صورتی که برد پاور دچار مشکل شود، لپ تاپ روشن نمی‌شود . چرا که این بخش منبع تغذیه است . برد پاور برق مورد نیاز را از طریق تبدیل ولتاژ برق شهری به ولتاژ مورد نیاز، تامین می‌کند . بنابراین به تمامی بخش‌ها برق رسانی می‌شود . در صورتی که در برد پاور مشکلی رخ دهد، در نتیجه کامپیوتر که با برق کار می‌کند، روشن نشده و یا ناگهان در وسط کار خاموش می‌شود . بنابراین می‌بایست این بخش به طور کامل توسط تعمیرکار بررسی گردد .

معمولا علت هایی که سبب خراب شدن برد پاور می‌شود شامل نوسانات برق است . در صورتی که لپ تاپ شما روشن نشده و یا به صورت ناگهانی خاموش می‌شود، یعنی مشکل از این بخش است .

خراب شدن فن دلیلی دیگر برای روشن نشدن لپ تاپ است .
در صورتی که چراغ آن روشن نمی‌شود، می‌توان احتمال داد منبع تغذیه دچار مشکل شده است .
تعمیر و تعویض قطعاتی همچون پاور، نیازمند تخصص ویژه است که باید حتما تعمیرکار آن را انجام دهد.


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
