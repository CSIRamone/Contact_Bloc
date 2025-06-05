import 'dart:async';
import 'dart:developer';

import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_register_state.dart';
part 'contact_register_event.dart';
part 'contact_register_bloc.freezed.dart';

class ContactRegisterBloc
    extends Bloc<ContactRegisterEvent, ContactRegisterState> {
  final ContactsRepository _repository;

  ContactRegisterBloc({required ContactsRepository repository})
      : _repository = repository,
        super(const ContactRegisterState.initial()) {
    on<_ContactRegisterEventRegister>(_register);
    log('ContactRegisterBloc initialized');
  }

  Future<void> _register(_ContactRegisterEventRegister event,
      Emitter<ContactRegisterState> emit) async {
    try {
      emit(const ContactRegisterState.loading());

      await Future.delayed(const Duration(seconds: 2));

      final contactModel = ContactModel(
        name: event.name,
        email: event.email,
      );
     // throw Exception('Simulated error'); // For testing error handling
     
      await _repository.create(contactModel);
      emit(const ContactRegisterState.success());
      log('Contato registrado com sucesso: ${event.name}, ${event.email}');
    } on Exception catch (e, s) {
      emit(ContactRegisterState.error(
        message: 'Erro ao registrar contato: ${e.toString()}',
      ));
      log('Erro ao registrar contato: ${e.toString()}', error: e, stackTrace: s);
    }
  }
}
