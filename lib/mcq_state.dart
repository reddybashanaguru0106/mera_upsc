import 'package:flutter/material.dart';

class SelectedOption {
  int? selectedOption;
  Map<String, dynamic> question;

  SelectedOption(this.selectedOption, this.question);
}

class SelectedOptionsProvider with ChangeNotifier {
  final Map<String, SelectedOption> _selectedOptions = {};

  int? getOption(String questionId) =>
      _selectedOptions[questionId]?.selectedOption;

  void setOptionQuestion(
      String questionId, int? option, Map<String, dynamic> question) {
    _selectedOptions[questionId] = SelectedOption(option, question);
    notifyListeners(); // Notify listeners of the change
  }

  List<Map<String, dynamic>> getSelectedQuestionsList() {
    return _selectedOptions.entries
        .where((entry) => entry.value.selectedOption != null)
        .map((entry) {
      final questionId = entry.key;
      final selectedOption = entry.value.selectedOption;
      final question = entry.value.question;

      return {
        'questionId': questionId,
        'selectedOption': selectedOption,
        'question': question,
      };
    }).toList();
  }
}
