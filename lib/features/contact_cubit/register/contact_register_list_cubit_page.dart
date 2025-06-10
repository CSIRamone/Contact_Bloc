import 'dart:developer';

import 'package:contact_bloc/features/contact_cubit/register/cubit/contact_register_list_cubit.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/widgets/loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactRegisterListCubitPage extends StatefulWidget {

  const ContactRegisterListCubitPage({ super.key });

  @override
  State<ContactRegisterListCubitPage> createState() => _ContactRegisterListCubitPageState();
}

class _ContactRegisterListCubitPageState extends State<ContactRegisterListCubitPage> {

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
           appBar: AppBar(title: const Text('Inserir Registro'),),
           body: BlocListener<ContactRegisterListCubit, ContactRegisterListCubitState>(
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
              log('Contact registered successfully');
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Contato registrado com sucesso',
                      style: const TextStyle(color: Colors.white)),
                  backgroundColor: Colors.green,
                ),
              );
            },
          );
        },
             child: Form(
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
                          .read<ContactRegisterListCubit>().addRegister(  
                            ContactModel(
                              name: _nameController.text,
                              email: _emailController.text,
                            ),
                          );
                    }
                  },
                  child: const Text('Salvar'),
                ),
                Loader<ContactRegisterListCubit, ContactRegisterListCubitState>(
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
      
           
       );
  }
}