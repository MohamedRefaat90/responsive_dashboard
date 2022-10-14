import 'package:get/get.dart';
import 'package:responsive_dashboard/controller/myController.dart';

class myBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(myController());
  }
}
