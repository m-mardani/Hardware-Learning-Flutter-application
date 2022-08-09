import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class capacitor_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<capacitor_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/4Hg7SLhetXM';
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
              title: const Text('خازن'),
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
                      '''قطعه اي است که براي ذخيره انرژي الکتريکي (ولتاژ) توسط میدان الکترواستاتیکی (بار الکتریکی)، در مدار استفاده مي شود و با توجه به اینکه بار الکتریکی در خازن ذخیره می شود می توان از آن برای ایجاد میدان الکتریکی یکنواخت و پایدار استفاده کرد. از خازن ها به عنوان فیلتر نیز استفاده می کنند زیرا سیگنال های متناوب یا AC را به راحتی عبور می دهند ولی مانع عبور سیگنال های مستقیم یا DC می شوند.
خازن یا کاپاسیتور که ابتدای کلمه capacitor است با حرف C نمایش می‌دهند. واحد ظرفیت خازن فاراد است و ظرفیت خازن طبق فرمول زیر بدست می آید.
انواع خازن

عدسي
سراميکي
الکتروليتي(آلومینیومی، تانتالیوم)
خازن ورقه ای(کاغذی و پلاستیکی)
میکا
روغنی و گازی
خازن های متغیر
خازن های الکترولیتی یا شیمیایی بر خلاف خازن های عدسی دارای قطب مثبت منفی میباشند و  معمولا در رنج میکرو فاراد می باشند. ظرفیت خازن و ولتاژ قابل تحمل خازن بر روی آن نوشته شده است و  هنگام استفاده در مدار باید به جهت خازن توجه ویژه ای داشت. انواع خازن های الکترولیتی، آلومینیومی و تانتالیومی می باشد.  از مهمترین کاربردهای این خازن در مدار یکسو کننده دیودی بعنوان فیلتر و کوپلینگ در مدار بایاس ترانزیستور ها میباشد.

اجازه دهید ابتدا با یک تعریف کوتاه و اجمالی مسیر پاسخگویی به پرسش خازن چیست را آغاز کنیم. خازن یک قطعه ساده در اصطلاح غیرفعال و ساده است که می‌تواند در صورت اتصال به ولتاژ الکتریکی، بار الکتریکی را در خود ذخیره کند. به بیانی دیگر خازن قطعه‌ای است که ظرفیت خازنی داشته و می تواند شارژ شود. اما مقصود از داشتن ظرفیت خازنی در یک خازن چیست؟ در ادامه به این مبحث پرداخته ایم.
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
