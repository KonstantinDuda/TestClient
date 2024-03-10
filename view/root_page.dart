import 'package:flutter/material.dart';
import 'package:test_client/events_states/questions.dart';

class RootPage extends StatelessWidget {
  final List<Question> question;
  const RootPage(this.question, {super.key});

  @override
  Widget build(BuildContext context) {
    return //const MaterialApp(home: Text("Root Page"));
        Scaffold(
      appBar: AppBar(
        title: const Text("Questions"),
      ),
      body: ListView.builder(
          itemCount: question == [] ? 0 : question.length,
          itemBuilder: ((context, index) {
            return Text(question[index].text);
          })),
    );
  }
}
