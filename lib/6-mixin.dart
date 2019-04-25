void main(){
  Bicycle().tranport();
  Motocycle().tranport();
  Car().tranport();

  var messageAB = AB().getMessage();
  print(messageAB);
  var messageBA = BA().getMessage();
  print(messageBA);
  var messageC = C().getMessage();
  print(messageC);
  var messageCC = CC().getMessage();
  print(messageCC);
}

//交通
abstract class Trasportation{
  void tranport();
}

abstract class TwoWheelTransportation{
  String powerUnit() => '2个轮子';
}
abstract class FourWheelTransportation{
  String powerUnit() => '4个轮子';
}
abstract class LowSafeTransportation{
  String saftIndex() => 'low';
}
abstract class MiddleSafeTransportation{
  String saftIndex() => 'middle';
}
abstract class BodyEnergyTransportation{
  String energy() => '脚蹬';
}
abstract class GasEnergyTransportation{
  String energy() => '汽油';
}

//自行车
class Bicycle extends Trasportation with TwoWheelTransportation,LowSafeTransportation,BodyEnergyTransportation{

  @override
  void tranport(){
    print('Bicycle:\npowerUnit:${powerUnit()},saftIndex:${saftIndex()},energy:${energy()}');
  }
}

class Motocycle extends Trasportation with TwoWheelTransportation,LowSafeTransportation,GasEnergyTransportation{

  @override
  void tranport() {
    print('Motocycle:\npowerUnit:${powerUnit()},saftIndex:${saftIndex()},energy:${energy()}');
  }
}

class Car extends Trasportation with FourWheelTransportation,MiddleSafeTransportation,GasEnergyTransportation{

  @override
  void tranport() {
    print('Car:\npowerUnit:${powerUnit()},saftIndex:${saftIndex()},energy:${energy()}');
  }
}

class A{
  String getMessage() => 'A';
}
class B{
  String getMessage() => 'B';
}
class P{
  String getMessage() => 'P';
}

class AB extends P with A,B {

}

class BA extends P with B,A {

}

class C extends P with B,A {
  String getMessage() => 'C';
}

//这里的implement只是表明了要实现A的方法。
class CC extends P with B implements A{

}