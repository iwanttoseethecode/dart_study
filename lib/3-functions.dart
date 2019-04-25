void main(){//返回类型可省略
  print(add(1,1));

  //命名参数{param1,param2,....}
  int add2({int a,int b = 2}){
    return a + b;
  }
  print(add2(a:1,b:2));

  //可选位置参数 []
  int add3(int a,[int b = 1,int c]){
    return a + b;
  }

  print(add3(2,3));

  //无参匿名
  var printFunc = (name) => print('${name}');

  //有参匿名
  var printFunc1 = (name) => print('${name}');
  printFunc1('dongnao');

  (() => print('ajshjhsdfjh'))();

  List test(List list,String func(str)){
    for(var i = 0; i < list.length; i++){
      list[i] = func(list[i]);
    }
    return list;
  }

  var ls = ['aaa','bbb','sdhdhd'];
  print(test(ls,(str) => str * 2));

  ls.forEach((element) => print(element));

  //闭包
  Function makeAddFunc(int a){
    return (int y) => a + y;
  }

  var addFunc = makeAddFunc(12);
  print(addFunc(22));

  MyFunc mFunc = add(11, 22);
  mFunc = divide(44, 22);

  calculator(8,2,add);

  

}

calculator(int a,int b,MyFunc func){
  func(a,b);
}

typedef MyFunc(int a,int b);

add(int a,int b){
  print('${a + b}');
}

divide(int a,int b){
  print('${a / b}');
}

int addp(int a,int b) => a + b;

