import 'dart:async';
import 'package:flutter/material.dart';

class PaginatedCommand<T> extends ChangeNotifier {
  PaginatedCommand(
    this._action, {
    this.debounceDuration = const Duration(milliseconds: 300),
    this.pageSize = 20,
  });

  /// Action that fetches items.
  /// Accepts: offset, limit, and optional search text.
  final Future<List<T>> Function(int offset, int limit, String? searchText)
  _action;

  final Duration debounceDuration;
  final int pageSize;

  Exception? _error;

  Exception? get error => _error;

  bool _completed = false;

  bool get completed => _completed;

  int _offset = 0;

  int get offset => _offset;

  bool _hasMore = true;

  bool get hasMore => _hasMore;

  String? _searchText;

  String? get searchText => _searchText;

  final List<T> _items = [];

  List<T> get items => List.unmodifiable(_items);

  Future<void>? _inFlightRequest;
  Timer? _debounceTimer;

  /// Derived loading state
  bool get isLoading => _inFlightRequest != null;

  /// Loads the next batch of items (debounced).
  Future<void> loadNextPage({String? search}) {
    // If search text changed → reset first
    if (search != null && search != _searchText) {
      _searchText = search;
      refresh();
    }

    // no more data
    if (!_hasMore) return Future.value();

    // if already loading → return same future
    if (_inFlightRequest != null) return _inFlightRequest!;

    // cancel any scheduled execution
    _debounceTimer?.cancel();

    final completer = Completer<void>();

    _debounceTimer = Timer(debounceDuration, () {
      _error = null;
      notifyListeners(); // update UI with isLoading

      final future = _action(_offset, pageSize, _searchText)
          .then((newItems) {
            if (newItems.isEmpty) {
              _hasMore = false;
            } else {
              _items.addAll(newItems);
              _offset += newItems.length; // increase offset
            }
            if (newItems.length < pageSize) _hasMore = false;
            _completed = true;
            completer.complete();
            notifyListeners();
          })
          .catchError((err,st) {
            print("got issues $err $st");
            if (err is Exception) {
              _error = err;
            } else {
              _error = Exception(err.toString());
            }
            completer.completeError(_error!);
          })
          .whenComplete(() {
            _inFlightRequest = null;
            notifyListeners(); // update UI after fetch finishes
          });

      _inFlightRequest = future;
    });

    return completer.future;
  }

  void refresh() {
    _debounceTimer?.cancel();
    _error = null;
    _completed = false;
    _offset = 0;
    _hasMore = true;
    _items.clear();
    _inFlightRequest = null;
    notifyListeners();
  }
}
