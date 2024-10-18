import 'package:contactapp/ContactList/AddContactNumber.dart';
import 'package:flutter/material.dart';

import '../ContactList/ContactList.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          _searchField(),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Container(
              color: Colors.black,
              width: double.infinity,
              height: 60,
              child: const Row(
                children: [
                  Icon(
                    Icons.emergency_outlined,
                    color: Colors.white,
                    size: 34,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Emergency number",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Divider(
              color: Colors.white70,
              thickness: 2,
            ),
          ),
          //calling contact list to show all the contact with names
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: ContactList(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AddContactNumber()));
        },
        child: const Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }

  Padding _searchField() {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white30,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Search Contact",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.more_vert_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 14,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/shahidAliLeghari.jpeg"),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryIcons extends StatelessWidget {
  final IconData iconData;
  final String label;
  const CategoryIcons({super.key, required this.iconData, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(
            iconData,
            size: 20,
            color: Colors.black,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            label,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
