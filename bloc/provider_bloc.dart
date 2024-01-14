import 'package:flutter_bloc/flutter_bloc.dart';

import '../events_states/provider_es.dart';

class ProviderBloc extends Bloc<ProviderEvent, ProviderState> {
  ProviderBloc() : super(LoadingProviderState()) {
    on<LoadingProviderEvent>(
        /*_loading*/ (event, emit) => emit(LoadingProviderState()));
    on<RootTestsProviderEvent>((event, emit) => emit(RootTestsProviderState()));
    on<TestProviderEvent>((event, emit) => emit(TestProviderState()));
  }

  /*_loading(LoadingProviderEvent event, Emitter emit) {
    emit(RootTestsProviderState());
  }*/
}
