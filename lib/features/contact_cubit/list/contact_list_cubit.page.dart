import 'package:contact_bloc/features/contact_cubit/list/cubit/contact_list_cubit.dart';
import 'package:contact_bloc/features/contacts/list/bloc/contact_list_bloc.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/widgets/loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactListCubitPage extends StatelessWidget {
  const ContactListCubitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact list Cubit'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<ContactListCubit>().findAll();
        },
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'This is a contact list page using Cubit.',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ),
                ),
              ),
            ),
            SliverFillRemaining(
              child: Column(
                children: [
                  Loader<ContactListCubit, ContactListCubitState>(
                    selector: (state) {
                      return state.maybeWhen(
                        loading: () => true,
                        orElse: () => false,
                      );
                    },
                  ),
                  BlocSelector<ContactListCubit, ContactListCubitState, List<ContactModel>>(
                    selector: (state) {
                      return state.maybeWhen(
                        data: (contacts) => contacts,
                        orElse: () => <ContactModel>[],
                      );
                    },
                    builder: (_, contacts) {
                      return ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: contacts.length,
                        itemBuilder: (_, index) {
                          final contact = contacts[index];
                          return ListTile(
                            onLongPress: () => context
                                .read<ContactListCubit>()
                                .deleteContactByModel(contact),
                            title: Text(contact.name),
                            subtitle: Text(contact.email),
                            onTap: () {
                              // Handle contact tap
                            },
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ) // Add your contact list widget here
          ],
        ),
      ),
    );
  }
}
