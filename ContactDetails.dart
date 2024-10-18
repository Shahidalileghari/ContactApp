// import 'package:contactapp/ContactList/ContactProvider.dart';
// import 'package:contactapp/Pages/HomePage.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import 'ContactModel.dart'; // Import your ContactModel file
//
// class ContactDetails extends StatefulWidget {
//   final ContactModel contactList;
//   const ContactDetails({super.key, required this.contactList});
//
//   @override
//   State<ContactDetails> createState() => _ContactDetailsState();
// }
//
// class _ContactDetailsState extends State<ContactDetails> {
//   @override
//   Widget build(BuildContext context) {
//     final newContactList = widget.contactList;
//     List<ContactModel> contactList =
//         context.watch<ContactProvider>().contactList;
//     return Scaffold(
//         backgroundColor: Colors.white70,
//         appBar: AppBar(
//           leading: InkWell(
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => const HomePage()));
//             },
//             child: const Icon(
//               Icons.arrow_back,
//               color: Colors.white,
//               size: 34,
//             ),
//           ),
//           backgroundColor: Colors.blueGrey,
//           actions: [
//             const Icon(Icons.edit, color: Colors.white, size: 34),
//             const SizedBox(width: 14),
//             const Icon(Icons.star_rate, color: Colors.white, size: 34),
//             const SizedBox(width: 14),
//             PopupMenuButton<int>(
//                 onSelected: (value) {
//                   if (value == 6) {
//                     setState(() {
//                       context
//                           .read<ContactProvider>()
//                           .removeContact(contactList[value]);
//                     });
//                   }
//                   Navigator.pop(context);
//                 },
//                 itemBuilder: (context) => [
//                       const PopupMenuItem(
//                         value: 1,
//                         child: Text("Share"),
//                       ),
//                       const PopupMenuItem(
//                         value: 2,
//                         child: Text("Set calling SIM"),
//                       ),
//                       const PopupMenuItem(
//                         value: 3,
//                         child: Text("Set ringtone"),
//                       ),
//                       const PopupMenuItem(
//                         value: 4,
//                         child: Text("Add to home screen"),
//                       ),
//                       const PopupMenuItem(
//                         value: 5,
//                         child: Text("Move to another account"),
//                       ),
//                       const PopupMenuItem(
//                         value: 6,
//                         child: Text("Delete"),
//                       ),
//                       const PopupMenuItem(
//                         value: 7,
//                         child: Text("Help and feedback"),
//                       ),
//                     ]),
//           ],
//         ),
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(height: 14),
//             const Center(
//               child: CircleAvatar(
//                 radius: 50,
//                 backgroundImage: AssetImage("assets/shahidAliLeghari.jpeg"),
//               ),
//             ),
//             Center(
//                 child: Text(
//               newContactList.name,
//               style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold),
//             )),
//             const SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 listOfItems(Icons.phone, "Call"),
//                 listOfItems(Icons.comment_rounded, "Text"),
//                 listOfItems(Icons.video_camera_back, "Set Up"),
//               ],
//             ),
//             const SizedBox(height: 10),
//             Card(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Padding(
//                     padding: EdgeInsets.only(
//                         left: 20.0, right: 8, bottom: 2, top: 4),
//                     child: Text(
//                       "Contact details",
//                       style: TextStyle(fontSize: 24),
//                     ),
//                   ),
//                   ListTile(
//                     leading: const Icon(Icons.phone),
//                     title: Text(newContactList.contact),
//                     subtitle: const Text("Phone"),
//                     trailing: const Icon(Icons.comment_rounded),
//                   )
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             const Card(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(
//                         left: 20.0, right: 8, bottom: 2, top: 4),
//                     child: Text(
//                       "Connected apps",
//                       style: TextStyle(fontSize: 24),
//                     ),
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.phone),
//                   )
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             const Divider(
//               thickness: 2,
//               color: Colors.white,
//             ),
//             const Padding(
//               padding: EdgeInsets.all(4.0),
//               child: Text(
//                 "\t\tContact settings",
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold),
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.all(4.0),
//               child: Row(
//                 children: [
//                   Icon(
//                     Icons.check,
//                     size: 30,
//                     color: Colors.white,
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Text(
//                     "Reminders",
//                     style: TextStyle(color: Colors.white, fontSize: 20),
//                   )
//                 ],
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.all(4.0),
//               child: Row(
//                 children: [
//                   Icon(
//                     Icons.check,
//                     size: 30,
//                     color: Colors.white,
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Text(
//                     "Reminders",
//                     style: TextStyle(color: Colors.white, fontSize: 20),
//                   )
//                 ],
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.all(4.0),
//               child: Row(
//                 children: [
//                   Icon(
//                     Icons.check,
//                     size: 30,
//                     color: Colors.white,
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Text(
//                     "Reminders",
//                     style: TextStyle(color: Colors.white, fontSize: 20),
//                   )
//                 ],
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.all(4.0),
//               child: Row(
//                 children: [
//                   Icon(
//                     Icons.check,
//                     size: 30,
//                     color: Colors.white,
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   Text(
//                     "Reminders",
//                     style: TextStyle(color: Colors.white, fontSize: 20),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ));
//   }
//
//   Widget listOfItems(IconData icon, String title) {
//     return Row(
//       children: [
//         Column(
//           children: [
//             Icon(
//               icon,
//               color: Colors.white70,
//               size: 30,
//             ),
//             const SizedBox(
//               height: 4,
//             ),
//             Text(
//               title,
//               style: const TextStyle(
//                 fontSize: 18,
//               ),
//             )
//           ],
//         ),
//       ],
//     );
//   }
// }
import 'package:contactapp/ContactList/ContactProvider.dart';
import 'package:contactapp/ContactList/DBHelper.dart';
import 'package:contactapp/ContactList/EditContact.dart';
import 'package:contactapp/Pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ContactModel.dart'; // Import your ContactModel file

class ContactDetails extends StatefulWidget {
  final ContactModel contactList;
  // final TodoDatabase database;
  const ContactDetails({super.key, required this.contactList});

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  @override
  Widget build(BuildContext context) {
    final newContactList = widget.contactList;
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 34,
          ),
        ),
        backgroundColor: Colors.blueGrey,
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            EditContactPage(contact: newContactList)));
              },
              child: const Icon(Icons.edit, color: Colors.white, size: 34)),
          const SizedBox(width: 14),
          const Icon(Icons.star_rate, color: Colors.white, size: 34),
          const SizedBox(width: 14),
          PopupMenuButton<int>(
            onSelected: (value) {
              if (value == 6) {
                // Remove the specific contact
                context.read<ContactProvider>().removeContact(newContactList);
                Navigator.pop(context); // Navigate back to the previous screen
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 1,
                child: Text("Share"),
              ),
              const PopupMenuItem(
                value: 2,
                child: Text("Set calling SIM"),
              ),
              const PopupMenuItem(
                value: 3,
                child: Text("Set ringtone"),
              ),
              const PopupMenuItem(
                value: 4,
                child: Text("Add to home screen"),
              ),
              const PopupMenuItem(
                value: 5,
                child: Text("Move to another account"),
              ),
              const PopupMenuItem(
                value: 6,
                child: Text("Delete"),
              ),
              const PopupMenuItem(
                value: 7,
                child: Text("Help and feedback"),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 14),
          const Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/shahidAliLeghari.jpeg"),
            ),
          ),
          Center(
              child: Text(
            newContactList.name,
            style: const TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          )),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              listOfItems(Icons.phone, "Call"),
              listOfItems(Icons.comment_rounded, "Text"),
              listOfItems(Icons.video_camera_back, "Set Up"),
            ],
          ),
          const SizedBox(height: 10),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding:
                      EdgeInsets.only(left: 20.0, right: 8, bottom: 2, top: 4),
                  child: Text(
                    "Contact details",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.phone),
                  title: Text(newContactList.contact),
                  subtitle: const Text("Phone"),
                  trailing: const Icon(Icons.comment_rounded),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget listOfItems(IconData icon, String title) {
    return Row(
      children: [
        Column(
          children: [
            Icon(
              icon,
              color: Colors.white70,
              size: 30,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ],
    );
  }
}
