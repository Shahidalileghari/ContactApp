import 'package:flutter/material.dart';

class Organise extends StatefulWidget {
  const Organise({super.key});

  @override
  State<Organise> createState() => _OrganiseState();
}

class _OrganiseState extends State<Organise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _searchField(),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Google",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              const SizedBox(
                height: 25,
              ),
              _listOfItems("Merge and fix", "Easy way to fix up your contacts",
                  Icons.auto_fix_high_sharp),
              _listOfItems(
                  "Reminders",
                  "Manage reminders for significant dates for your contacts",
                  Icons.notification_add_outlined),
              _listOfItems(
                  "Family group",
                  "Share family features or set parental controls",
                  Icons.family_restroom),
              _listOfItems("Restore contacts",
                  "Contacts backup from your Android devices", Icons.restore),
              _listOfItems("Bin", "Recently deleted Google Accounts contacts",
                  Icons.recycling),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 2,
                color: Colors.white,
              ),
              const Text(
                "This device",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              const SizedBox(
                height: 20,
              ),
              _listOfItems(
                  "Contacts ringtones",
                  "Set ringtones for specific contacts",
                  Icons.ring_volume_sharp),
              _listOfItems("Manage SIM", "Import or delete contacts from SIM",
                  Icons.sim_card),
              const ListTile(
                title: Text(
                  "Import from file",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                leading: Icon(
                  Icons.import_contacts_sharp,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              const ListTile(
                title: Text(
                  "Export to file",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                leading: Icon(
                  Icons.import_export,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              _listOfItems(
                  "Blocked numbers",
                  "Numbers that you won\'t receive calls or texts from",
                  Icons.block),
              const ListTile(
                title: Text(
                  "Settings",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding _searchField() {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white30,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 8, bottom: 8),
                  child: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "\t\tSearch Contact",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
            Row(
              children: [
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

  Widget _listOfItems(String title, String subtitle, IconData icon) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(color: Colors.white, fontSize: 14),
      ),
      leading: Icon(
        icon,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}
