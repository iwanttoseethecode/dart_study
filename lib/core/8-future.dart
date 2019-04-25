
import 'dart:async';

void main(){
//  testFuture();
  testScheduleMicrotask();
}

void testFuture(){
  Future f = new Future(() => print('f1'));
  Future f1 = new Future(() => null);
  Future f2 = new Future(() => null);
  Future f3 = new Future(() => null);

  f3.then((_) => print('f2'));
  f2.then((_){
    print('f3');
    new Future(() => print('f4'));
    f1.then((_){
      print('f5');
    });
  });
  f1.then((m){
    print('f6');
  });
  print('f7');
}

void testScheduleMicrotask(){
  scheduleMicrotask(() => print('s1'));

  new Future.delayed(new Duration(seconds: 1),() => print('s2'));

  new Future(() => print('s3')).then((_){
    print('s4');
    scheduleMicrotask(() => print('s5'));
  }).then((_) => print('s6'));

  new Future(() => print('s7'));

  scheduleMicrotask(() => print('s8'));

  print('s9');
}