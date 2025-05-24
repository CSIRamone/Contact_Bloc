import 'package:contact_bloc/features/bloc_example/bloc/bloc_freezed/example_freezed_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocFreezedExample extends StatelessWidget {
  const BlocFreezedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Freezed'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        print('addNames');
        context.read<ExampleFreezedBloc>().add(
              ExampleFreezedEvent.addNames('New name'),
            );
      }),
      body: BlocListener<ExampleFreezedBloc, ExampleFreezedState>(
        listener: (context, state) {
          state.whenOrNull(
            showBanner: (_, message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message)),
              );
            },
          );
        },
        child: Column(
          children: [
            BlocSelector<ExampleFreezedBloc, ExampleFreezedState, bool>(
              selector: (state) {
                return state.maybeWhen(
                  loading: () => true,
                  orElse: () => false,
                );
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
            BlocSelector<ExampleFreezedBloc, ExampleFreezedState, List<String>>(
                selector: (state) {
              return state.maybeWhen(
                data: (names) => names,
                showBanner: (names, _) => names,
                orElse: () => <String>[],
              );
            }, builder: (_, names) {
              print('Build Names !!!!!!!!!');
              return SingleChildScrollView(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: names.length,
                    itemBuilder: (context, index) {
                      final name = names[index];
                      return ListTile(
                        onTap: () {},
                        title: Text(name),
                      );
                    }),
              );
            }),
          ],
        ),
      ),
    );
  }
}
