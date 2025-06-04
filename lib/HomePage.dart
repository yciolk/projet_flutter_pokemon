import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'DataStore.dart';
import 'PokemonCard.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  final String nom = ".";

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
            <Widget>[
              const PokemonCard(),
              const Text(
                  'You have pushed the button this many times:',
              ),
              const Text(
                '.',
              ),
            ],
        ),
      ),
    );
  }
}
