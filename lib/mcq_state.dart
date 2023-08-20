import 'package:flutter/material.dart';

class SelectedOptionsProvider with ChangeNotifier {
  final Map<String, int?> _selectedOptions = {};

  int? getOption(String questionId) => _selectedOptions[questionId];

  void setOption(String questionId, int? option) {
    _selectedOptions[questionId] = option;
    notifyListeners(); // Notify listeners of the change
  }

  List<MapEntry<String, int?>> getSelectedQuestionsList() {
    return _selectedOptions.entries
        .where((entry) => entry.value != null)
        .toList();
  }
}
