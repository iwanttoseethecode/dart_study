void main(){
  throw new FormatException('格式化错误！');
//  throw new NullThrownError();
  try{
    throw new NullThrownError();
  }on OutOfMemoryError{
    print('OutOfMemoryError 异常捕获');
  }on Error{
    print('error 类型异常被捕获');
  }catch(e, s){//第一个是异常对象，第二个StackTrace对象
    print(e);
    print(s);
  }

}