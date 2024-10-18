import 'package:contactapp/ContactList/ContactModel.dart';
import 'package:flutter/foundation.dart';

class ContactProvider with ChangeNotifier {
  List<ContactModel> contactList = [];
  List<ContactModel> get _contactList => contactList;

  void addContact(ContactModel contact) {
    contactList.add(contact);
    notifyListeners();
  }

  void removeContact(ContactModel contact) {
    contactList.remove(contact);
    notifyListeners();
  }

  void editContact(ContactModel contact) {
    int index =
        contactList.indexWhere((contact) => contact.name == contact.name);
    if (index != -1) {
      contactList[index] = contact;

      notifyListeners();
    }
  }
}
