import 'package:monna_no_nihongo/src/core/data/provider/appwrite_provider.dart';
import 'package:appwrite/models.dart' as models;

class AppwriteRepository {
  final AppwriteProvider appwriteProvider;
  AppwriteRepository(this.appwriteProvider);

  Future<models.User> signup(Map map) async {
    return await appwriteProvider.signup(map);
  }
}
