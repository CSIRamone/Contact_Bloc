import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_update_event.dart';
part 'contact_update_state.dart';
part 'contact_update_bloc.freezed.dart';

class ContactUpdateBloc extends Bloc<ContactUpdateEvent, ContactUpdateState> {
  final ContactsRepository _repository;

  ContactUpdateBloc({required ContactsRepository repository})
      : _repository = repository,
        super(_ContactUpdateStateInitial()) {
    on<_ContactUpdateEventUpdate>(_update);
  }

  FutureOr<void> _update(
      _ContactUpdateEventUpdate event, Emitter<ContactUpdateState> emit) async {
    try {
      emit(const ContactUpdateState.loading());

      final model = ContactModel(
        id: event.id,
        name: event.name,
        email: event.email,
      );
      log('Atualizando contato: ${model.toMap()}');
      
      await _repository.update(model);
      emit(const ContactUpdateState.success());
    } catch (e, s) {
      log(event.toString(), error: e, stackTrace: s);
      emit(ContactUpdateState.error(
          message: 'Erro ao atualizar contato: ${e.toString()}'));
    }
  }
}
