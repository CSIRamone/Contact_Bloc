import 'dart:developer';

import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'contact_register_list_cubit_state.dart';
part 'contact_register_list_cubit.freezed.dart';

class ContactRegisterListCubit extends Cubit<ContactRegisterListCubitState> {
  final  ContactsRepository _contactsRepository;
  ContactRegisterListCubit({required ContactsRepository repository}) :
  _contactsRepository = repository,
   super(ContactRegisterListCubitState.initial());
   

  Future<void> addRegister(ContactModel contact) async {
    emit(ContactRegisterListCubitState.loading());

    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    try {
      final contactsModel = ContactModel(
        name: contact.name,
        email: contact.email,
      );
      // Assuming _contactsRepository has a method to add a contact
      await _contactsRepository.create(contactsModel);
      emit(ContactRegisterListCubitState.success());
    } catch (e, s) {
      log('Error adding contact: ${e.toString()}', error: e, stackTrace: s);
      emit(ContactRegisterListCubitState.error(message: 'Failed to add contact: ${e.toString()}, ${s.toString()}'));
    }
  
  }
}