import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'events_states/provider_es.dart';

import 'bloc/observer.dart';
import 'bloc/provider_bloc.dart';
import 'view/loading_page.dart';
import 'view/root_page.dart';
import 'view/test_page.dart';

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
      child: BlocBuilder<ProviderBloc, ProviderState>(
        builder: (_, state) {
          /*if (state is LoadingProviderState) {
            return const LoadingPage();
          }*/
          if (state is RootTestsProviderState) {
            print("state is RootTestsProviderState");
            return const RootPage();
          } else if (state is TestProviderState) {
            print("state is TestProviderState");
            return const TestPage();
          } else {
            print("state is empty");
            return const LoadingPage();
          }
        },
      ),
    );
  }
}
