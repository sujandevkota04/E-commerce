// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_contact_list/features/contacts/presentation/contact_search.dart';
import 'package:my_contact_list/features/contacts/widgets/contacts_cards.dart';

// ignore: must_be_immutable
class MyContacts extends StatelessWidget {
  MyContacts({super.key});

  final List<String> names = [
    'Sujan',
    'Sushan',
    'Sahil',
    'Raj',
    'Nikhil',
    'Trilok',
    'Niraj',
    'Santosh',
    'Rubik',
    'Madhav',
  ];

  final List<String> numbers = [
    '9810000000',
    '9810000000',
    '9810000000',
    '9810000000',
    '9810000000',
    '9810000000',
    '9810000000',
    '9810000000',
    '9810000000',
    '9810000000',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Contacts"),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            IconButton(
                onPressed: () {
                  showSearch(
                      context: context,
                      delegate: ContactSearch(names, numbers));
                },
                icon: Icon(Icons.search))
          ],
        ),
        body: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context, index) {
              return ContactsCards(names[index], numbers[index]);
            }));
  }
}
