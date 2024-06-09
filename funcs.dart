void sayHello(String name){
  print('Hello $name, nice to meet you!');
}
String sayHello1(String name){
  return 'Hello $name, nice to meet you!';
}
String sayHello2(String name) => 'Hello $name, nice to meet you!';

num plus(num a, num b) => a+b;


void main(){
  sayHello('arum');
  print(sayHello1('junil'));
  print(sayHello2('huchu'));
  print(plus(1,2));
}