import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class me_region_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<me_region_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/eK1OYTbl1MM';
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
              title: const Text('Me-Region BIOS'),
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
                      '''مواقعی پیش می‌آید که لپ تاپ دچار مشکلی شده و برای رفع مشکل آی سی بایوس مادربرد را پروگرم می‌کنید یا به‌اصطلاح برای لپتاپ بایوس می‌زنید، اما بعدازاین عمل مشکل دستگاه حل شده ولی با مشکلاتی مثل بالا بودن دور فن، تصویر دادن با تأخیر، چند بار ریست شدن قبل از راه‌اندازی دستگاه، پایین بودن کیفیت تصویر در ویندوز و یا مشکلاتی از این قبیل روبه‌رو می‌شوید. لازم به ذکر است که امکان اینکه دستگاه بدون بایاس زدن نیز با این مشکلات مواجه شود وجود دارد.
                      
                      فایل بایوس از چند قسمت تشکیل‌شده است و یکی از این نواحی ME نام دارد. گاهی اوقات اطلاعات این ناحیه از بایاس خراب‌شده و یا این اطلاعات دقیقاً با این مدل دستگاه سازگار نیست. حال برای از بین بردن عیب‌های ذکرشده نیاز دارید که ورژن بایوس روی دستگاه و همچنین ورژن ناحیه ME را بدانید و بعد ناحیه ME آن را ترمیم نمایید.
                      
                      ابتدا برای دانستن ورژن بایوسی که استفاده کرده‌اید، نرم افزار UEFI Tool 0.3.0 را دانلود نموده و بعد از باز کردن نرم افزار فایل بایوس خراب را داخل نرم‌افزار load نموده و مانند عکس زیر عمل نمایید.
                      
                      حال به دنبال جایگذاری فایل ME سالم در بایوس BIOS خراب هستیم. این جایگذاری به دو روش انجام می‌شود. روش اول به‌صورت دستی در محیط ویرایش فایل HEX و روش دوم با استفاده از نرم‌افزارهای مربوط به این کار می‌باشد. در ادامه این مقاله به دنبال شرح روش جایگزینی فایل ME مناسب در بایاس خراب توسط نرم افزار هستیم.

در مرحله بعد برای ترمیم فایل، همان‌طور که شرح دادیم نیاز به یک نرم افزار دارید که برای کار کردن با این نرم افزار حتماً باید ورژن فایل بایوس موردنظر را بدانید و نرم افزار مختص همان ورژن را دانلود نموده و استفاده نمایید. این نرم افزار Flash Image نام دارد می‌توانید در این قسمت نرم افزار مربوط به ورژن بایاس دستگاهتان را دانلود نمایید.

روش کار با نرم افزار Flash Image
در ابتدا باید نرم افزار ورژن بایوس موردنظر را بازنموده و طبق مراحل زیر پیش بروید. به‌عنوان‌مثال اگر ورژن بایوس 6.0.3.1195 باشد شما باید نرم افزار Flash Image 6 را دانلود نموده و از آن استفاده نمایید.

داخل نرم افزار گزینه File را انتخاب نموده و از طریق گزینه Open، فایل موردنظر (فایلی که در حال حاضر روی آی سی بایوس قرار دارد و به دنبال درست کردن آن هستید) را داخل نرم افزار Load نمایید.


و در مرحله بعد روی گزینه ME Region کلیک کرده و در مقابل گزینه Binary Input File دو بار کلیک نموده و طبق عکس زیر عمل نمایید.

در مرحله بعد فایل ME Region سالم مربوط به این ورژن بایاس را دانلود کنید و بر روی Open کلیک نمایید.



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
