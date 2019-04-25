void main(){
  var rectangle = Rectangle(0,0,1,1);
  print(rectangle.left);
  rectangle.right = 2;
  print(rectangle.left);
}

class Sington{
  String name;
  static Sington _cache;

  //工厂构造函数无法访问this
  //工厂函数不会自动生成实例，通过代码来决定返回的实例对象
  factory Sington([String name = 'Sington']){
    return Sington._cache ??= Sington._newObject(name);
  }

  Sington._newObject(this.name);
}

class Rectangle{
  num left;
  num top;

  num width;
  num height;

  Rectangle(this.left,this.top,this.width,this.height);

  num get right=> left + width;

  set right(value) => left = value - width;

  num get bottom => top + height;

  set bottom(value) => top = value - height;

}