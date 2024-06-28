import 'package:flutter/material.dart';
import 'package:whatsapp/models/status.dart';
// import 'package:whatsapp/tema.dart';

class StatusView extends StatelessWidget {
  const StatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: statusList.length,
      itemBuilder: (context, index) {
        return const ListTile(
          leading: Icon(
            Icons.account_circle_outlined,
            color: Colors.pinkAccent,
          ),
          // title: Text(
          //   Status.nama,
          //   style: customTextStyle,
          // ),
          // subtitle: Text(status.statusdate),
        );
      }
    );
  }
}
