import 'package:bloc/bloc.dart';
import 'package:contact_bloc/features/bloc_example/bloc/example_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocExamplePage extends StatelessWidget {
  const BlocExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Example'),
      ),
      body: BlocListener<ExampleBloc, ExampleState>(
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
              listener: (context, state){
                print('BlocConsumer listener: $state');
              },
              builder: (_, state) {
                if (state is ExampleDataState) {
                  return Text(
                    'Quantidade de nomes: ${state.names.length}',
                    style: const TextStyle(fontSize: 20),
                  );
                } else {
                  return const Text('No data found');
                }
              }, 
              ),

            BlocSelector<ExampleBloc, ExampleState, bool>(
              selector: (state){
                if (state is ExampleInitialState){
                  return true;
                } else {
                  return false;
                }
              }, 
              builder: (context, showLoader){
                if (showLoader) {
                  return Expanded(child: Center(child: const CircularProgressIndicator()));
                } else {
                  return const SizedBox.shrink();
                }
              },
              ),

            BlocSelector<ExampleBloc, ExampleState, List<String>>(
              selector: (state){
                if (state is ExampleDataState){
                  return state.names;
                } else {
                  return [];
                }
              }, 
              builder: (context, names){
               return ListView.builder(
                  shrinkWrap: true,
                  itemCount: names.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(names[index]),
                    );
                  }
                );
              }
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
          ],
        ),
      ),
    );
  }
}
