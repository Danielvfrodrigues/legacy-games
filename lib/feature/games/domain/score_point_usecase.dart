import 'package:spinwheel/core/database/dao.dart';

class ScorePointUsecase {
  late Dao dao = Dao();

  void defineFirstMatchScores(String first, String second, String third) {
    dao.updateFistMatchScores(first, second, third);
  }
}
