import 'package:monna_no_nihongo/src/core/data/provider/appwrite_provider.dart';
import 'package:appwrite/models.dart' as models;

class AuthRepository {
  final AppwriteProvider appwriteProvider;
  AuthRepository(this.appwriteProvider);

  Future<models.User> signUp(Map map) async {
    return await appwriteProvider.signUp(map);
  }
}
