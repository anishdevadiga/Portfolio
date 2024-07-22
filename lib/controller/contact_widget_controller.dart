import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactController extends GetxController {
  var nameController = TextEditingController();
  var nameValidationError = ''.obs;

  String validateName(String value) {
    if (value.isEmpty) {
      return 'Name cannot be empty';
    } else if (value.length < 3) {
      return 'Name must be at least 3 characters long';
    } else {
      return '';
    }
  }

  void onNameChanged(String value) {
    nameValidationError.value = validateName(value);
  }
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  var emailValidationError = ''.obs;
  var messageValidationError = ''.obs;



 String? validateEmail(String value) {
    if (value.isEmpty || !RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(value)) {
      emailValidationError.value = 'Enter a valid email';
      return 'Enter a valid email';
    } else {
      emailValidationError.value = '';
      return '';
    }
  }

 String? validateMessage(String value) {
    if (value.length < 5 || value.startsWith(RegExp(r'^[\s.!@#\$&*~^]+'))) {
      messageValidationError.value = 'Enter a valid message';
      return 'Enter a valid message';
    } else {
      messageValidationError.value = '';
      return '';
    }
  }

  bool isFormValid() {
    return nameValidationError.value.isEmpty && emailValidationError.value.isEmpty && messageValidationError.value.isEmpty;
  }

}
