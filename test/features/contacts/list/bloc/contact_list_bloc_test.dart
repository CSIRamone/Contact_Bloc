import 'package:bloc_test/bloc_test.dart';
import 'package:contact_bloc/features/contacts/list/bloc/contact_list_bloc.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';


class MockContactsRepository extends Mock implements ContactsRepository {
  // Mock implementation of ContactsRepository
}

void main() {

//declaracao
  late ContactsRepository repository;
  late ContactListBloc contactListBloc;
  late List<ContactModel> contacts;

  //preparacao
  setUp(() {
    repository = MockContactsRepository();
    contactListBloc = ContactListBloc(repository: repository);
    contacts = [
      ContactModel(name: 'John Doe', email: 'doe@gmail.com'),
      ContactModel(name: 'Jane Smith', email: 'jane@gmail.com'),
    ];

  });

    //execucao
    blocTest<ContactListBloc, ContactListState>(
      'Deve buscar contatos', 
      build: () => contactListBloc,
      act: (contactListBloc) => contactListBloc.add(ContactListEvent.findAll()),
      setUp: () {
        when(() => repository.findAll()).thenAnswer((_) async => contacts);
      },
      expect: () => [
        ContactListState.loading(),
        ContactListState.data(contacts: contacts),   
      ]
    );

   blocTest<ContactListBloc, ContactListState>(
      'Deve mostrar erros', 
      build: () => contactListBloc,
      act: (contactListBloc) => contactListBloc.add(ContactListEvent.findAll()),
     // setUp: () {
     //   when(() => repository.findAll()).thenAnswer((_) async => contacts);
     // },
      expect: () => [
        ContactListState.loading(),
        ContactListState.error(message: 'Erro ao buscar contatos'),
        
      ]
    );

}