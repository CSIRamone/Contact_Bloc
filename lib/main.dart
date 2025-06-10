import 'package:contact_bloc/features/bloc_example/bloc/bloc_freezed/example_freezed_bloc.dart';
import 'package:contact_bloc/features/bloc_example/bloc/bloc_freezed_example.dart';
import 'package:contact_bloc/features/bloc_example/bloc/example_bloc.dart';
import 'package:contact_bloc/features/bloc_example/bloc_example.dart';
import 'package:contact_bloc/features/contact_cubit/list/contact_list_cubit.page.dart';
import 'package:contact_bloc/features/contact_cubit/list/cubit/contact_list_cubit.dart';
import 'package:contact_bloc/features/contact_cubit/register/contact_register_list_cubit_page.dart';
import 'package:contact_bloc/features/contact_cubit/register/cubit/contact_register_list_cubit.dart';
import 'package:contact_bloc/features/contact_cubit/update/contact_update_list_cubit_page.dart';
import 'package:contact_bloc/features/contact_cubit/update/cubit/contact_update_list_cubit.dart';
import 'package:contact_bloc/features/contacts/list/bloc/contact_list_bloc.dart';
import 'package:contact_bloc/features/contacts/list/contact_list_page.dart';
import 'package:contact_bloc/features/contacts/register/bloc/contact_register_bloc.dart';
import 'package:contact_bloc/features/contacts/register/contact_register_page.dart';
import 'package:contact_bloc/features/contacts/update/bloc/bloc/contact_update_bloc.dart';
import 'package:contact_bloc/features/contacts/update/contact_update_page.dart';
import 'package:contact_bloc/home/home_page.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => ContactsRepository(),
      child: MaterialApp(
        initialRoute: '/home',
        title: 'Flutter Bloc',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/home': (_) => const HomePage(),
          '/bloc/example': (_) => BlocProvider(
                create: (_) => ExampleBloc()..add(ExampleFindNameEvent()),
                child: const BlocExamplePage(),
              ),
          '/bloc/example/freezed': (context) => BlocProvider(
                create: (context) => ExampleFreezedBloc()
                  ..add(
                    const ExampleFreezedEvent.findNames(),
                  ),
                child: const BlocFreezedExample(),
              ),
          '/contact/list': (context) => BlocProvider(
              create: (_) => ContactListBloc(
                  repository: context.read<ContactsRepository>())
                ..add(ContactListEvent.findAll()),
              child: ContactListPage()),

          '/contacts/register': (context) => BlocProvider(
              create: (context) =>
                  ContactRegisterBloc(repository: context.read()),
              child: const ContactRegisterPage()),
          '/contacts/update': (context) {
             final contactModel =
                ModalRoute.of(context)!.settings.arguments as ContactModel;
            return BlocProvider(
              create: (context) => ContactUpdateBloc(
                repository: context.read(),
              ),
              child: ContactUpdatePage(
                contact: contactModel,
              ),
            );
          },
          '/bloc/example/cubit': (context) => BlocProvider(
                create: (context) => ContactListCubit(
                  repository: context.read<ContactsRepository>(),
                )..findAll(),
                child: const ContactListCubitPage(),
              ),
          '/contacts/register/cubit': (context) => BlocProvider(
                create: (context) => ContactRegisterListCubit(
                  repository: context.read<ContactsRepository>(),
                ),
                child: const ContactRegisterListCubitPage(),
              ),
          '/contacts/update/cubit': (context) {
            final contactModel =
                ModalRoute.of(context)!.settings.arguments as ContactModel;
            return BlocProvider(
              create: (context) => ContactUpdateListCubit(
                repository: context.read<ContactsRepository>(),
              ),
              child: ContactUpdateListCubitPage(
                contact: contactModel,
              ),
            );
          },
            
          //   '/bloc/example/contact': (context) => const BlocExample(),
          //  '/bloc/example/freezed': (context) => const BlocExample(),
          //  '/bloc/example/cubit': (context) => const BlocExample(),
        },
      ),
    );
  }
}
