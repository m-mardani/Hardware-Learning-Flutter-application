import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class bios_setting_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<bios_setting_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/ezubjTO7rRI';
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
              title: const Text('تنظیمات بایوس'),
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
                      '''Bios مخفف کلمه Base Input Output System میباشد و شامل امکاناتی جهت تنظیم و پیکربندی تنظیمات و امکانات سیستم میباشد.
تنظیمات بایوس یا سیماس Cmos در آی سی موسوم به آی سی سیماس بر روی مادِربورد ذخیره می شود.


هنگامی که کامپیوتر خاموش است، باطری تعبیه شده بر روی مادِر بورد تنظیمات ذخیره شده را نگهداری می کند. علاوه بر تنظیمات، ساعت و تاریخ نیز اطلاعات IC سیماوس است که توسط این باطری محافظت می شود.


برای ورود به بخش تنظیمات بایوس بایستی هنگامی که کامپیوتر را روشن می کنیم دکمه های Delete و یا در بعضی سیستمها Ctl+F1 و یا F12 را بزنیم. (بستگی به نوع مادربورد دارد)
در این بخش که فقط با کیبورد قابل تنظیم است میتوانید تنظیمات بسیار زیادی انجام دهید که به مهمترین آنها اشاره می شود.
1) Standard CMOS Features 
● Date & Time :
تنظیم و نمایش تاریخ - تنظیم و نمایش ساعت

● IDE 0 Master :
تنظیم و نمایش دستگاهی که به پورت IDE0 روی مادر بورد نصب شده و در حالت Master قرار دارد

● IDE 0 Slave :
تنظیم و نمایش دستگاهی که به پورت IDE0 روی مادر بورد نصب شده و در حالت Slave قرار دارد

● IDE 1 Master :
تنظیم و نمایش دستگاهی که به پورت IDE1 روی مادر بورد نصب شده و در حالت Master قرار دارد

● IDE 1 Slave :
تنظیم و نمایش دستگاهی که به پورت IDE1 روی مادر بورد نصب شده و در حالت Slave قرار دارد

● Serial ATA 0 :
تنظیم و نمایش دستگاهی که به پورت SATA0 روی مادر بورد نصب شده

● Serial ATA 1 :
تنظیم و نمایش دستگاهی که به پورت SATA1 روی مادر بورد نصب شده

● Floppy Device - Drive A / Drive B :
تنظیمات و فعال/غیرفعال کردن درایو فلاپی دیسک

● System Information :
نمایش کلیاتی راجع به سیستم (در برخی سیستمها وجود دارد )
آموزش تنظیمات بایوس سیستم BIOS Setup

 

 

بایوس

 


Bios مخفف کلمه Base Input Output System میباشد و شامل امکاناتی جهت تنظیم و پیکربندی تنظیمات و امکانات سیستم میباشد.
تنظیمات بایوس یا سیماس Cmos در آی سی موسوم به آی سی سیماس بر روی مادِربورد ذخیره می شود.


هنگامی که کامپیوتر خاموش است، باطری تعبیه شده بر روی مادِر بورد تنظیمات ذخیره شده را نگهداری می کند. علاوه بر تنظیمات، ساعت و تاریخ نیز اطلاعات IC سیماوس است که توسط این باطری محافظت می شود.


برای ورود به بخش تنظیمات بایوس بایستی هنگامی که کامپیوتر را روشن می کنیم دکمه های Delete و یا در بعضی سیستمها Ctl+F1 و یا F12 را بزنیم. (بستگی به نوع مادربورد دارد)
در این بخش که فقط با کیبورد قابل تنظیم است میتوانید تنظیمات بسیار زیادی انجام دهید که به مهمترین آنها اشاره می شود.

توجه کنید که منو بندی و گزینه ها ممکن است در مادربوردهای مختلف متفاوت باشد. اما اصول کلی و مفهوم تمام آنها یکی است. که ما به گزینه های اصلی مربوط به دو سازنده معروف آیسی بایوس (AMI و Award) پرداخته ایم:


1) Standard CMOS Features (قابلیتهای استاندارد)
این بخش شامل تنظیمات اصلی و مشترک بین تمام سیستمها میباشد و شامل موارد زیر است :

● Date & Time :
تنظیم و نمایش تاریخ - تنظیم و نمایش ساعت

● IDE 0 Master :
تنظیم و نمایش دستگاهی که به پورت IDE0 روی مادر بورد نصب شده و در حالت Master قرار دارد

● IDE 0 Slave :
تنظیم و نمایش دستگاهی که به پورت IDE0 روی مادر بورد نصب شده و در حالت Slave قرار دارد

● IDE 1 Master :
تنظیم و نمایش دستگاهی که به پورت IDE1 روی مادر بورد نصب شده و در حالت Master قرار دارد

● IDE 1 Slave :
تنظیم و نمایش دستگاهی که به پورت IDE1 روی مادر بورد نصب شده و در حالت Slave قرار دارد

● Serial ATA 0 :
تنظیم و نمایش دستگاهی که به پورت SATA0 روی مادر بورد نصب شده

● Serial ATA 1 :
تنظیم و نمایش دستگاهی که به پورت SATA1 روی مادر بورد نصب شده

● Floppy Device - Drive A / Drive B :
تنظیمات و فعال/غیرفعال کردن درایو فلاپی دیسک

● System Information :
نمایش کلیاتی راجع به سیستم (در برخی سیستمها وجود دارد )



ـ نکته: دستگاههایی مانند سی دی رام، رایتر و هارد، اغلب ATA هستند و با کابلی 80 رشته ای موسوم به IDE به مادربورد وصل می شود. اغلب مادربوردها دارای یک یا دو پورت IDE هستند (یعنی 2 یا 4 دستگاه ATA را میتوان به آن وصل کرد. به ATA در مواقعی PATA نیز میگویند)


از آنجا که کابل IDE دارای سوکت میباشد، دو سوکت آن به دو دستگاه قابل نصب است که یکی Slave و دیگری Master خواهد بود. برای تنظیم اینکه کدامیک Master و کدامیک Salve باشند در پشت این دستگاهها جامپرهایی تعبیه شده که با توجه به توضیحات روی دستگاه قابل تنظیم هستند.

هاردها و رایترها با سوکت SATA نیز موجودند که سرعت بسیار بیشتری دارند و کابل آنها کوچکتر میباشد. این دستگاهها با کابل موسوم به ساتا به مادربورد وصل می شوند. به هر پورت ساتا یک وسیله نصب میشود. در حال حاضر اغلب مادربوردها دارای 2 ، 4 و یا 6 پورت ساتا هستند.

2) Advanced CMOS Features 

شامل تنظیمات امکانات ویژه و خاص مربوط به BIOS سیستم میباشد.

مثلا در اغلب بایوس ها شامل موارد زیر است :
( توضیح: گزینه های قابل انتخاب برای هر تنظیم در داخل کروشه [ ] قرار داده شده)


● Boot Sector Protection : [ Enable/ Disable ]

فعال(Enable) یا غیرفعال (Disable) بودن سیستم حفاظت از خرابی و دستکاری غیرمجاز بایوس توسط ویروس و یا اتفاقات ناخواسته

 


● Full Screen Logo Screen : [ Enable/ Disable ]

نمایش یا عدم نمایش لوگوی شرکت سازنده مادِربورد در ابتدای روشن شدن سیستم

 


● Quick Booting : [ Enable/ Disable ]

با قرار دادن این گزینه در حالت فعال (Enable) ، سیستم پس از گذشت 10 ثانیه از چک کردن تنظیمات، شروع به بالا آمدن میکند. (اگر چک قعات بیش از 10 ثانیه طول بکشد از چک کردن مابقی صرفنظر می کند)

 


● Boot Up Num-Lock LED : [ON / OFF ]

مشخص کردن وضعیت پیش فرض چراغ دکمه های شماره (Numbers Keys)

 


● Boot Sequence [C, CD-Rom,A / A,CD-Rom,C / CD-Rom.C,A / CD- Rom,A,C ]

با ورود به این بخش می توانید اولویت مراجعه سیستم برای بالا آمدن را به دستگاه دلخواه بدهید.

 


● Hard Disk Boot Priority : [ HDD 0 / HDD 1 / HDD 2/… ]

تنظیم اولویت بین هارددیسکها برای بالا آمدن (اینکه سیستم عامل با کمک کدام هارد بالا بیاید)

 


● First(1st) Boot Device : [ Hard Disk / CD-ROM / Floppy / USB HDD/… ]

تنظیم اولین دستگاهی که توسط سیستم برای بوت شدن مورد استفاده قرار میگیرد.

 


● Second(2nd) Boot Device : [ Hard Disk / CD-ROM / Floppy / USB HDD/… ]

تنظیم دومین دستگاهی که توسط سیستم برای بوت شدن مورد استفاده قرار میگیرد ( به دستگاه دوم تنها زمانی مراجعه می شود که دستگاه اول نتوانسته سیستم را بوت کند)

 


● Third(3rd) Boot Device : [ Hard Disk / CD-ROM / Floppy / USB HDD/… ]

تنظیم سومین دستگاهی که توسط سیستم برای بوت شدن مورد استفاده قرار میگیرد ( به دستگاه سوم تنها زمانی مراجعه می شود که دستگاه دوم نتوانسته سیستم را بوت کند)

 


● Other Boot Device

تنظیم دیگر دستگاهها که توسط سیستم برای بوت شدن مورد استفاده قرار میگیرند.
3) Integrated Peripherals
تنظیمات دستگاههای آنبورد مانند کارت صدا، پورتهای USB (یو اس بی)، کارت گرافیکهای آنبورد، کارت شبکه تعبیه شده بر روی مادربورد، در این قسمت قرار دارند.
به توضیح بخشهای مهم این قسمت میپردازیم :


● USB Controller : [Disable / 2 Ports / 4 Ports / 6 Ports / 8 Ports /… ]

تنظیم فعال یا غیر فعال بودن پورتهای USB مادربورد

 


● USB Device Legacy Support : [Enable / Disable ]

تنظیم امکان/عدم امکان استفاده از دستگاههای USB در سیستم عامل

 


● Onboard Lan Controller : [Enable / Disable ]

تنظیم فعال/غیرفعال بودن کنترلر شبکه

 


● Audio Controller : [Enable / Disable ]

تنظیم فعال/غیرفعال بودن کارت صدا

 


● On-Chip ATA Controller : [Enable / Disable ]

تنظیم کنترلر دستگاههای ATA

 


● On-Chip SATA Controller : [Enable / Disable ]

تنظیم فعال/غیرفعال بودن کنترلر دستگاههای SATA

 


● Raid Sata Mode : [IDE / Raid0 / Raid 1 / Raid 2 / …]

تنظیم سیستم استفاده از Raid ( استفاده بهینه و بدون خطا از چند هارد دیسک)

 


● I/O Device :

تنظیمات مربوط به پورتهای خروجی و ورودی مادربورد مانند LPT, Com, Mid

 


● USB Keyboard Support : [Enable / Disable ]

فعال یا غیرفعال بودن کیبورد با پورت USB (برای کیبورد های USB حتما باید این گزینه فعال باشد)

 


● USB Mouse Support : [Enable / Disable ]

فعال یا غیرفعال بودن ماوس با پورت USB (برای موس های یو اس بی حتما باید این پورت فعال باشد، در غیر اینصورت هنگام نصب ویندوز در زمانی که سیستم یو اس بی را شناسایی نمی کند موس غیر فعال می شود)

 


● Onboard Serial Port 1 & 2

تنظیمات مربوط به پورتهای سریال


4) Power Management Setup

● ACPI Function(Or Suspend Mode) : [Enable / Disable ]

تنظیم عملکرد حالت ACPI که در ویندوز قابل استفاده است

 


● USB Device Wake UP : [Enable / Disable ]

اینکه سیستم با دستگاههای متصل به USB از حالت استندبای خارج گردد یا خیر

 


● Resume From S3 By PS2 Keyboard: [Enable / Disable ]

اینکه سیستم با کیبورد متصل به PS2 از حالت استندبای خارج گردد یا خیر

 


● Resume From S3 By PS2 Mouse : [Enable / Disable ]

اینکه سیستم با ماوس متصل به PS2 از حالت استندبای خارج گردد یا خیر

 


● Power Button Function : [Power Off / Suspend ]

عملکرد دکمه پاور روی کیس ( خاموش کند و یا به حالت استندبای برود )


● Keyboard Power ON :

این بخش دارای 3 گزینه است :
ـ Password : با زدن پسوردی دلخواه سیستم روشن شود.
ـ Disable : حالت روشن شدن سیستم با صفحه کلید غیرفعال باشد.
ـ Keyboard 98 : با زدن دکمه پاور روی کیبوردهای قدیمی سیستم روشن شود.

 


● Mouse Power ON : [Enable / Disable ]

اینکه وقتی کلیک دکمه چپ ماوس کلیک گردد سیستم روشن شود.

 


● Modem Ring resume : [Enable / Disable ]

این گزینه اگر فعال باشد، اگر مودم شما به خط تلفن متصل باشد و کسی با شما تماس بگیرد سیستم روشن می شود
5) Pnp/PCI Configuration

● PCI : Peripheral Compounent Interconnect
●  PNP : Plug & Play


دستگاهای PCI دستگاههایی هستند که از طریق اسلات (شکاف) های PCI به مادربورد متصل می شوند. مانند مودم، تی وی کپچر و یا کارت صدا.
در این بخش هرکدام از شکافهای (Slot) مادربورد را میتوان تنظیم کرد که از کدام شماره وقفه (IRQ) استفاده کند.
بهتر است گزینه Auto را انتخاب کنیم تا سیستم به طور اتوماتیک شماره وقفه به دستگاهها نسبت دهد.

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
