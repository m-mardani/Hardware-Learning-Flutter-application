import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(FAQ());

class FAQ extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: <Widget>[
        AppBar(
          backgroundColor: Color.fromARGB(255, 69, 9, 129),
          centerTitle: true,
          title: const Text("FAQ"),
        ),
        Container(
          child: Column(
            children: [
              Text('''Can displays be individually turned ON or OFF?
In Android 10, the implementation of the device power state is primarily global and determined by the power state of the default display. Only virtual displays can be turned ON/OFF individually, by setting the surface to null). Activity/WindowManager responds to this state change.
How do I dynamically configure input-display association?
There's no built-in way to dynamically configure the association between an input and a device in Android 10, but some workarounds can be applied in most cases. See Input Routing for details.


How do I configure activities for specific displays?
Use LaunchParamsController, which intercepts all activity launches and allows a system component to modify the parameters used for launch. It's currently available within system_server.


How do I display an IME on a different display than its target?
An IME can only appear on a display configured in DisplayWindowSettings. If the config isn't enabled for a display where input is requested, the IME appears on the default display.


Can multiple instances of the same app be created for different screens/users?
AOSP doesn't allow you to create multiple separate sandboxes and processes of the same app for the same user. Use cases associated with this request require concurrent multi-user support instead of app-level separation.

If different users want to use the same app, they should log in with their profiles. App-level separation requires logging in to the app for each session. Otherwise, other user's data may still be present.
'''),
            ],
          ),
        )
      ],
    );
  }
}










//       backgroundColor: Color.fromARGB(255, 255, 255, 255),
//       title: const Text(
//         'FAQ',
//         textAlign: TextAlign.center,
//         style: TextStyle(
//             color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),
//       ),
      
//       children: <Widget>[
//         Container(
//           child: Column(
//             children: [
//               Text(
//                 '''Can displays be individually turned ON or OFF?
// In Android 10, the implementation of the device power state is primarily global and determined by the power state of the default display. Only virtual displays can be turned ON/OFF individually, by setting the surface to null). Activity/WindowManager responds to this state change.
// How do I dynamically configure input-display association?
// There's no built-in way to dynamically configure the association between an input and a device in Android 10, but some workarounds can be applied in most cases. See Input Routing for details.


// How do I configure activities for specific displays?
// Use LaunchParamsController, which intercepts all activity launches and allows a system component to modify the parameters used for launch. It's currently available within system_server.


// How do I display an IME on a different display than its target?
// An IME can only appear on a display configured in DisplayWindowSettings. If the config isn't enabled for a display where input is requested, the IME appears on the default display.


// Can multiple instances of the same app be created for different screens/users?
// AOSP doesn't allow you to create multiple separate sandboxes and processes of the same app for the same user. Use cases associated with this request require concurrent multi-user support instead of app-level separation.

// If different users want to use the same app, they should log in with their profiles. App-level separation requires logging in to the app for each session. Otherwise, other user's data may still be present.
// ''',
//                 style: TextStyle(color: Color.fromARGB(255, 20, 2, 2)),
//               )
//             ],
//           ),
//         ),
//       ],