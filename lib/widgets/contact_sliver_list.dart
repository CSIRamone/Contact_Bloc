import 'package:contact_bloc/models/contact_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../features/contacts/list/bloc/contact_list_bloc.dart';

class ContactSliverList extends StatelessWidget {
  final List<ContactModel> contacts;
  const ContactSliverList({super.key, required this.contacts});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final contact = contacts[index];
          return Dismissible(
            key: ValueKey(contact.id!),
            direction: DismissDirection.endToStart,
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Icon(Icons.delete, color: Colors.white),
            ),
            confirmDismiss: (_) async {
              final confirm = await showDialog<bool>(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Confirmar exclusão'),
                  content: Text('Deseja realmente excluir ${contact.name}?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                      child: const Text('Cancelar'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(true),
                      child: const Text('Excluir',
                          style: TextStyle(color: Colors.red)),
                    ),
                  ],
                ),
              );
              return confirm == true;
            },
            onDismissed: (_) {
              context.read<ContactListBloc>().add(
                    ContactListEvent.delete(model: contact),
                  );
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('${contact.name} deletado'),
                  duration: const Duration(seconds: 2),
                  backgroundColor: Colors.red,
                ),
              );
            },
            child: ListTile(
              title: Text(contact.name),
              subtitle: Text(contact.email),
              onTap: () async {
                await Navigator.pushNamed(
                  context,
                  '/contacts/update',
                  arguments: contact,
                );
                context.read<ContactListBloc>().add(
                      ContactListEvent.findAll(),
                    );
              },
            ),
          );
        },
        childCount: contacts.length,
      ),
    );
  }
}
