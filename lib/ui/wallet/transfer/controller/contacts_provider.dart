import 'package:flutter/foundation.dart';
import 'package:flutter_contacts/flutter_contacts.dart';

class ContactsProvider extends ChangeNotifier {
  List<Contact> _allContacts = [];     // full list
  List<Contact> _filteredContacts = []; // filtered list for UI
  bool _loading = true;

  List<Contact> get contacts => _filteredContacts;
  bool get loading => _loading;

  ContactsProvider() {
    fetchContacts();
  }

  Future<void> fetchContacts() async {
    _loading = true;
    notifyListeners();

    if (await FlutterContacts.requestPermission()) {
      final contacts = await FlutterContacts.getContacts(
        withProperties: true,
      );
      _allContacts = contacts;
      _filteredContacts = contacts; // initially show all
    } else {
      _allContacts = [];
      _filteredContacts = [];
    }

    _loading = false;
    notifyListeners();
  }

  /// 🔎 Search contacts
  void searchContacts(String query) {
    if (query.isEmpty) {
      _filteredContacts = _allContacts;
    } else {
      _filteredContacts = _allContacts.where((c) {
        final name = c.displayName.toLowerCase();
        final phone = c.phones.isNotEmpty ? c.phones.first.number.toLowerCase() : "";
        final searchQuery = query.toLowerCase();
        return name.contains(searchQuery) || phone.contains(searchQuery);
      }).toList();
    }
    notifyListeners();
  }
}
