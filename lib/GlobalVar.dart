import 'package:flutter/cupertino.dart';

class GlobalVar {
  static GlobalKey<FormState> signUp = GlobalKey<FormState>();
  static GlobalKey<FormState> signIn = GlobalKey<FormState>();
  static TextEditingController username = TextEditingController();
  static TextEditingController password = TextEditingController();
  static TextEditingController sinName = TextEditingController();
  static TextEditingController sinPassword = TextEditingController();

  static String name = '';
  static String sName = '';
  static String pass = '';
  static String sPass = '';
}
