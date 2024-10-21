import 'dart:io';
import 'package:alhayik/features/employee/home/profile/edit_profile/ui/widgets/InputTextField.dart';
import 'package:alhayik/features/employee/home/profile/edit_profile/ui/widgets/ReusableTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart'; // Add Image Picker package
import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/widgets/app_bar_screens.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  File? _profileImage;

  // Method to pick image using ImagePicker
  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _profileImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AppBaScreens(
                showBackButton: true,
                txt: 'Al-haik Al-Arabi',
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 5.h),
                child: const Divider(
                  color: MyColor.lightgrey,
                  thickness: 1.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h),
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 13),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                if (_profileImage != null) {
                                  // Show full-screen image
                                }
                              },
                              child: Container(
                                height: 130.h,
                                width: 130.h,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.black),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: _profileImage != null
                                      ? Image.file(
                                          _profileImage!,
                                          fit: BoxFit.cover,
                                        )
                                      : const Icon(Icons.person, size: 35),
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: _pickImage,
                          child: CircleAvatar(
                            radius: 14.r,
                            backgroundColor: Colors.black,
                            child: const Icon(
                              Icons.add,
                              size: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Center(
                      child: Text(
                        'alhaikalarabi@gmail.com',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 40.h),
                    GestureDetector(
                      onTap: () {
                        showUserName(context);
                      },
                      child: const ReusableTile(
                        title: 'user name',
                        value: 'Al-haik Al-Arabi',
                        iconData: Icons.person_outlined,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showPassword(context);
                      },
                      child: const ReusableTile(
                        title: 'password',
                        value: 'xxxxxxxxx',
                        iconData: Icons.password_outlined,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> showUserName(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Center(child: Text('تعديل الاسم')),
        content: const SingleChildScrollView(
          child: Column(
            children: [
              InputTextField(
                keyBoardType: TextInputType.text,
                obscureText: false,
                hint: '',
                enable: true, // Add this parameter
                autoFocus: false, // Add this parameter
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ButtonStyle(
              foregroundColor: WidgetStateProperty.all<Color>(Colors.red),
            ),
            child: const Text('الغاء'),
          ),
        ],
      );
    },
  );
}

Future<void> showPassword(BuildContext context) async {
  bool obscureText = true;

  return showDialog(
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.text,
                    obscureText: obscureText, // Use obscureText property
                    decoration: InputDecoration(
                      hintText: 'كلمة السر القديمه',
                      suffixIcon: IconButton(
                        icon: Icon(
                          obscureText ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText; // Toggle visibility
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  TextField(
                    keyboardType: TextInputType.text,
                    obscureText: obscureText, // Use obscureText property
                    decoration: InputDecoration(
                      hintText: 'كلمة السر الجديدة',
                      suffixIcon: IconButton(
                        icon: Icon(
                          obscureText ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText; // Toggle visibility
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  TextField(
                    keyboardType: TextInputType.text,
                    obscureText: obscureText, // Use obscureText property
                    decoration: InputDecoration(
                      hintText: 'تأكيد كلمة السر',
                      suffixIcon: IconButton(
                        icon: Icon(
                          obscureText ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText; // Toggle visibility
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                  foregroundColor: WidgetStateProperty.all<Color>(Colors.red),
                ),
                child: const Text('الغاء'),
              ),
            ],
          );
        },
      );
    },
  );
}
