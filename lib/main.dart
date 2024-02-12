import 'package:deadsimplechat_sdk_flutter/deadsimplechat_sdk_flutter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({Key? key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final deadsimplechatController = new DeadSimpleChatController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: [
          Expanded(
              flex: 1,
              child: DeadSimpleChat(
                debug: false,
                roomId: "69gH5sdVQ", // Replace with Room ID
                publicKey:
                    "pub_37325a71334a4c4a325a326b6a2d584d66557847547a724a6a5656754434516f697542582d384a315533587838583159", // Replace with publicKey from the dashboard
                controller: deadsimplechatController,
              )),
          Expanded(
              flex: 1,
              child: Wrap(
                spacing: 10,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        deadsimplechatController.logout();
                        print("Logout");
                      },
                      child: Text("Logout")),
                  ElevatedButton(
                      onPressed: () {
                        deadsimplechatController.joinRoom(JoinOptions(
                            uniqueUserIdentifier:
                                "cc8459b0-70b9-4bac-b472-b2d36dc3452e	"));
                      },
                      child: Text("Join Room")),
                  ElevatedButton(
                      onPressed: () {
                        deadsimplechatController.connect();
                      },
                      child: Text("Connect")),
                  ElevatedButton(
                    child: Text("Get Messages"),
                    onPressed: () async {
                      var messages =
                          await deadsimplechatController.getMessages();
                      print("**** MESSAGE HISTORY FETCHED ***");
                      print(messages);
                    },
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        var channels =
                            await deadsimplechatController.getActiveChannels();
                        print("**** CHANNELS ****");
                        print(channels);
                      },
                      child: Text("Get Channels"))
                ],
              ))
        ],
      )),
    );
  }
}
