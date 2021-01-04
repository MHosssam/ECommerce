import 'package:e_commerce/model/category_data.dart';
import 'package:get/get.dart';

class HomeProductController extends GetxController {
  //TODO: Implement HomeProductController
  
final idStar = 0.obs ;

  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {}

  List<CategoryData> Categories =[
    CategoryData('assets/images/shoe.png', 'Men' , null , null),
    CategoryData('assets/images/high-heels.png', 'Women', null , null),
    CategoryData('assets/images/device.png', 'Smart Phone', null , null),
    CategoryData('assets/images/smart-devices.png', 'Devices', null , null),
    CategoryData('assets/images/controller.png', 'Gaming', null , null),
  ];
  List<CategoryData> BestSelling =[
    CategoryData('assets/images/watch.jpg', 'Watch' , 'description' , '250'),
    CategoryData('assets/images/iphone.jpg', 'Iphone 12', 'description' , '20000'),
    CategoryData('assets/images/wwomen.jpg', 'Women Clothes', 'description' , '800'),
    CategoryData('assets/images/clothes.jpg', 'Men Clothes', 'description' , '500'),
  ];

}
