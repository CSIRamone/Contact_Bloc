import 'dart:async';
import 'dart:developer';

import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_list_event.dart';
part 'contact_list_state.dart';
part 'contact_list_bloc.freezed.dart';

class ContactListBloc extends Bloc<ContactListEvent, ContactListState> {
  final ContactsRepository _repository;

  ContactListBloc({required ContactsRepository repository})
      : _repository = repository,
        super(ContactListState.initial()) {
    on<_ContactListEventFindAll>(_findAll);
    on<_ContactListEventDelete>(_delete);
   
  }

  Future<void> _findAll(
      _ContactListEventFindAll event, Emitter<ContactListState> emit) async {
    try {
      emit(ContactListState.loading());
      log('buscando contatos');
      final contacts = await _repository.findAll();
     // await Future.delayed(const Duration(seconds: 1));
      //throw Exception();// for testing error handling
      //log('contatos encontrados: ${contacts.length}');

      emit(ContactListState.data(contacts: contacts));
    } catch (e, s) {
      log('error ao buscar contatos', error: e, stackTrace: s);
      emit(ContactListState.error(
          message: 'Erro ao buscar contatos')); // ${e.toString()}'));
    }
  }

  FutureOr<void> _delete(
    _ContactListEventDelete event, 
    Emitter<ContactListState> emit) async{
    
    emit(ContactListState.loading());
      await _repository.delete(event.model);
     // await Future.delayed(const Duration(seconds: 1));
      add(const ContactListEvent.findAll());


  }
}
