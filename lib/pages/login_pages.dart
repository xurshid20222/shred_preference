import 'package:flutter/material.dart';
import 'package:shared_preference/model/account_model.dart';
import 'package:shared_preference/pages/sign_in.dart';
import '../model/user_model.dart';
import '../servises/shared_preference.dart';
class LogInPage extends StatefulWidget {

  static const id = '/log_in_page';

  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {


  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> _logIn()async{
    String name = nameController.toString().trim();
    String phone = phoneController.toString().trim();
    String confirmPassword = confirmPasswordController.toString().trim();
    String email = emailController.toString().trim();
    String password = passwordController.toString().trim();
    Account account = Account(name: name, email: email, phone: phone, password: password, confirmPassword: confirmPassword);
    await GetSignIn.storeAccount(account);
    
    GetSignIn.loadAccount().then((account) => {
      print(account!.phone),
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const SizedBox(height: 20,),
              const  Text('Welcome back!', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 28),),
              const  Text('Log in to your existent account of Q Allure', style: TextStyle(color: Colors.white, fontSize: 14),),

              const SizedBox(height: 20,),
              //#plrofile
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextField(
                  controller: nameController,
                  decoration:const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.account_circle_rounded),
                    hintText: 'Full Name',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14,fontWeight: FontWeight.bold,),
                  ),
                ),
              ),
              // #email
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  alignment: Alignment.center,
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child:  TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.account_circle_rounded),
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14,fontWeight: FontWeight.bold,),
                    ),
                  ),
                ),
              //#phone
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextField(
                  controller: phoneController,
                  decoration:const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.phone_android_rounded),
                    hintText: 'Phone',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14,fontWeight: FontWeight.bold,),
                  ),
                ),
              ),
              //#password
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextField(
                  controller: passwordController,
                  decoration:const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.lock),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14,fontWeight: FontWeight.bold,),
                  ),
                ),
              ),
              // #coniform Pasword
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextField(
                  controller: confirmPasswordController,
                  decoration:const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.lock),
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14,fontWeight: FontWeight.bold,),
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              // #log in
              GestureDetector(
                onTap: _logIn,
                child: Container(
                  alignment: Alignment.center,
                  width: 215,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blue.shade900,
                  ),
                  child: const  Text('CREATE', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 25),),

                ),
              ),

              const SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?', style: TextStyle(color: Colors.grey)),
                   TextButton(onPressed: (){
                     Navigator.pushNamed(context, SignInPage.id);
                   },
                       child: const Text('Login here', style: TextStyle(color: Colors.blue),),)
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}

