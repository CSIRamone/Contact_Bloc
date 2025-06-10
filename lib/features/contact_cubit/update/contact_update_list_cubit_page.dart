import 'dart:developer';

import 'package:contact_bloc/features/contact_cubit/register/cubit/contact_register_list_cubit.dart';
import 'package:contact_bloc/features/contact_cubit/update/cubit/contact_update_list_cubit.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/widgets/loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactUpdateListCubitPage extends StatefulWidget {
  final ContactModel contact;
  const ContactUpdateListCubitPage({super.key, required this.contact});

  @override
  State<ContactUpdateListCubitPage> createState() =>
      _ContactUpdateListCubitPageState();
}

class _ContactUpdateListCubitPageState
    extends State<ContactUpdateListCubitPage> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _nameController;
  late TextEditingController _emailController;

  @override
  void initState() {
    _nameController = TextEditingController(text: widget.contact.name);
    _emailController = TextEditingController(text: widget.contact.email);
    super.initState();
  }

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
        title: const Text('Update Contact'),
      ),
      body: BlocListener<ContactUpdateListCubit, ContactUpdateListCubitState>(
        listenWhen: (previous, current) => current.maybeWhen(
          error: (_) => true,
          success: () => true,
          orElse: () => false,
        ),
        listener: (context, state) {
          state.whenOrNull(
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message,
                      style: const TextStyle(color: Colors.white)),
                  backgroundColor: Colors.red,
                ),
              );
            },
            success: () {
              log('Contact updated successfully');
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Contato atualizado com sucesso',
                      style: const TextStyle(color: Colors.white)),
                  backgroundColor: Colors.green,
                ),
              );
            },
          );
        },
        child: Center(
          child: Card(
            margin: const EdgeInsets.all(16.0),
            elevation: 4.0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      controller: _nameController,
                      decoration: const InputDecoration(labelText: 'Name'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a name';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(labelText: 'Email'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter an email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          // Call the update method here
                          await context
                              .read<ContactUpdateListCubit>()
                              .updateContact(
                                ContactModel(
                                  id: widget.contact.id!,
                                  name: _nameController.text,
                                  email: _emailController.text,
                                ),
                              );
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Contact updated successfully'),
                              backgroundColor: Colors.green,
                            ),
                          );
                        }
                      },
                      child: const Text('Update Contact'),
                    ),
                    Loader<ContactUpdateListCubit, ContactUpdateListCubitState>(
                  selector: (state) {
                    return state.maybeWhen(
                      loading: () => true,
                      orElse: () => false,
                    );
                  },

                ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
