import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class adapter_prob_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<adapter_prob_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/wC-O9ekWZQY';
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
              title: const Text('انواع آداپتور ها و خرابی آنها'),
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
                      '''آداپتور های لپ تاپ و مشکل های احتمالی  
برق های شهری ولتاژ های بالایی دارند و برای کار کردن در حالت عادی برای لپ تاپ و دیگر وسایل الکترونیکی مناسب نیستند زیرا قطعات درونی آن ها از ولتاژ های پایین تری استفاده می کنند برای مثال آداپتور های لپ تاپ عموما ولتاژ های ۱۹ ولت دارند.

مانند آداپتور لپ تاپ Hp که ۱۹v  و  ۴٫۶۲A است که برای این لپ تاپ مناسب است البته که برای لپ تاپ  های مختلف که از قطعات داخلی متفاوتی مانند Cpu وRAM و … است که با توجه به کارایی و بازدهی آن ولتاژ های متافوتی را نیز نیاز دارند.

حال آداپتور ها ولتاژ ۲۲۰v که در ایران است (در کشور های دیگر متفاوت می باشد) را به ولتاژ های مورد نظر خود تبدیل می کند تا اجزای لپ تاپ بهترین بازدهی خود را داشته و در عین حال دچار خرابی نیز نشوند.

اما اداپتور ها نیز یک قطعه مصرفی حساب می شوند و ممکن است پس از گذشت چند سال دچار خرابی شوند که با توجه به نوع خرابی تعمیر آداپتور می تواند ساده یا خیلی پیچیده باشد.


انواع خرابی های احتمالی برای آداپتور لپ تاپ
آداپتور از سه بخش کلی تشکیل شده :

کابل برق آداپتور
سیم آداپتور
خود آداپتور (بیشتر برد آداپتور مهم است)
اگر مشکل از دو مورد اول باشد تعمیر کردن ان ساده تر است و فقط با تعویض کابل مورد نظر می تواند مشکل آداپتور را حل کرد برای مثال اگر در قسمت کابل برق خوردگی داشته باشد می توان کابل مورد نظر را تعویض کرد و مشکل رفع می شود.

اما اگر مشکل از مورد سوم یعنی برد اداپتور باشد (در صورتی که اداپتور لپ تاپ کمیاب نباشد یا به سختی پیدا نشود) ارزش تعمیر ندارد و با خرید یک اداپتور جدید به صرفه تر است و مدت طولانی تری بدون مشکل و ایرادی برای شما کار می کند.

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
