import 'package:flutter/material.dart';
import 'package:contacts_service/contacts_service.dart';

class ContactLatihan extends StatefulWidget {
  const ContactLatihan({Key? key}) : super(key: key);

  @override
  State<ContactLatihan> createState() => _ContactLatihanState();
}

class _ContactLatihanState extends State<ContactLatihan> {
  Iterable<Contact> _contacts = [];

  @override
  void initState() {
    super.initState();
    getContacts();
  }

  Future<void> getContacts() async {
    Iterable<Contact> contacts = await ContactsService.getContacts();
    setState(() {
      _contacts = contacts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Kontak'),
      ),
      body: _contacts != null
          ? ListView.builder(
              itemCount: _contacts.length,
              itemBuilder: (context, index) {
                Contact contact = _contacts.elementAt(index);
                return ListTile(
                  title: Text(contact.displayName ?? ''),
                  subtitle: Text(contact.phones?.isNotEmpty == true
                      ? contact.phones!.elementAt(0).value ?? 'No phone number'
                      : 'No phone number'),
                );
              },
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
