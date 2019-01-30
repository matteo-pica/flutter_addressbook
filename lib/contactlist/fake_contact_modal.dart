import 'package:rubrica/contactlist/modal/contact.dart';

class AddressBook {
  static final AddressBook _singleton = new AddressBook._internal();
  List<ContactModal> contactList = <ContactModal>[
    ContactModal(fullName: "RECEPTION", number: "100"),
    //... Add Here the Addresses List
 
  ];
  int t;
  factory AddressBook() {
    return _singleton;
  }

  AddressBook._internal();
}
