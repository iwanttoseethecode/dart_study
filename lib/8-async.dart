import 'dart:async';

void main(){
  getName();
  getName2();
  getName3();

  new Future(() => futureTask())
      .then((i) => 'abc$i')
      .then((m) => print('$m'))
      .then((_) => new Future.error('出错啦'))
      .whenComplete(()=>print('whenComplete'))
      .catchError((e)=>print(e));
}

futureTask(){
  return 10;
}

Future<void> getName() async{
  await getStr();
  print('getName1');
}

getStr(){
  print('getStr');
}

getName2(){
  print('getName2');
}

getName3(){
  print('getName3');
}