import 'package:get/get.dart';
import 'package:login/src/features/authentication/models/user_model.dart';
import 'package:login/src/repository/authentication_repository/aunthentication_repository.dart';
import 'package:login/src/repository/user_repository/user_repository.dart';
import 'package:collection/collection.dart';

class ProfileController extends GetxController {
  static ProfileController get instance => Get.find();

  final _authRepo = Get.put(AuthenticationRepository());
  final _userRepo = Get.put(UserRepository());

  // Future<UserModel> getUserData()  async {
    getUserData(){
    final email = _authRepo.firebaseUser.value?.email;
    if(email != null){
     return _userRepo.getUserDetails(email);
    }
    else{
      Get.snackbar("Error", "Login to Continue");
    }
  }
  // Future<List<UserModel>> getAllUser() async {
  //   return await _userRepo.allUser();
  // }

}