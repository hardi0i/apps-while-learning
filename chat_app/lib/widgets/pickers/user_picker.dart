import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class UserImagePicker extends StatefulWidget {
  const UserImagePicker({
    super.key,
    required this.imagePick,
  });
  final void Function(File pickedImage) imagePick;

  @override
  State<UserImagePicker> createState() => _UserImagePickerState();
}

class _UserImagePickerState extends State<UserImagePicker> {
  File? _pickerdImage;

  void _pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(
      source: Platform.isIOS ? ImageSource.gallery : ImageSource.camera,
      imageQuality: 50,
      maxWidth: 150,
    );

    setState(
      () {
        _pickerdImage = File(pickedImage!.path);
      },
    );
    widget.imagePick(_pickerdImage!);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 45,
          backgroundColor: Colors.grey[300],
          backgroundImage:
              _pickerdImage != null ? FileImage(_pickerdImage!) : null,
        ),
        TextButton.icon(
          label: Text(
            'Add Image',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
          ),
          icon: const Icon(
            Icons.image,
          ),
          onPressed: _pickImage,
        ),
      ],
    );
  }
}
