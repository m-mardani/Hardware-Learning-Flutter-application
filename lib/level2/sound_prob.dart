import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class sound_prob_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<sound_prob_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/2qTdO1gp6ck';
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
              title: const Text('مشکلات صدا'),
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
                      '''اصلاح تنظیمات صدا
یکی دیگر از روش های کاربردی برای رفع مشکل قطع شدن صدای ویندوز در نسخه های مختلف، بررسی و اصلاح تنظیمات صداب لپ تاپ است. برای این منظور، روی آیکن اسپیکر کلیک راست کنید و playback device را انتخاب کنید. اگر شما چند تا اسپیکر (مانند هدفن ها، اسپیکرها و یک تلویزیون) را وصل کرده باشید، ممکن است خروجی به اشتباه انتخاب شده باشد. شما می توانید playback device را در این منو انتخاب کنید. پس از انتخاب اسپیکر مورد نظرتان در سربرگ playback ، دستگاه هی متصل شده را Ready کرده و پورت هایی که هیچ چیزی به آنها وصل نیست را “Not plugged in” کنید.  همچنین برای شنیدن صدای لپ تاپ از طریق هر دستگاه جانبی دیگری، باید تنظیمات مربوطه را در این بخش انجام دهید؛ در غیر این صورت، با مشکل صدا نداشتن لپ تاپ مواجه خواهید شد.
بررسی اتصالات
یکی از دلایل اصلی قطع شدن صدای لپ تاپ، آسیب دیدگی اتصالات است. البته پیش از هر کاری، باید اطمینان حاصل کنید که آیکون صدای ویندوز مات نیست. اگر این آیکون در وضعیت درست بود، بررسی اتصالات هدفون یا اسپیکر و اصلاح آنها می تواند مساله را برطرف کند. چنانچه این موارد هم نرمال بود، باید برای رفع مشکل صدا نداشتن لپ تاپ خود، از روش های دیگری استفاده کنید.
بروز رسانی سیستم عامل
مایکروسافت برای ویندوز و به ویژه ویندوز 10، آپدیت هایی را به صورت منظم ارائه می دهد که معمولا مشکلات صدا را برطرف می کنند. بنابراین لازم است که سیستم خود را از نظر دریافت آپدیت بررسی کرده و مطمئن شوید که بروز شده یا نه. منوی start را باز کنید و در کادر جستجو عبارت windows update را تایپ نمایید. این منو را باز کرده و لیست بروز رسانی ها را چک کنید. اگر هیچ لیستی وجود نداشت، روی دکمه check for update کلیک کنید. این کار باعث می شود که ویندوز، بروز رسانی های موجود را سرچ کرده و فهرستی از آنها را به شما ارائه نماید. سپس روی لینک  view available updates کلیک کنید. ممکن است چند گزینه برای بروزرسانی وجود داشته باشد که ما توصیه می کنیم همه ی گزینه های موجود را آپدیت کنید. معمولا پس از نصب بروز رسانی، مشکل صدا نداشتن لپ تاپ نیز برطرف می گردد.

استفاده از windows troubleshooter
اگر هیچ یک از روش های ذکر شده، ایراد صدای لپ تاپ را برطرف نکرد، کنترل پنل را باز کرده و  روی گزینه find and fix problems  یا troubleshooting کلیک کنید. در مرحله ی بعد،Troubleshoot audio playback را انتخاب کنید تا فرایند عیب یابی صدا شروع شود. خروجی مورد نظرتان را انتخاب کرده و منتظر شوید تا سیستم، لیستی از عیب یابی آنها را به شما نمایش دهد. یکی از مواردی را که با آنها مشکل دارید، انتخاب کرده و گزینه ی next را انتخاب کنید. پس از پایان فرایند، فهرستی از عیب یابی و اقدامات انجام شده به نمایش در می آید.

نصب مجدد درایورهای صدا
برای رفع ایراد صدا نداشتن لپ تاپ ، می توانید درایور های صدا را مجددا نصب کنید. برای این کار، Device manager را باز کرده و به این ترتیب، سخت افزار لپ تاپ تان را مدیریت کنید. دستگاه هایی که به درستی کار نمی کنند، در این بخش علامت زده شده اند. برای باز کردن Device manager دکمه های ویندوز و R را فشار دهید و devmgmt.msc را تایپ و اینتر کنید. حالا با باز کردن تبsound ,video and game controllers ، روی دستگاه صوتی مورد نظرتان دابل کلیک کنید. اگر این دستگاه به درستی کار نکند، یک آیکن ! یا ? کوچک کنار آن خواهد بود. حالا برای رفع مشکل، روی سربرگ Driver کلیک کنید و update driver  را انتخاب نمایید. انتخاب گزنیه search automatically for update driver software  امکانی را فراهم می کند که ویندوز به صورت آنلاین، برای درایورهای درست سرچ کند. درایور های پیدا شده به صورت اتوماتیک دانلود و نصب می شوند. را انتخاب کنید. اگر درایورها پیدا شوند به طور اتوماتیک دانلود و نصب می شوند. سیستم ری استارت شده و به این ترتیب، مشکل صدا نداشتن لپ تاپ برطرف می گردد.

تعمیر سخت افزاری
پیش تر اشاره کردیم که ممکن است دلیل صدا نداشتن لپ تاپ ، خرابی یکی از بخش های سخت افزاری این دستگاه باشد. در این صورت، دستگاه باید به شکل تخصصی تر مورد بررسی قرار گرفته و تعمیر گردد. توجه داشته باشید که ترمیم یا تعویض قطعات داخلی لپ تاپ نیاز به مهارت و تخصص بالایی دارد و باید در مراکز معتبر انجام شود. در غیر این صورت، ممکن است بخش های دیگر دستگاه نیز آسیب دیده و هزینه تعمیرات آن افزایش پیدا کند. مرکز سخت افزار ایران، با راه اندازی واحد تعمیرات لپ تاپ، شرایطی را فراهم کرده که تعمیرات نرم افزاری و سخت افزاری این محصول، به تخصصی ترین شکل انجام گردد. همکاران ما پس از بررسی دقیق و موشکافانه ی دستگاه و تعمیر یا تعویض قطعات مربوطه، مشکل صدا نداشتن لپ تاپ را به بهترین شکل برطرف می نمایند.''',
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
