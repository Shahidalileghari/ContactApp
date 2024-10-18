class ContactModel {
  final String contact;
  int? id;
  final String name;

  ContactModel({required this.contact, required this.name, this.id});
  toMap() {
    return {'name': name, 'contact': contact, id: 'id'};
  }

  factory ContactModel.from(Map map) {
    return ContactModel(
        contact: map["contact"], name: map['name'], id: map['id']);
  }
}
