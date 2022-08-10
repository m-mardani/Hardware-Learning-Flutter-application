import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(PrivacyAndPolicy());

class PrivacyAndPolicy extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<PrivacyAndPolicy> {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: <Widget>[
        AppBar(
          backgroundColor: Color.fromARGB(255, 69, 9, 129),
          centerTitle: true,
          title: const Text("Privacy And Policy"),
        ),
        Container(
          child: Column(
            children: [
              Text(
                  '''The simple answer is yes; you need a privacy policy if your mobile app falls under the following situations:

Your app collects personal data
Your app uses a third-party service provider
The iOS or Android platform requires one
You want to reassure your app’s users
You want to err on the side of caution
A privacy policy for your app isn’t just a way to meet legal requirements; it’s a good way to:

Reassure Your Users
According to a survey done by the Pew Research Center, more than 57% of mobile app users have uninstalled or decided not to install an app due to concerns about the sharing of their personal information.

Including a mobile app privacy policy will ease your users’ concerns and give them confidence in your app by knowing that their personal information is safe.

Since 2018, the General Data Protection Regulation (GDPR) has required that companies across the globe process the personal data of EU citizens with very stringent data security tools and data privacy measures in place. In addition, companies must present their data practices to the user in the form of a privacy policy.

If your app is available to those located in any EU country, you are subject to comply with the GDPR. Complying with the GDPR starts with a comprehensive mobile app privacy policy that details what, how, when, with whom, and where data is collected.

For example, if you operate a mobile app, you are likely to collect data such as geolocation and mobile device information from your app’s users. Therefore, you should be explicit in outlining all these potential avenues of data collection in your app’s privacy policy.

A significant and growing interest to mobile application users is the concern over being tracked by their purchases, daily activities, physical geolocations, and website history.

According to a recent Pew Research Center study, nearly all mobile app users take steps to manage, control, or protect their personal data:

54% of mobile app users did not install a mobile app due to the amount of personal information they needed to share in order to use the app
30% of mobile app users have uninstalled an app that was already on their mobile device once they learned it was collecting personal information they didn’t wish to share
For example, in an effort to acknowledge user concerns, the Walt Disney Company is careful to inform users of its tracking policy. Children and families spend billions on Disney Company products, movies, and visits to amusement parks. To provide complete transparency, Disney is clear about how the company and its advertisers track web behavior for advertising purposes.'''),
            ],
          ),
        )
      ],
    );
  }
}
