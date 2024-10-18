import 'package:contactapp/ContactList/ContactModel.dart';
import 'package:contactapp/ContactList/ContactProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddContactNumber extends StatefulWidget {
  const AddContactNumber({super.key});

  @override
  State<AddContactNumber> createState() => _AddContactNumberState();
}

class _AddContactNumberState extends State<AddContactNumber> {
  final name = TextEditingController();
  final contactNumber = TextEditingController();

  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.black87,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.dangerous,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  "Create contact",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    if (_key.currentState!.validate()) {
                      final newContactList = ContactModel(
                          contact: contactNumber.text, name: name.text);
                      context
                          .read<ContactProvider>()
                          .addContact(newContactList);
                      Navigator.pop(context);
                    }
                  },
                  child: Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)),
                    child: const Center(
                        child: Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                const Icon(
                  Icons.more_vert_outlined,
                  color: Colors.white,
                )
              ],
            )
          ],
        ),
      ),
      body: Form(
          key: _key,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8, top: 30),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: name,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Fill it";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(16),
                      label: Text(
                        "Enter name",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: contactNumber,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Fill it";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                        label: Text(
                          "Enter contact",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
