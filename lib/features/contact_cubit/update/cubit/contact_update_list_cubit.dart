import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_update_list_cubit_state.dart';
part 'contact_update_list_cubit.freezed.dart';

class ContactUpdateListCubit extends Cubit<ContactUpdateListCubitState> {
  final ContactsRepository _contactsRepository;

  ContactUpdateListCubit({required ContactsRepository repository})
      : _contactsRepository = repository,
        super(ContactUpdateListCubitState.initial());

  Future<void> updateContact(ContactModel contact) async {
    emit(ContactUpdateListCubitState.loading());

    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    try {
      final updatedContact = ContactModel(
        id: contact.id,
        name: contact.name,
        email: contact.email,
      );
      await _contactsRepository.update(updatedContact);
      emit(ContactUpdateListCubitState.success());
    } catch (e, s) {
      emit(ContactUpdateListCubitState.error(message: 'Failed to update contact: ${e.toString()}, ${s.toString()}'));
    }
  }
}