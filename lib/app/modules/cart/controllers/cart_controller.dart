import 'package:get/get.dart';

class CartController extends GetxController {

  final items = List<String>.generate(20, (i) => "Item ${i + 1}");

  final count = 1.obs ;

  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {}

  void dismiss(int index){
    items.removeAt(index);
    Get.snackbar('Deleted ok', 'you delete one item');
  }


  void increment() => count.value++;
  void decrement() {
    if (count.value > 1){
      count.value-- ;
    }
    else {
      count.value = 1;
    }
  }

}
