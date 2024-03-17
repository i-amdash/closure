import 'package:closure/common/routes/names.dart';
import 'package:closure/pages/message/state.dart';
import 'package:get/get.dart';

class MessageController extends GetxController {
  MessageController();
  final state = MessageState();

  Future<void> goProfile() async {
   await Get.toNamed(AppRoutes.Profile);
  }

}