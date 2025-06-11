import 'package:bloc_test/bloc_test.dart';
import 'package:contact_bloc/features/contact_cubit/list/cubit/contact_list_cubit.dart';
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
  late ContactListCubit contactListCubit;
  late List<ContactModel> contacts;

  //preparacao
  setUp(() {
    repository = MockContactsRepository();
    contactListCubit = ContactListCubit(repository: repository);
    contacts = [
      ContactModel(name: 'John Doe', email: 'doe@gmail.com'),
      ContactModel(name: 'Jane Smith', email: 'jane@gmail.com'),
    ];

  });

  //execucao
   blocTest<ContactListCubit, ContactListCubitState>(
      'Deve buscar contatos', 
      build: () => contactListCubit,
      act: (contactListBloc) => contactListBloc.findAll(),
      setUp: () {
        when(() => repository.findAll()).thenAnswer((_) async => contacts);
      },
      expect: () => [
        ContactListCubitState.loading(),
        ContactListCubitState.data(contacts: contacts),   
      ]
    );


}