import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quiz/data.dart';

final qaprovider = Provider((ref) {
  return questionsAndAnswers;
});
