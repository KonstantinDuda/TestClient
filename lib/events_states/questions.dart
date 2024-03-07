class Question {
  int id;
  String text;

  Question({required this.id, required this.text});

  Map<String, dynamic> toMap() => {
        "id": id,
        "text": text,
      };

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      id: json['id'],
      text: json['text'],
    );
  }

  @override
  String toString() {
    return "Question $id, $text";
  }
}
