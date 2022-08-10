import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(Termandcondition());

class Termandcondition extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Termandcondition> {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: <Widget>[
        AppBar(
          backgroundColor: Color.fromARGB(255, 69, 9, 129),
          centerTitle: true,
          title: const Text("Term & Condition"),
        ),
        Container(
          child: Column(
            children: [
              Text(
                  '''The Terms and Conditions establish the rules you expect users to follow if they download and use your app - here's why this is so important for all app developers and owners.

You can suspend or delete abusive accounts if they violate your Terms and Conditions. This protects other users and helps you keep your app a safe, trustworthy platform - particularly if users can post their own content.
If you operate a commercial app such as an e-commerce store, the Terms and Conditions lets you establish guidelines for dealing with consumer issues such as late delivery, payment problems, and refunds. As a consequence, since you can direct consumers to the Terms of Use, you speed up the dispute resolution process.
It's generally up to you to set which laws govern the Terms and Conditions. Most developers or owners choose the laws where their business is based. In legal speak, this is known as picking the forum or venue, or establishing the jurisdiction.
Terms and Conditions let you specify your intellectual property rights and the action you'll take if someone infringes your copyright.
Users appreciate clarity. They have more confidence in apps that clearly explain what rights and responsibilities they have. Your Terms and Conditions will help accomplish this.
By including a disclaimer, you limit your financial and legal liability towards a user.
It's important to note that while you can set your own guidelines, they must be within legal limits. For example, you can still be found negligent or in breach of another contract even if you state in your T&C that you cannot be.
Some Terms and Conditions are more detailed than others. The detail you should include often depends on:

Whether users can make purchases through the app
If users create or post their own content
How limited the interaction is - for example, a language translator app, or a news outlet app, will have shorter Terms and Conditions than a store or a subscription service
Let's first consider, then, the clauses that all Terms and Conditions agreements for mobile apps should include.
'''),
            ],
          ),
        )
      ],
    );
  }
}
