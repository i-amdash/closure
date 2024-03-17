import 'package:closure/pages/frame/sign_in/controller.dart';
import 'package:get/get.dart';

class SignInBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(() => SignInController());
  }

}