import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  var nameValidationError = ''.obs;
  var emailValidationError = ''.obs;
  var messageValidationError = ''.obs;

  String? validateName(String value) {
    if (value.isEmpty || !RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
      nameValidationError.value = 'Enter a valid name';
      return 'Enter a valid name';
    } else {
      nameValidationError.value = '';
      return '';
    }
  }

  String? validateEmail(String value) {
    if (value.isEmpty || !RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(value)) {
      emailValidationError.value = 'Enter a valid email';
      return 'Enter a valid email';
    } else {
      emailValidationError.value = '';
      return '';
    }
  }

 String validateMessage(String value) {
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

  void submitForm() {

  }
}
