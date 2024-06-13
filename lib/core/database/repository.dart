import 'package:spinwheel/core/database/dao.dart';

class Repository {
  final dao = Dao();

  void addMember(int teamNumber) async {
    if ([1, 4].contains(teamNumber)) {
      await dao.addMemberRed();
    }
    if ([2, 5].contains(teamNumber)) {
      await dao.addMemberYellow();
    }
    if ([3, 6].contains(teamNumber)) {
      await dao.addMemberGreen();
    }
  }
}