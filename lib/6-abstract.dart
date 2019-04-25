void main(){
  var footMassage = new Massage('foot');
  var backMassage = new Massage('back');
  var specialMassage = new Massage('special');

  footMassage.doMassage();
  backMassage.doMassage();
  specialMassage.doMassage();

  var footMassage1 = massageFactory('foot');
  footMassage1.doMassage();
  var footMassage2 = massageFactory('back');
  footMassage2.doMassage();
  var footMassage3 = massageFactory('special');
  footMassage3.doMassage();
}

abstract class Massage{
  factory Massage(String type){
    switch(type){
      case 'foot':
        return new FootMassage();
      case 'back':
        return new BackMassage();
      case 'special':
        return new SpecialMassage();
    }
  }

  void doMassage();
}

class FootMassage implements Massage{
  @override
  void doMassage() {
    print('信息1');
  }

}

class BackMassage implements Massage{
  @override
  void doMassage() {
    print('信息2');
  }

}

class SpecialMassage implements Massage{
  @override
  void doMassage() {
    print('信息3');
  }
}

Massage1 massageFactory(String type){
  switch(type){
    case 'foot':
      return new FootMassage1();
    case 'back':
      return new BackMassage1();
    case 'special':
      return new SpecialMassage1();
  }
}

abstract class Massage1{
  void doMassage(){
    print('按摩');
  }
}

class FootMassage1 extends Massage1{
  void doMassage(){
    print('足底按摩');
  }
}

class BackMassage1 extends Massage1{
  void doMassage(){
    print('推背按摩');
  }
}

class SpecialMassage1 extends Massage1{
  void doMassage(){
    print('特殊按摩');
  }
}