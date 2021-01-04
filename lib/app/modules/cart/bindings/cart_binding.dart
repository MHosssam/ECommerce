import 'package:get/get.dart';
import 'package:e_commerce/app/modules/cart/controllers/cart_controller.dart';

class CartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CartController>(
      () => CartController(),
    );
  }
}
