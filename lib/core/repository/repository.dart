import 'package:get_user_tgs/core/model/data.dart';
import 'package:get_user_tgs/core/reponse/reponse.dart';
import 'package:get_user_tgs/core/service/network.dart';

class Repository extends Network {
  Repository();

  Repository._privateConstructor();
  static final Repository _instance = Repository._privateConstructor();

  static Repository get instance => _instance;

  Future<List<User>> getUser() async {
    var map = await methodGet();
    return Response.fromJson(map).results;
  }
}
