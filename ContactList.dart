import 'package:contactapp/ContactList/ContactModel.dart';
import 'package:contactapp/ContactList/ContactProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ContactDetails.dart';

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  @override
  Widget build(BuildContext context) {
    List<ContactModel> contactList =
        context.watch<ContactProvider>().contactList;
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
          itemCount: contactList.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.blueGrey,
              child: ListTile(
                  leading: const ClipRRect(
                    child: Icon(
                      Icons.person,
                      size: 34,
                      color: Colors.blue,
                    ),
                  ),
                  title: Text(
                    "\t${contactList[index].name}",
                    style: const TextStyle(color: Colors.black, fontSize: 24),
                  ),
                  // subtitle: Text(
                  //   "\t${contactList[index].contact}",
                  //   style: const TextStyle(color: Colors.white, fontSize: 24),
                  // ),

                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContactDetails(
                                  contactList: contactList[index],
                                )));
                  }),
            );
          }),
    );
  }
}
