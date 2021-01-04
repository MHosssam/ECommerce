import 'dart:async';

import 'package:e_commerce/enum/address.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AccountController extends GetxController {

  final profileImageUrl = RxString();
  final  imagePicker1 = ImagePicker();

  Future getImagePro() async {
    final pickedFile = await imagePicker1.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      profileImageUrl.value = pickedFile.path;
    }
  }

  Rx<Address> valueData = Address.home.obs;

  void SetChanges(val) {
    valueData.value = val;
  }



}
