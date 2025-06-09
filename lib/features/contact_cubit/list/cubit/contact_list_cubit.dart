import 'dart:developer';

import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';



part 'contact_list_cubit_state.dart';

part 'contact_list_cubit.freezed.dart';

class ContactListCubit extends Cubit<ContactListCubitState> {

final ContactsRepository _contactRepository;

   ContactListCubit({required ContactsRepository repository}) 
   : _contactRepository = repository,
    super(ContactListCubitState.initial());
  // Define methods to handle events and update state
  void findAll() async {
    try {
  emit(ContactListCubitState.loading());
  final contacts = await _contactRepository.findAll();
  await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
  emit(ContactListCubitState.data(contacts: contacts));
}  catch (e, s) {
  log('Error fetching contacts: $e', error: e, stackTrace: s);
  emit(ContactListCubitState.error(message: 'Failed to fetch contacts'));
}
    

  }

  void addContact(ContactModel contact) {
    // Logic to add a contact and emit new state
  }

  void updateContact(ContactModel contact) {
    // Logic to update a contact and emit new state
  }

  void deleteContactByModel(ContactModel model) async {
    log('Deleting contact: ${model.name}');
    emit(ContactListCubitState.loading());
    // Simulate a delay for the delete operation
    //Future.delayed(const Duration(seconds: 1)); 
      // After the delay, emit the new state with the updated contact list
     await _contactRepository.delete(model);
     findAll(); // Refresh the contact list after deletion
    // Logic to delete a contact and emit new state
  }
}