import 'package:e_commerce/app/modules/checkout/views/checkout_view.dart';
import 'package:e_commerce/app/modules/checkout/bindings/checkout_binding.dart';
import 'package:e_commerce/app/modules/account/views/account_view.dart';
import 'package:e_commerce/app/modules/account/bindings/account_binding.dart';
import 'package:e_commerce/app/modules/cart/views/cart_view.dart';
import 'package:e_commerce/app/modules/cart/bindings/cart_binding.dart';
import 'package:e_commerce/app/modules/home_product/views/home_product_view.dart';
import 'package:e_commerce/app/modules/home_product/bindings/home_product_binding.dart';
import 'package:e_commerce/app/modules/sign_up/views/sign_up_view.dart';
import 'package:e_commerce/app/modules/sign_up/bindings/sign_up_binding.dart';
import 'package:e_commerce/app/modules/login/views/login_view.dart';
import 'package:e_commerce/app/modules/login/bindings/login_binding.dart';
import 'package:e_commerce/app/modules/splash/views/splash_view.dart';
import 'package:e_commerce/app/modules/splash/bindings/splash_binding.dart';
import 'package:e_commerce/app/modules/home/views/home_view.dart';
import 'package:e_commerce/app/modules/home/bindings/home_binding.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  
static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.HOME, 
      page:()=> HomeView(), 
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.SPLASH, 
      page:()=> SplashView(), 
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.LOGIN, 
      page:()=> LoginView(), 
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.SIGN_UP, 
      page:()=> SignUpView(), 
      binding: SignUpBinding(),
    ),
    GetPage(
      name: Routes.HOME_PRODUCT, 
      page:()=> HomeProductView(), 
      binding: HomeProductBinding(),
    ),
    GetPage(
      name: Routes.CART, 
      page:()=> CartView(), 
      binding: CartBinding(),
    ),
    GetPage(
      name: Routes.ACCOUNT, 
      page:()=> AccountView(), 
      binding: AccountBinding(),
    ),
    GetPage(
      name: Routes.CHECKOUT, 
      page:()=> CheckoutView(), 
      binding: CheckoutBinding(),
    ),
  ];
}