void main(){
  var point = Point.fromJson({'x':1,'y':2});
  var point2 = Point.alongXAxis(5);

  print(point.x+point.y);

  Point2 p21 = const Point2(1, 2);
  Point2 p22 = const Point2(1, 2);
  print(identical(p21,p22));

  Point3 p31 = Point3(1, 2);
  Point3 p32 = Point3(1, 2);
  print(identical(p31, p32));

}

class Point{
  num x;
  num y;

  Point(this.x,this.y);

  //命名构造函数
  Point.fromJson(Map json){
    x = json['x'];
    y = json['y'];
  }

  //重定向构造函数，使用冒号调用其他构造函数
  Point.alongXAxis(num x) : this(x,0);
}

class Parent{
  int x;
  int y;
  Parent.fromJson(x,y):x=x,y=y{
    print('父类命名构造函数');
  }
}

class Child extends Parent{
  int x;
  int y;

  Child(x, y) : super.fromJson(x, y){
    print('之类构造函数');
  }

  Child.fromJson(x,y):x = x,y = y,super.fromJson(x,y){
    print('之类命名构造函数');
  }

}

class Point2{
  final num x;
  final num y;

  const Point2(this.x,this.y);

  @override
  String toString() {
    return 'Point2(x = $x,y = $y)';
  }
}

class Point3{
  num x;
  num y;

  Point3(this.x,this.y);

  @override
  String toString() {
    return 'Point2(x = $x,y = $y)';
  }
}