// ignore_for_file: prefer_const_constructors
import 'package:contact_list_zuri_task_6/contact_list.dart';
import 'package:contact_list_zuri_task_6/mock/contact_mock.dart';
import 'package:contact_list_zuri_task_6/models/contact.dart';
import 'package:flutter/material.dart';

void main() {
  Contact mockContact = MockContact.fetchAll();
  return runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Pacifico'),
    home: ContactList(mockContact),
  ));
}
