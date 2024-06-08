void main(){
  final name = "arum";
  //name = "shin";//final 수정 불가
  print(name);

  late final String test;
  //do something, go to api
  test = 'later';
  print(test);

  const birthday = 0323;
  print(birthday);

  var x;
  x=1;
  int i = 12;
  x='x';
  dynamic anything;
  anything = 'String';
  anything = 1;
  anything = true;

  String? temp1 = 'temp1';
  temp1 = null;
  temp1?.isEmpty;
  print(temp1);
  print(temp1?.isEmpty);

  bool alive = true;
  int age = 34;
  double money = 1.23;

  num y = 12;
  y=1.1;
  
}