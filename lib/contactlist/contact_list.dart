import 'package:flutter/material.dart';
import 'package:rubrica/contactlist/contact_list_item.dart';
import 'package:rubrica/contactlist/modal/contact.dart';
import '_contactModal.dart';

class ContactsList extends StatefulWidget {
  @override
  ContactsListState createState() => ContactsListState();
}

class ContactsListState extends State<ContactsList> {
  List<ContactModal> _contactModal;
  static List<ContactModal> filteredList;
  ContactsListState() {
    //Initialize here the total list and the filtered list
    // The total list is built with a factory class to create a Singleton istance of the class. 
    // For privacy reason the real _contactModal.dart isn't added to repository but you can see the structure within fake_contact_modal.dart
    AddressBook addressBook = AddressBook();
    _contactModal = addressBook.contactList;
    filteredList = _contactModal;
  }
  String filter;
  void filtraElenco(String insertedString) {
    print("filtrato:$insertedString");
    setState(() {
      filteredList = _contactModal
          .where((l) => l.fullName.toLowerCase().contains(insertedString))
          .toList();
    });
  }

  void test() {
    final List<ContactModal> _contactProva = <ContactModal>[
      ContactModal(fullName: 'BAldo Rug', number: '118'),
      ContactModal(fullName: 'Enealdo Gal', number: '119'),
      ContactModal(fullName: 'Nishant Srivastava', number: '130'),
      ContactModal(
          fullName: 'Romain Hoogmoed', number: 'romain.hoogmoed@example.com'),
      ContactModal(
          fullName: 'Emilie Olsen', number: 'emilie.olsen@example.com'),
      ContactModal(
          fullName: 'Nishant Srivastava',
          number: 'nishant.srivastava@example.com'),
      ContactModal(
          fullName: 'Romain Hoogmoed', number: 'romain.hoogmoed@example.com'),
      ContactModal(
          fullName: 'Emilie Olsen', number: 'emilie.olsen@example.com'),
      ContactModal(
          fullName: 'Nishant Srivastava',
          number: 'nishant.srivastava@example.com'),
    ];
    //print(_contactProva); // [Perl, Python, Dart]
    String contained = "aldo";

    List short = _contactProva
        .where((l) => l.fullName.toLowerCase().contains(contained))
        .toList();
    print("STAMPA DELLA LISTA!!:::");
    short.forEach((element) => print(element.fullName)); // [Perl, Dart]
  }

  @override
  Widget build(BuildContext context) {
    //test();
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none, hintText: 'Inserire la ricerca'),
            onChanged: filtraElenco,
          ),
        ),
        Expanded(
          child: ListView(
            padding: new EdgeInsets.symmetric(vertical: 8.0),
            children: _buildContactsList(),
          ),
        ),
      ],
    );
  }

  List<ContactListItem> _buildContactsList() {
    return filteredList.map((contact) => new ContactListItem(contact)).toList();
  }
}
