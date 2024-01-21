import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_client/bloc/provider_bloc.dart';
import 'package:test_client/events_states/provider_es.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<ProviderBloc>().add(LoadingProviderEvent());
    return const MaterialApp(home: Text('Loading Page'));
  }
}
