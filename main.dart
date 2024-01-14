import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_client/events_states/provider_es.dart';

import 'bloc/observer.dart';
import 'bloc/provider_bloc.dart';

Future<void> main() async {
  Bloc.observer = SimpleBlocObserver();
  /*BlocProvider(
    create: (context) => ProviderBloc(),
    child: const App(),
  );
  */ //runApp(const AuthorisationPage());
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProviderBloc(),
      child: BlocBuilder(
        builder: (_, state) {
          /*if (state is LoadingProviderState) {
            return const LoadingPage();
          }*/
          if (state is RootTestsProviderState) {
            return RootPage();
          } else if (state is TestProviderState) {
            return TestPage();
          } else {
            return const LoadingPage();
          }
        },
      ),
    );
  }
}
