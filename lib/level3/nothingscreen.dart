import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class nothing_screen_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<nothing_screen_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/5Tv2HnU6Ouo';
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
              title: const Text('مشکل روشن شدن و تصویر نداشتن '),
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
                      '''این مشکل معمولا به دلایلی مانند خالی بودن باتری یا قطع بودن برق ، خراب بودن پاور سیستم، خراب بودن آداپتور،قطع یا اتصالی داشتن فلت یا سیم صفحه نمایش و … است  که با بررسی کردن مشکلات بالا می توان به مشکل پی برد.

اما یک مشکل دیگر که با تمام  موارد بالا گفته شد متفاوت است این است که با زدن دکمه روشن، لپتاپ روشن نمی شود (صفحه نمایش روشن نمی شود و کاملا سیاه است ) و مشکل از باتری و برق و صفحه نمایش و … نمی باشد در این حالت مشکل اصلی از قدیمی بودن بایوس می باشد.

از علایمی که برای اینکه بتوانید تشخیص بدهید مشکل از بایوس است این است لپتاپ شما معمولا علایم زیر را دارد:

باید چندین بار سیستم را مرتب از برق بکشید و  دوباره دکمه روشن شدن را بززنید  و بعد از چند دقیقه  روشن می شود. یا اینکه وقتی سیستم روشن نمی بعد از مدت نیم ساعت سیستم را وقتی روشن می کنید سیستم روشن می شود.
از علایم دیگر مشکل بایوس این است که فقط چراغ کوچک روشن شدن سیستم  روشن می شود ولی صفحه نمایش روشن نمی شود.
از علایم دیگر آن این است که مشکل روشن نشدن نا منظم  و نامشخص  است و زمان و الگوی خاصی برای روشن نشدن ندارد یعنی ممکن است چندین روز بدون مشکل  روشن شود ولی گاهی در یک روز چندین بار روشن نمی شود.
نکته: برای اینکه تشخیص بدهید مشکل از صفحه نمایش است یا بایوس  می توانید با زدن کابل مانیتور به یک مانیتور دیگر و یا با کابلHDMI به یک دستگاه LCD یا LED ، اگر روی آنها هم تصویر نداشتید یعنی مشکل از بایوس است و باید آپدیت کنید.


فلش بایوس به صورت نرم افزاری:
برای حل مشکل باید وقتی که سیستم روشن شد با زدن دکمه F2 یا delete (دکمه بستگی به مارک لپتاپ دار  در ایسوس ولنو و … معمولا f2 یا delete است ) به محیط بایوس بروید و ورژن بایوس روی سیستم را مشاهده نمایید. سپس  باید فایل بایوس را از قسمت دانلود درایور دانلود نمایید و ببینید که آیا آپدیتی برای درایورتان آمده است یا خیر  و اینکه آپدیت مورد نظر چه مشکلاتی را برایتان برطرف می نماید.

در زیر برای لپتاپ ایسوس مدل K45VD  آمده است  که  چندین آپدیت بایوس آمده است که باید  جدیدترین را دانلود و با روش مخصوص نصب که در اینترنت موجود است، آن را نصب نمایید.

فلش بایوس به صورت سخت افزاری:
این روش مخصوص سیستم هایی است که سیستم قادر به روشن شدن نیست و بایوس آن پریده است، در این روش اگر سیستم کامپیوتری باشد  معمولا IC  بایوس به راحتی جدا می شود و آن را روی پروگرمر قرار می دهیم و سپس آن را فلش میکنیم  اما در بسیاری از لپتاپ ها IC به راحتی قابل جدا کردن نمی باشد و باید آن را با استفاده از هیتر داغ کرد و از روی مادربرد جدا کرد و بعد از فلش کردن  دوباره آن را روی مادربرد لحیم کرد.


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
