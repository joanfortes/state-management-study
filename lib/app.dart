import 'package:flutter/material.dart';
import 'package:riverpod_estudos/features/counter/lib/counter.dart';
import 'package:riverpod_estudos/features/streams_counter/lib/streams_counter.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod Estudos',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        CounterPage.routeName: (context) => const CounterPage(),
        CounterStreamPage.routeName: (context) => const CounterStreamPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  static const String routeName = '/';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Estudos'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, CounterPage.routeName),
                child: const Text('Counter Page'),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, CounterStreamPage.routeName),
                child: const Text('Streams Counter Page'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
