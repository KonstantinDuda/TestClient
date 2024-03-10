import 'package:equatable/equatable.dart';
import 'package:test_client/events_states/questions.dart';

class ProviderEvent extends Equatable {
  const ProviderEvent();

  @override
  List<Object> get props => [];
}

class LoadingProviderEvent extends ProviderEvent {}

class RootTestsProviderEvent extends ProviderEvent {}

class TestProviderEvent extends ProviderEvent {
  final Question quest;

  const TestProviderEvent(this.quest);

  @override
  List<Object> get props => [quest];
}

// States:

class ProviderState extends Equatable {
  const ProviderState();

  @override
  List<Object> get props => [];
}

class LoadingProviderState extends ProviderState {}

class RootTestsProviderState extends ProviderState {
  final List<Question> list;

  const RootTestsProviderState(this.list);

  @override
  List<Object> get props => [list];
}

class TestProviderState extends ProviderState {
  final Question quest;

  const TestProviderState(this.quest);

  @override
  List<Object> get props => [quest];
}
