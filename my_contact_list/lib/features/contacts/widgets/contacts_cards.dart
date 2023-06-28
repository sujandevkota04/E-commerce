import 'package:flutter/material.dart';
import 'package:my_contact_list/core/constant/app_styles.dart';

// ignore: must_be_immutable
class ContactsCards extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  ContactsCards(this.names, this.numbers);
  String names;
  String numbers;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            const EdgeInsets.only(right: 10.0, left: 16.0, top: 10, bottom: 20),
        child: Card(
          elevation: 8,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text("Names: ${names[index]}"),
                    // Text("Phone: ${numbers[index]}"),
                    Text(
                      names,
                      style: AppStyles.subTextStyle,
                    ),
                    Text(
                      numbers,
                      style: AppStyles.subTextStyle,
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.phone),
                )
              ],
            ),
          ),
        ));
  }
}
