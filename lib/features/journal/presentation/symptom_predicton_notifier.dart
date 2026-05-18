import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/symptom_prediction.dart';

final symptomPredictionProvider =
    StateNotifierProvider<SymptomPredictionNotifier, List<SymptomPrediction>>(
  (ref) => SymptomPredictionNotifier(),
);

class SymptomPredictionNotifier extends StateNotifier<List<SymptomPrediction>> {
  static bool predictionInProgress = false;

  SymptomPredictionNotifier() : super([]);

  void reset() {
    state = [];
    predictionInProgress = false;
  }

  Future<void> predict(String text,
      {DateTime? startDate, DateTime? endDate}) async {
    reset();
  }

  List<SymptomPrediction> getInitialPredictions() => [];
  List<SymptomPrediction> getAdditionalPredictions() => [];
}
