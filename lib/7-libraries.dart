import 'dart:math';
import 'package:dio/dio.dart';
//import 'mylib.dart' as dsf hide Test;
//import 'mylib2.dart'show MyLib,Test;

import 'mylib.dart' as lib1;
import 'mylib2.dart' as lib2;

//延迟导入
//import 'mylib.dart' deferred as lazylib;

//自定义库
import 'core/lib.dart';

void main(){
//  print(sqrt(9));
//  doHttp();

  lib1.MyLib();
  lib2.MyLib();

  doTools();
  doUtil();

}

doHttp() async{
  Response response = await Dio().get('https://www.baidu.com');
  print(response);
}

//lazyLoad() async{
//   await lazylib.loadLibrary();
//}

