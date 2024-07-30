import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactController extends GetxController {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var messageController = TextEditingController();

  var nameValidationError = ''.obs;
  var emailValidationError = ''.obs;
  var messageValidationError = ''.obs;

  String validateName(String value) {
    if (value.isEmpty) {
      return 'Name cannot be empty';
    } else if (value.length < 3) {
      return 'Name must be at least 3 characters long';
    } else {
      return '';
    }
  }

  String validateEmail(String value) {
    if (value.isEmpty || !RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(value)) {
      return 'Enter a valid email';
    } else {
      return '';
    }
  }

  String validateMessage(String value) {
    if (value.length < 5 || value.startsWith(RegExp(r'^[\s.!@#\$&*~^]+'))) {
      return 'Enter a valid message';
    } else {
      return '';
    }
  }

  void onNameChanged(String value) {
    nameValidationError.value = validateName(value);
  }

  void onEmailChanged(String value) {
    emailValidationError.value = validateEmail(value);
  }

  void onMessageChanged(String value) {
    messageValidationError.value = validateMessage(value);
  }

  bool isFormValid() {
    return nameValidationError.value.isEmpty && emailValidationError.value.isEmpty && messageValidationError.value.isEmpty;
  }

  void sendMessage() {
    onNameChanged(nameController.text);
    onEmailChanged(emailController.text);
    onMessageChanged(messageController.text);

    if (isFormValid()) {
      // Implement send action
      Get.snackbar('Success', 'Message sent successfully');
    } else {
      Get.snackbar('Error', 'Please correct the errors in the form');
    }
  }
}
