
import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/root/root_controller.dart';

class SignupController extends GetMaterialController
{
TextEditingController emailController=TextEditingController();
TextEditingController paswordController=TextEditingController();

void onsignup(){
createAccount(emailController.text.trim(), paswordController.text.trim());

}
Future<void>createAccount(String email, String pasword) async
{
  
}
}