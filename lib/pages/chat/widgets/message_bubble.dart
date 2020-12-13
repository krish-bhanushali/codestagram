import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({
    Key key,
    this.sent,
  }) : super(key: key);

  final bool sent;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: sent ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: sent ? Colors.grey[200] : Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(100)),
          border: Border.all(color: Colors.grey[200]),
        ),
        child: Text('This is a text message'),
      ),
    );
  }
}
