import 'package:flutter/material.dart';
import 'package:my_contact_list/core/constant/app_styles.dart';

class ContactSearch extends SearchDelegate<String> {
  List<String> names;
  List<String> numbers;

  ContactSearch(this.names, this.numbers);

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        // ignore: prefer_const_constructors
        icon: Icon(Icons.clear),
      ),
    ];
    // throw UnimplementedError();
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        query = '';
      },
      // ignore: prefer_const_constructors
      icon: Icon(Icons.clear),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return returnSearchResult(context);
  }

  Widget returnSearchResult(BuildContext context) {
    List<String> searchResultList = query.isEmpty
        ? []
        : names
            .where((friendName) =>
                friendName.toLowerCase().contains(query.toLowerCase()))
            .toList();

    ListView.builder(
        itemCount: searchResultList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          String frnName = searchResultList[index];
          String contactNo = numbers[names.indexOf(frnName)];

          return Padding(
              padding: const EdgeInsets.only(
                  right: 10.0, left: 16.0, top: 10, bottom: 20),
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
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
                            frnName,
                            style: AppStyles.subTextStyle,
                          ),
                          Text(
                            contactNo,
                            style: AppStyles.subTextStyle,
                          ),
                        ],
                      ),
                      // Icon(Icons.phone),
                    ],
                  ),
                ),
              ));
        });

    return ListView.separated(
        itemCount: searchResultList.length,
        itemBuilder: (context, index) {
          return Text(searchResultList[index]);
        },
        separatorBuilder: (BuildContext context, int index) {
          // ignore: prefer_const_constructors
          return Divider();
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // ignore: prefer_const_constructors
    // return Text('');
    return returnSearchResult(context);
  }
}
