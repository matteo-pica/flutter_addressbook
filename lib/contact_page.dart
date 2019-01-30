import 'package:flutter/material.dart';
import 'package:rubrica/contactlist/contact_list.dart';
//import 'package:rubrica/contactlist/modal/contact.dart';

class ContactPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(body:  ContactsList(),
    resizeToAvoidBottomPadding: false,);
  }
}
