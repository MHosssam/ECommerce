import 'package:get/get.dart';
import 'package:e_commerce/app/modules/checkout/controllers/checkout_controller.dart';

class CheckoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CheckoutController>(
      () => CheckoutController(),
    );
  }
}
