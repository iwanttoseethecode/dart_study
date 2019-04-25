
import 'todo.dart';

void main(){
  dynamic tv = new Television();
  tv.turnOn();
}

class Television{

  @deprecated
  void activate(){
    turnOn();
  }

  void turnOn(){
    print('Television turn on!');
  }

  @override
  noSuchMethod(Invocation invocation) {
    print('没有找到方法');
  }

//  @Todo(name: 'Damon', what: 'create a new method')
//  void doSomething(){
//    print('doSomething');
//  }
}