void main() {
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
  x = 1;
  int i = 12;
  x = 'x';
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
  y = 1.1;

  var giveMeFive = true;
  var numbers = [1, 2, 3, if (giveMeFive) 5];
  numbers.add(4);
  print(numbers);
  if (giveMeFive) {
    numbers.add(5);
  }
  print(numbers);

  List<int> numbers1 = [0, 1];
  numbers1.add(2);
  print(numbers1);

  //String interpolation
  var nm = "arum";
  var ag =  10;
  var greeting = 'Hello everyone, my name is $nm and I\'m ${ag+10}, nice to meet you!';
  print(greeting);

  //Collection For
  var oldFriends = ['junil','huchu'];
  var newFriends = ['nico','lynn', 
                   //for(var friend in oldFriends) "💖 $friend",
                   ];
  for(var friend in oldFriends) {
    newFriends.add("💖 $friend");
  } 
  print(newFriends);

  //Maps
  Map<int,bool> player = {
    1:true,
    2:false,
    3:true,
  };

  //Set
  // Dart Set -> JS Set Dart Set -> Python Set
  // Dart List -> JS Array Dart List -> Python List
  var numSet = {1,2,3,4};
  numSet.add(1);//중복 안됨
  numSet.add(1);
  numSet.add(5);
  numSet.add(5);
  print(numSet);

}
