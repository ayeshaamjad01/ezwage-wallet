import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';

class ContactsPageTest extends StatefulWidget {
  const ContactsPageTest({Key? key}) : super(key: key);

  @override
  State<ContactsPageTest> createState() => _ContactsPageTestState();
}

class _ContactsPageTestState extends State<ContactsPageTest> {
  List<Contact> _contacts  = [];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _fetchContacts();
  }

  Future<void> _fetchContacts() async {
    if (await FlutterContacts.requestPermission()) {
      // Fetch contacts with phones
      final contacts = await FlutterContacts.getContacts(
        withProperties: true,
      );
      setState(() {
        _contacts = contacts;
        _loading = false;
      });
    } else {
      setState(() => _loading = false);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Permission denied to read contacts")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Contacts")),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : _contacts.isEmpty
          ? const Center(child: Text("No contacts found"))
          : ListView.builder(
        itemCount: _contacts.length,
        itemBuilder: (context, index) {
          final contact = _contacts[index];
          return ListTile(
            leading: CircleAvatar(
              child: Text(
                contact.displayName.isNotEmpty
                    ? contact.displayName[0]
                    : "?",
              ),
            ),
            title: Text(contact.displayName),
            subtitle: Text(
              contact.phones.isNotEmpty
                  ? contact.phones.first.number
                  : "No phone number",
            ),
          );
        },
      ),
    );
  }
}
