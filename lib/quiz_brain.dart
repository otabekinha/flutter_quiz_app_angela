import 'package:quiz_app/question.dart';

class QuizBrain {
  int _questionNum = 0;

  List<Question> _questionBank = [
    Question(
      questionText:
          'Flutter is developed by Google for building natively compiled apps for mobile, web, and desktop from one codebase',
      questionAnswer: true,
    ),
    Question(
      questionText:
          'Flutter is a primarily web-focused framework developed by Apple.',
      questionAnswer: false,
    ),
    Question(
      questionText:
          'Widgets in Flutter are rebuilt entirely when their state changes.',
      questionAnswer: true,
    ),
    Question(
      questionText:
          'Widgets in Flutter are mutable, allowing developers to change their properties after creation.',
      questionAnswer: true,
    ),
    Question(
      questionText:
          'Flutter requires separate codebases for Android and iOS app development.',
      questionAnswer: false,
    ),
    Question(
      questionText:
          'Flutter does not support the development of desktop applications.',
      questionAnswer: false,
    ),
    Question(
      questionText:
          'Hot Reload in Flutter instantly shows code changes in the running app without restarting',
      questionAnswer: true,
    ),
  ];

  void nextQuestion() {
    if (_questionNum < _questionBank.length - 1) {
      _questionNum++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNum].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNum].questionAnswer;
  }
}
