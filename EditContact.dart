import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ContactModel.dart';
import 'ContactProvider.dart';

class EditContactPage extends StatefulWidget {
  final ContactModel contact;

  const EditContactPage({super.key, required this.contact});

  @override
  _EditContactPageState createState() => _EditContactPageState();
}

class _EditContactPageState extends State<EditContactPage> {
  late TextEditingController _nameController;
  late TextEditingController _contactController;

  @override
  void initState() {
    super.initState();
    // Initialize the controllers with current contact data
    _nameController = TextEditingController(text: widget.contact.name);
    _contactController = TextEditingController(text: widget.contact.contact);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _contactController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("Edit Contact"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Name"),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _contactController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Contact Number"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Create a new ContactModel with updated details
                ContactModel updatedContact = ContactModel(
                  name: _nameController.text,
                  contact: _contactController.text,
                );

                // Call the update method from the provider
                context.read<ContactProvider>().editContact(updatedContact);

                // Return to the previous screen
                Navigator.pop(context);
              },
              child: const Text("Update Contact"),
            ),
          ],
        ),
      ),
    );
  }
}
