void main(){

  String s ;
//  print( s == null ? "" : s.length);
  print(s?.length);

  // 取商
 print(1 / 2);
 print(1 ~/ 2);

 //as is is!
  // as 类型转换
  num n = 1;
  num n1 = 1.0;
  int i = n as int;

  //is
  print(n is double);

  //is!
  print(n is! int);

  //三目运算符  ??
  bool isNull = false;
//  String s = isNull ? '' : '';
  bool isPaused;
  isPaused = isPaused ?? false;

  // ..级联操作符
  StringBuffer sb = new StringBuffer();
  sb..write("sdf")..write("dfadf")..write("hrfhd");

}