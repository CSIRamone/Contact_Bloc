import 'package:contact_bloc/features/contacts/list/bloc/contact_list_bloc.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/widgets/loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactListPage extends StatelessWidget {
  const ContactListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact List'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
           Navigator.pushNamed(context, '/contacts/register');
        },
        child: const Icon(Icons.add),
      ),
      body: BlocListener<ContactListBloc, ContactListState>(
        listenWhen: (previous, current) => current.maybeWhen(
          error: (_) => true,
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
          );
        },
        child: RefreshIndicator(
          onRefresh: () async => context.read<ContactListBloc>()
            ..add(
              ContactListEvent.findAll(),
            ),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                child: Column(
                  children: [
                    Loader<ContactListBloc, ContactListState>(
                      selector: (state) {
                        return state.maybeWhen(
                          loading: () => true,
                          orElse: () => false,
                        );
                      },
                    ),
                    BlocSelector<ContactListBloc, ContactListState,
                        List<ContactModel>>(
                      selector: (state) {
                        return state.maybeWhen(
                          data: (contacts) => contacts,
                          orElse: () => [],
                        );
                      },
                      builder: (_, contacts) {
                        return ListView.builder(
                          itemCount: contacts.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            final contact = contacts[index];
                            return ListTile(  
                              title: Text(contact.name),
                              subtitle: Text(contact.email),
                              onTap: () {
                             //    Navigator.pushNamed(context, '/contacts/update');
                              },
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
