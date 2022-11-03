// ignore_for_file: prefer_const_constructors, must_be_immutable
import 'package:contact_list_zuri_task_6/models/contact.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  Contact contact;
  ContactList(this.contact, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('Contact List (Week 6)'),
          centerTitle: true,
          backgroundColor: Colors.pinkAccent[200],
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _renderFacts(contact)));
  }

  List<Widget> _renderFacts(Contact contact) {
    var result = <Widget>[];

    for (int i = 0; i < contact.contacts!.length; i++) {
      result.add(_sectionTitle(contact.contacts![i]));
    }
    return result;
  }

  Widget _sectionTitle(text) {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.fromLTRB(15, 20, 10, 0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Center(
          child: CircleAvatar(
            backgroundImage: AssetImage(text.image.toString()),
            radius: 35.0,
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text.name.toString(),
                style: TextStyle(
                    color: Colors.blueGrey[500],
                    letterSpacing: 2.0,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold))
          ],
        ),
        SizedBox(
          height: 5.0,
        ),
        Row(
          children: [
            Text('Phone-Number: ',
                style: TextStyle(
                    letterSpacing: 2.0,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              width: 10.0,
            ),
            Text(text.phoneNumber.toString(),
                style: TextStyle(
                    color: Colors.blueGrey[500],
                    letterSpacing: 2.0,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold))
          ],
        ),
        SizedBox(
          height: 5.0,
        ),
        Row(
          children: [
            Text('Address: ',
                style: TextStyle(
                    letterSpacing: 2.0,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              width: 10.0,
            ),
            Text(text.address.toString(),
                style: TextStyle(
                    color: Colors.blueGrey[500],
                    letterSpacing: 2.0,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold))
          ],
        ),
        SizedBox(
          height: 5.0,
        )
      ]),
    ));
  }
}
