import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  Inbox({Key key}) : super(key: key);

  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: new Scaffold(
        appBar: new PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: new Container(
            height: 50.0,
            child: new TabBar(
              tabs: [
                Tab(
                  text: 'Messages',
                ),
                Tab(
                  text: "Notifications",
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Messages(),
            Notifications(),
          ],
        ),
      ),
    );
  }
}

class Messages extends StatefulWidget {
  Messages({Key key}) : super(key: key);

  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Text(
            "FRIENDS",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.lightBlue),
          ),
          trailing: Text(
            "NEW GROUP",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.lightBlue),
          ),
        ),
        Divider(),
      ],
    );
  }
}

class Notifications extends StatefulWidget {
  Notifications({Key key}) : super(key: key);

  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Container(
    );
  }
}