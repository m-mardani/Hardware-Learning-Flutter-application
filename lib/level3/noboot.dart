import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class noboot_prob_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<noboot_prob_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/xQcOU8GJgdc';
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
              title: const Text('No boot , Random boot'),
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
                      '''No Bootable Device در لپ تاپ به چه معناست؟
قبل از بررسی معنی ارور No Bootable Device لپ تاپ Acer و.. باید با واژه Bootable Device بیشتر آشنا شویم. Bootable Device به دستگاهی گفته می شود که می تواند به شکل یک هارد، دیسک (CD و DVD و فلاپی)، فلش مموری و.. باشد که فایل های لازم برای بوت شدن کامپیوتر را در حافظه درون خود داشته باشد. در صورت عدم وجود این دستگاه و یا شناسایی نشدن آن، کامپیوتر نمی تواند بوت شود.
رایج ترین Bootable Device در واقع همان هارد شما است که سیستم عاملی مانند ویندوز در آن نصب شده است. پس از روشن شدن سیستم، دیوایس بوت که توسط تنظیمات بایوس که در ابتدا اجرا می شود انتخاب می شود و وقتی که کامپیوتر شما نتواند این دستگاه را شناسایی یا لود کند، ارور No Bootable Device را نشان می دهد.

علل نمایش ارور No Bootable Device در لپ تاپ و کامپیوتر
همانطور که اشاره کردیم، انتخاب دیوایس بوت توسط تنظیمات بایوس ثبت می شود و یکی از دلایل این ارور، تنظیمات اشتباه در بایوس است. اما به جز این تنظیمات، علت های دیگری نیز وجود دارند. به طور مثال می توان به بد سکتور و آسیب دیدن فیزیکی هارد دیسک، خراب شدن فایل های اساسی سیستم عامل، ویروسی شدن سیستم، خطای مادربرد و.. هم اشاره کرد.

قابل ذکر است که اگر شما ارور Reboot and select proper Boot Device را مشاهده کردید، پیشنهاد می کنیم مطلب ۷ روش حل ارور Reboot and Select Proper Boot Device ویندوز ۱۰ ، ۸ و ۷ را بخوانید.

ریستارت کردن سیستم برای رفع مشکل No bootable device
ریستارت کردن را می توان دارویی برای رفع خیلی از مشکلات سیستم معرفی کرد. اگر با ارور No Bootable Device Acer مواجه شدید، بهتر است ابتدا کامپیوتر خود را ریستارت کنید. با این کار ساده ممکن است مشکل شما رفع شود.

نحوه حل مشکل No Bootable Device در لپ تاپ Acer و Dell و..
برای رفع ارور No Bootable Device ابتدا سیستم را ریستارت کرده و قبل از روشن شدن کامپیوتر، دکمه F2، F10 یا DEL و یا هر دکمه دیگری که کامیپوتر شما را وارد تنظیمات بایوس می کند را بزنید. (این دکمه در سیستم ها متفاوت است)

سپس به تب BOOT بروید و باید چک کنید که گزینه Primary Boot یا اولویت اول برای بوت شدن روی Hard Drive باشد. اگر به جای گزینه هارد، کلمه None را دیدید، به این معنی است که هارد شما شناسایی نمی شود.

تنظیم پارتیشن اولیه برای رفع مشکل پیغام No Bootable Device در ویندوز
مراحل گفته شده در روش قبلی برای رسیدن به Command Prompt  را انجام دهید. سپس دستور diskpart را تایپ و اینتر کنید. سپس list disk را هم تایپ و اینتر کنید. حال در بعد از نمایش لیست باید همین کار را برای دستور select disk 0 هم اجرا کنید.



تغییر حالت بوت به UEFI برای رفع مشکل خطای No Bootable Device ایسر و..
مشابه روش هایی که پیش تر ذکر شده به تنظیمات بایوس و قسمت Boot بروید. حال گزینه Legacy Boot Option Priority را انتخاب کرده و آن را به UEFI تغییر دهید.



خارج کردن باتری CMOS
اطلاعات بایوس با درآوردن باتری CMOS مادربرد و قطع جریان برق به حالت پیش فرض بر می گردد. به عنوان یک راه حل برای رفع خطای No Bootable Device می توانید ابتدا کامپیوتر خود را کامل از برق جدا کنید و سپس درب کیس را باز کرده و باتری CMOS را خارج کنید. حدود ۱۰ دقیقه صبر کنید و مجدد باتری را قرار داده و سیستم را روشن کنید.




تعمیر هارد برای رفع ارور No Bootable Device
اگر مشکل پیغام خطای No Bootable Device در لپ تاپ شما هنوز رفع نشده است، ممکن است هارد دیسک شما آسیب دیده باشد. بدین منظور باید آن را به تکنیسین های حرفه ای جهت تعمیر بدهید و یا آن را از کامپیوتر خود جدا کرده و به یک سیستم دیگر متصل کنید. سپس روی آیکن Computer در آن کامپیوتر راست کلیک کرده و Open را بزنید.

حال درایو را پیدا کنید و روی آن راست کلیک کرده و Properties را بزنید.
به تب Tools بروید و روی Check Now کلیک کنید.
حال شما دو گزینه Automatically fix file system errors و Scan for and attempt recovery of bad sectors را مشاهده می کنید. توصیه می شود هر دو گزینه را به ترتیب بزنید تا مشکلات هارد کشف و رفع شوند.

تعویض ویندوز لپ تاپ برای رفع خطای No Bootable Device
در پایان اگر مشکل رفع نشد، ویندوز خود را تعویض کنید. اگر در تعویض ویندوز و نصب آن روی هارد هم مشکل داشتید، احتمالا هارد شما آسیب دیده است و اگر با روش ذکر شده تعمیر نشد، باید آن را به متخصص تعمیرات نشان دهید و یا در بدترین حالت شاید هم نیاز باشد که یک هارد نو تهیه کنید!




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
