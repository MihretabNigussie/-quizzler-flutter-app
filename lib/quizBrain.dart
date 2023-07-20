import 'questions.dart';

// review this code

// Overall review: This is one solid code. The class accomplishes what it sets outs to do, the methods implemented are taking one responsibility which is really good
//very well written class!
class QuizBrain {
  //SUGGESTION: maybe change the variable name to a more mnemonic word like _currentQuestionIndex
  int _tracker = 0;

  //SUGGESTION: instead of interacting with _question maybe use a void function that lets you add questions 
  //This will make your code scalable and easier to manage. You can also add a method that removes a question if it is desired to remove a question
  //something like this
  //void addQuestion(String questionName){
  //  _questions.add(Question(questionName));
  //}
  final List<Question> _questions = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  //SUGGESTION: maybe if you could change the name checker to a method name like goToNextQuestion would make this amazing of a code even better.
  void checker() {
    if (_tracker < _questions.length - 1) {
      _tracker++;
    }
  }

  void setTracker(int num) {
    _tracker = num;
  }

  bool isFinished() {
    return _tracker == _questions.length - 1;
  }
  
  String getQuestion() {
    return _questions[_tracker].question;
  }

  bool getAnswer() {
    return _questions[_tracker].answer;
  }
}
