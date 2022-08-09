import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class fuse_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<fuse_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/BLIYsRwKrkE';
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
              title: const Text('فیوز'),
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
                      '''وظیفه اصلی فیوز این است که اگر جریانی بالاتر از حد مطلوب توسط مدار کشیده شود، مدار را قطع می‌کند و در نتیجه از آسیب ناشی از اتصال کوتاه جلوگیری می‌کند.

ساده‌ترین نوع فیوز از یک عنصر مقاومتی تشکیل شده‌است که با دقت برای نقطه ذوب آن انتخاب شده‌است. هنگامی که جریانی از این عنصر عبور می‌‌کند، یک افت ولتاژ کوچک (به اندازه کافی کوچک است تا مدار پایین دست تحت تأثیر قرار نگیرد) در سراسر عنصر ایجاد می‌شود و مقداری نیرو به عنوان گرما تلف می شود. بنابراین دمای عنصر افزایش می‌یابد. برای جریان‌های معمولی، این افزایش دما برای ذوب شدن رشته کافی نیست. با این حال، اگر کشش جریان از جریان نامی فیوز بیشتر شود، به سرعت به نقطه ذوب می‌رسد. عنصر مقاومتی ذوب می‌شود و مدار قطع می‌شود. ضخامت و طول عنصر مقاومتی جریان نامی را تعیین می‌کند.
ویژگی‌های فیوز
انواع مختلف فیوزها را می‌توان بر اساس ویژگی‌های زیر دسته بندی کرد.

ظرفیت حمل جریان فیوز

رتبه بندی ولتاژ فیوز

ظرفیت شکستن فیوز

I2t ارزش فیوز

ویژگی پاسخگویی

ولتاژ نامی فیوز

اندازه بسته بندی
فیوزهای کارتریج
این رایـج‌ترین نوع فیـوز است. المنت فیـوز در یک محفظه شیشه‌ای با کلاهک‌های فلزی محصور شده است. فیـوز در یک نگهدارنده مناسب قرار می‌گیرد.

از آنجایی که محفظه شیشه ای شفاف است، به راحتی می‌توان تشخیص داد که آیا فیوز منفجر شده است یا خیر.

انواع مختلفی از این طرح وجود دارد که از جمله آنها می‌توان به فیوزهای  Slow blow (زود سوز) و فیوز Fast blow  (دیر سوز) اشاره کرد. فیوزهای Slow blow فیوزهایی هستند که می‌توانند ولتاژ‌های گذرای بالایی را برای مدت زمان نسبتاً کوتاهی تحمل کند و پاره نشوند یا نسوزند. فیوزهای Fast blow  برعکس مورد قبل بسیار حساس بوده در مقابل اندک ولتاژ و جریانی می‌سوزند.

این فیوز‌ها  (Slow blow) را می‌توان در قطعاتی و دستگاه‌هایی که زیاد حساس نبوده و یا با نوسان ولتاژ و جریان آسیب ندیده و می‌توان با در نظر گرفتن آن دستگاه را خاموش نموده و فیوز سالم بماند، بکار برد. این نوع فیوز در صنعت موتور بسیار کاربرد داشته چرا که یک موتور در ابتدای روشن شدن جریان زیادی را می‌کشد تا زمانی که به دور نامی خود رسیده و جریان ثابت گردد.

در مدارات الکترونیکی به دلیل حفاظت از قطعات و مدارات از فیوز Fast blow استفاده می‌گردد، چرا که با کوچکترین نوسان ولتاژ یا جریان می‌سوزد.
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
