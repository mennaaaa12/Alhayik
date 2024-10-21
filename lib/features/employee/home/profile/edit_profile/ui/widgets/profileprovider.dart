import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'InputTextField.dart'; // Adjust your import paths accordingly.

class Profile extends ChangeNotifier {
  final picker = ImagePicker();
  File? _image;
  File? get image => _image;

  final nameController = TextEditingController();
  final bioController = TextEditingController();
  final emailController = TextEditingController();

  final nameFocusNode = FocusNode();
  final phoneFocusNode = FocusNode();

  Future<void> pickImage(BuildContext context, ImageSource source) async {
    final pickedFile = await picker.pickImage(source: source, imageQuality: 100);
    if (pickedFile != null) {
      _image = File(pickedFile.path);
      notifyListeners(); // Notify listeners about the new image.
    }
  }

  Future<void> showImagePickerDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: SizedBox(
            height: 120,
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.camera, color: Colors.black),
                  title: const Text('Camera'),
                  onTap: () async {
                    Navigator.pop(context); // Close the dialog first.
                    await pickImage(context, ImageSource.camera);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.image, color: Colors.black),
                  title: const Text('Gallery'),
                  onTap: () async {
                    Navigator.pop(context);
                    await pickImage(context, ImageSource.gallery);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> showUserNameDialog(BuildContext context, String currentName) {
    nameController.text = currentName;
    String errorMessage = '';

    return showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: const Center(child: Text('تعديل الاسم')),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InputTextField(
                    myController: nameController,
                    keyBoardType: TextInputType.text,
                    obscureText: false,
                    hint: '',
                    enable: true,
                    autoFocus: false,
                  ),
                  if (errorMessage.isNotEmpty)
                    Text(
                      errorMessage,
                      style: const TextStyle(color: Colors.red),
                    ),
                ],
              ),
              actions: [
                Center(
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.red,
                    ),
                    child: const Text('الغاء'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.blue,
                  ),
                  child: const Text('تم'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  // Example usage of other dialogs (like bio, email, and password) follows the same pattern.

  @override
  void dispose() {
    nameController.dispose();
    bioController.dispose();
    emailController.dispose();
    nameFocusNode.dispose();
    phoneFocusNode.dispose();
    super.dispose();
  }
}
