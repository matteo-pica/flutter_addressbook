import 'package:flutter/material.dart';
import 'package:rubrica/contactlist/modal/contact.dart';

class ContactListItem extends StatelessWidget {
  final ContactModal _contactModal;

  ContactListItem(this._contactModal);

  @override
  Widget build(BuildContext context) {
    return new ListTile(  
        leading: new CircleAvatar(child: new Text(_contactModal.initials())),
        title: new Text(_contactModal.fullName),
        subtitle: new Text(_contactModal.number));
  }
}
