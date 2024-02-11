import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ravilakhtariya/Utils/Components/error_snackbar_widget.dart';
import 'package:ravilakhtariya/Utils/launch_custom_url.dart';

class ContactUsController extends GetxController {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  sendMessageBtn() {
    try {
      final Uri params = Uri(
        scheme: 'mailto',
        path: 'ravilakhtariya07@gmail.com',
        query:
        'subject=${subjectController.text}&body=Hello ${nameController.text},\n${messageController.text}', //add subject and body here
      );

      LaunchCustomURL.launchURL(params.toString());
    } catch (e) {
      showError(e.toString());
    }

    update();
  }

  clearText() {
    nameController.clear();
    emailController.clear();
    subjectController.clear();
    messageController.clear();
  }

  checkValidation() {
    if(formKey.currentState?.validate() ?? false) {
      return true;
    }
    return false;
  }

}