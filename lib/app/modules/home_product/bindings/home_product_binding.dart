import 'package:get/get.dart';
import 'package:e_commerce/app/modules/home_product/controllers/home_product_controller.dart';

class HomeProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeProductController>(
      () => HomeProductController(),
    );
  }
}
