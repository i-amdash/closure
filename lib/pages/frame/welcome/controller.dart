import 'package:closure/common/routes/names.dart';
import 'package:closure/pages/frame/welcome/state.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  WelcomeController();
  final title = "Closure ..";
  final state = WelcomeState();

  @override
  void onReady(){
    super.onReady();
    Future.delayed(const Duration(seconds: 3), () => Get.offAllNamed(AppRoutes.Message));
  }
}