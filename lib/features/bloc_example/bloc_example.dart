import 'package:bloc/bloc.dart';
import 'package:contact_bloc/features/bloc_example/bloc/example_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocExamplePage extends StatelessWidget {
  const BlocExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Example'),
      ),
      body: BlocListener<ExampleBloc, ExampleState>(
        listenWhen: (previous, current) {
          if (previous is ExampleInitialState && current is ExampleDataState) {
            if (current.names.length > 3) {
              return true;
            }
          }
          return false;
        },
        listener: (context, state) {
          if (state is ExampleDataState) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                'Bloc Example a Quantidade de nomes eh ${state.names.length}',
              ),
            ));
          }
        },
        child: Column(
          children: [
            BlocConsumer<ExampleBloc, ExampleState>(
              buildWhen: (previous, current) {
                if (previous is ExampleInitialState &&
                    current is ExampleDataState) {
                  if (current.names.length > 3) {
                    return true;
                  }
                }
                return false;
              },
              builder: (_, state) {
                if (state is ExampleDataState) {
                  return Text(
                    'Quantidade de nomes: ${state.names.length}',
                    style: const TextStyle(fontSize: 20),
                  );
                }
                return const SizedBox.shrink();
              },
              listener: (context, state) {
                print('BlocConsumer listener: $state');
              },
            ),
            BlocSelector<ExampleBloc, ExampleState, bool>(
              selector: (state) {
                if (state is ExampleInitialState) {
                  return true;
                } else {
                  return false;
                }
              },
              builder: (context, showLoader) {
                if (showLoader) {
                  return Expanded(
                      child: Center(child: const CircularProgressIndicator()));
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
            BlocSelector<ExampleBloc, ExampleState, List<String>>(
                selector: (state) {
              if (state is ExampleDataState) {
                return state.names;
              } else {
                return [];
              }
            }, builder: (context, names) {
              return SingleChildScrollView(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: names.length,
                    itemBuilder: (context, index) {
                      final name = names[index];
                      return ListTile(
                        onTap: () {
                          context
                              .read<ExampleBloc>()
                              .add(ExampleRemoveNameEvent(name: name));
                        },
                        title: Text(name),
                      );
                    }),
              );
            }),
            const SizedBox(height: 20),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: TextField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          labelText: 'Digite um nome',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      final name = nameController.text.trim();
                      if (name.isNotEmpty) {
                        context
                            .read<ExampleBloc>()
                            .add(ExampleAddNameEvent(name: name));
                        nameController.clear(); // Limpa o campo após adicionar
                      }
                    },
                    child: const Text('Add Name'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      /* BlocBuilder<ExampleBloc, ExampleState>(builder: (context, state) {
              if (state is ExampleDataState) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.names.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(state.names[index]),
                    );
                  },
                );
              } else {
                return const Center(child: Text('No data found'));
              }
            }),*/
    );
  }
}
