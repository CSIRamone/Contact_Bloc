import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/contact_register_bloc.dart';

class ContactRegisterPage extends StatefulWidget {
  const ContactRegisterPage({super.key});

  @override
  State<ContactRegisterPage> createState() => _ContactRegisterPageState();
}

class _ContactRegisterPageState extends State<ContactRegisterPage> {

  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
 

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
   
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: 'Nome'),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'O Nome tem que ser preenchido';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'O email tem que ser preenchido';
                    }
                    return null;
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  log('Button salvar pressed');
                  final validate = _formKey.currentState?.validate() ?? false;
                  if (validate) {
                    log('Registering contact: ${_nameController.text}, ${_emailController.text}');
                    context
                        .read<ContactRegisterBloc>()
                        .add(ContactRegisterEvent.register(
                          name: _nameController.text,
                          email: _emailController.text,
                        ));
                  }
                },
                child: const Text('Salvar'),
              ),
            ],
          )),
    );
  }
}
