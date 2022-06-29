
import 'dart:convert';

import 'package:shared_preference/model/account_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/user_model.dart';

class GetLogIn{

  static storeUser(User user) async{
    SharedPreferences preference = await SharedPreferences.getInstance();
    String stringUser = jsonEncode(user);
    preference.setString('user', stringUser);
  }


  static Future<User?> loadUser() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? stringUser = preferences.getString('user');
    if(stringUser == null || stringUser.isEmpty){
      return null;
    }
    Map map = jsonDecode(stringUser);
    return User.fromJon(map);
  }

  static Future<bool> removeUser() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.remove('user');
  }

}

class GetSignIn{

  static storeAccount(Account account) async{
    SharedPreferences preference = await SharedPreferences.getInstance();
    String stringUser = jsonEncode(account);
    preference.setString('account', stringUser);
  }


  static Future<Account?> loadAccount() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? stringUserAccount = preferences.getString('account');
    if(stringUserAccount == null || stringUserAccount.isEmpty){
      return null;
    }
    Map map = jsonDecode(stringUserAccount);
    return Account.fromJon(map);
  }

  static Future<bool> removeAccount() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.remove('account');
  }

}

