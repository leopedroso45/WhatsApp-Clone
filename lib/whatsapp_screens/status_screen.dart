import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/models/status_model.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, i) => Column(
        children: <Widget>[
          new Divider(
            height: 10.0,
          ),
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(meWithoutStatus.photoSrc),
                radius: 25.0,
              child: Container(
                alignment: Alignment(1.5, 1.5),
                child: Icon(Icons.add_circle, color: Theme.of(context).accentColor,)
              ),

            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(meWithoutStatus.title, style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(
                meWithoutStatus.description, style: TextStyle(color: Colors.grey, fontSize: 15.0),
              ),
            ),
          )
        ],
      )
    );
  }
}
