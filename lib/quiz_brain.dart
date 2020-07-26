import 'question.dart';

class QuizBrain{

  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(q: 'You can lead a cow down stairs but not up stairs.', a: true),
    Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    Question(q: 'A slug\'s blood is green.', a: false),
    Question(q: 'Indira Gandhi was India\'s first female PM', a: true),
    Question(q: 'The sky is green in color', a: true),
    Question(q: 'Most of the world is covered in land', a: true),
    Question(
        q: 'Humans are the animals with the most lifespan amongst animals',
        a: false),
    Question(q: 'birds cant see color', a: false),
    Question(q: 'glass can cause cancer in very cold or hot weather', a: true),
    Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    Question(q: 'lass can cause cancer in very cold or hot weather', a: false),
    Question(q: 'LAST QUESTION', a: true),
  ];

  int getLength(){
    return _questionBank.length;
  }

  void nextQuestion(){
    if(_questionNumber<_questionBank.length){
      _questionNumber++;
    }
    else{

    }
  }

  String getQuestion(){
    return _questionBank[_questionNumber].questionText;
  }

  bool getAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }
}