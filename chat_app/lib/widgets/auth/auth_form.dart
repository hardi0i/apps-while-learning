import 'dart:io';

import 'package:flutter/material.dart';

import '../pickers/user_picker.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({
    super.key,
    required this.submitFn,
    required this.isLoading,
  });

  final bool isLoading;
  final void Function({
    String email,
    String password,
    String username,
    bool isLogin,
    BuildContext ctx,
    File image,
  }) submitFn;

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  bool _isLogin = true;
  final _formKey = GlobalKey<FormState>();
  String _userEmail = '';
  String _userPassword = '';
  String _userName = '';
  File _userImageFile = File('');

  void _trySubmit() {
    final isValid = _formKey.currentState!.validate();
    FocusScope.of(context).unfocus();

    if (_userImageFile == null && !_isLogin) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text(
            'Please pick an image',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Theme.of(context).errorColor,
        ),
      );
      return;
    }

    if (isValid) {
      _formKey.currentState!.save();
      widget.submitFn(
        email: _userEmail.trim(),
        password: _userPassword.trim(),
        username: _userName.trim(),
        isLogin: _isLogin,
        ctx: context,
        image: _userImageFile,
      );
    }
  }

  void _pickedImage(File image) {
    _userImageFile = image;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(
          20.0,
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(
            16.0,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (!_isLogin)
                  UserImagePicker(
                    imagePick: _pickedImage,
                  ),
                TextFormField(
                  key: const ValueKey('email'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter email address.';
                    } else if (!value.contains('@')) {
                      return 'Please enter a valid email address.';
                    }
                    return null;
                  },
                  autocorrect: false,
                  textCapitalization: TextCapitalization.none,
                  enableSuggestions: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email adress',
                  ),
                  onSaved: (value) {
                    _userEmail = value!;
                  },
                ),
                if (!_isLogin)
                  TextFormField(
                    key: const ValueKey('username'),
                    autocorrect: true,
                    textCapitalization: TextCapitalization.words,
                    enableSuggestions: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter username.';
                      } else if (value.length < 4) {
                        return 'Please enter at least 4 characters.';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Username',
                    ),
                    onSaved: (value) {
                      _userName = value!;
                    },
                  ),
                TextFormField(
                  key: const ValueKey('password'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter password.';
                    } else if (value.length < 6) {
                      return 'Password must be at least 6 characters.';
                    }
                    return null;
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  ),
                  onSaved: (value) {
                    _userPassword = value!;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                if (widget.isLoading)
                  const CircularProgressIndicator()
                else
                  ElevatedButton(
                    onPressed: _trySubmit,
                    child: Text(
                      _isLogin ? 'Login' : 'Signup',
                    ),
                  ),
                TextButton(
                  child: Text(
                    _isLogin
                        ? 'Create new account'
                        : 'I already have an account',
                  ),
                  onPressed: () {
                    setState(() {
                      _isLogin = !_isLogin;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
