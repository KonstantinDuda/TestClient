import 'package:equatable/equatable.dart';

class ProviderEvent extends Equatable {
  const ProviderEvent();

  @override
  List<Object> get props => [];
}

class LoadingProviderEvent extends ProviderEvent {}

class RootTestsProviderEvent extends ProviderEvent {}

class TestProviderEvent extends ProviderEvent {}

// States:

class ProviderState extends Equatable {
  const ProviderState();

  @override
  List<Object> get props => [];
}

class LoadingProviderState extends ProviderState {}

class RootTestsProviderState extends ProviderState {}

class TestProviderState extends ProviderState {}
