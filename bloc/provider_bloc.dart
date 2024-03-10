import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import '../events_states/questions.dart';
import '../events_states/provider_es.dart';

class ProviderBloc extends Bloc<ProviderEvent, ProviderState> {
  ProviderBloc() : super(LoadingProviderState()) {
    on<LoadingProviderEvent>((event, emit) =>
        _loading(event, emit)); //emit(LoadingProviderState()));
    //on<RootTestsProviderEvent>((event, emit) => emit(RootTestsProviderState()));
    on<TestProviderEvent>(
        (event, emit) => emit(TestProviderState(event.quest)));
  }

  _loading(LoadingProviderEvent event, Emitter emit) async {
    var url = Uri.parse('http://localhost:8000/questions/');
    var response = await http.get(
      url,
      //headers: {"Content-Type": "application/json"},
    );
    /*toJson());*/ /*{'name': loginText, 'password': passwordText});*/
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    List<Question> mylist = [];
    //mylist.addAll(jsonDecode(response.body));

    //var mybody = response.body;
    var mybody = jsonDecode(response.body);
    //var data = Question.fromMap(mybody as Map<String, dynamic>);
    //var questions = Question.fromMap(data);
    //print('list ==  $mylist');
    for (var element in mybody) {
      mylist.add(Question.fromJson(element));
    }
    print('mybody: $mybody');
    //print(response.body.runtimeType);
    print(mybody.runtimeType);
    print(mylist);

    emit(RootTestsProviderState(mylist));
  }

  //_rootTests(RootTestsProviderEvent event, Emitter emit) {
  //  emit(RootTestsProviderState());
  //}

  /*_tests(TestProviderEvent event, Emitter emit) {
    
    emit(TestProviderState(event.quest));
  }*/
}
