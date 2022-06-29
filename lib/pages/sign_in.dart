import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {

  static const id = '/signin_page';

  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
          margin: const EdgeInsets.only(top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const SizedBox(
                height: 200,
                width: 200,
                child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/log_last.png')),
              ),
              const SizedBox(height: 20,),
              const  Text('Welcome back!', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 28),),
              const  Text('Log in to your existent account of Q Allure', style: TextStyle(color: Colors.white, fontSize: 14),),
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
                  // controller: emailController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.account_circle_rounded),
                    hintText: 'Email',
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
                  // controller: passwordController,
                  decoration:const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.lock),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14,fontWeight: FontWeight.bold,),
                  ),
                ),
              ),
              // #forgot Password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text('Forgot Password?', style: TextStyle(color: Colors.black, fontSize: 14),),
                ],
              ),
              // #log in
              GestureDetector(
                // onTap: _logIn,
                child: Container(
                  alignment: Alignment.center,
                  width: 215,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blue.shade900,
                  ),
                  child: const  Text('LOG IN', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 25),),

                ),
              ),

              const SizedBox(height: 28,),
              Container(
                  padding: const EdgeInsets.only(left: 240),
                  child: const Text('Or connect using', style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold),)),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.indigo.shade700,
                    ),
                    child: Row(
                      children: const [
                        SizedBox(width: 3,),
                        Icon(Icons.facebook, color: Colors.white,),
                        SizedBox(width: 5,),
                        Text('Facebook', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  const SizedBox(width: 20,),
                  Container(
                    height: 40,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.red,
                    ),
                    child: Row(
                      children: const [
                        SizedBox(width: 1,),
                        Icon(Icons.facebook, color: Colors.white,),
                        SizedBox(width: 10,),
                        Text('Google', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t  have an account?', style: TextStyle(color: Colors.grey[800])),
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, SignInPage.id);
                  },
                    child: const Text('Sign Up', style: TextStyle(color: Colors.blue),),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
