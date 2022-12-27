void main() async {
  // Synchronous Programming
  print('This is Synchronous Programming');
  addNumber(1,2);
  addNumber(2,4);
  
  
  print('We will gonna do Asynchronous Programming');
  
  // Future
  // 미래에 받아올 값
  Future<String> name = Future.value('codeFactory');
  Future<int> value = Future.value(1);
  Future<bool> isTrue = Future.value(true);
  
  // delayed = 2 parameter
  // 1st = delay time Duration
  // 2nd = function after delay
  print('delay start');
  Future.delayed(Duration(seconds : 2), () {
    print('delay finished');
  });
  
  
  // addNumbers(1, 1);
  // function finished가 먼저 실행됐다.
  // Future delay가 실행되는 순간
  // 기다리지 않고 우선 다음 함수를 실행한다.
  
  // addNumbers(1,1);
  // addNumbers(2,2);
  
  // await
  // 실제 함수 안에서 순서를 활용해야하는 경우
  // you should to use async keyword.
  print('');
  print('use await');
  
  addNumbersA(1,1);
  addNumbersA(2,3);
  
  // 논리적인 순서를 지키면서, 다음 코드들을 실행할 수 있다.
  // 그렇다면 두 함수를 순서를 지키면서 실행하고 싶다면?
  
  // main에 async를 하면?
  print('main async');
  await addNumbersAs(1,2);
  await addNumbersAs(3,4);
  
  // return value in async
  final result1 = await getAddNumbers(3, 6);
  final result2 = await getAddNumbers(4, 6);
  print('$result1, $result2');
  
  
 
  
}

void addNumber(int num1, int num2) {
  print('cals.. $num1 + $num2');
  
  print('result : ${num1 + num2}');
}

void addNumbers(int num1, int num2) {
  print('cals.. $num1 + $num2');
  
  // Server Simulation
  Future.delayed(Duration(seconds : 2), (){
    print('result : ${num1 + num2}');
  });
  
  print('function finished, $num1 + $num2');
}


void addNumbersA(int num1, int num2) async {
  print('cals.. $num1 + $num2');
  
  // Server Simulation
  await Future.delayed(Duration(seconds : 2), (){
    print('result : ${num1 + num2}');
  });
  
  print('function finished, $num1 + $num2');
}


Future<void> addNumbersAs(int num1, int num2) async {
  print('cals.. $num1 + $num2');
  
  // Server Simulation
  await Future.delayed(Duration(seconds : 2), (){
    print('result : ${num1 + num2}');
  });
  
  print('function finished, $num1 + $num2');
}


// return type
Future<int> getAddNumbers(int num1, int num2) async {
  print('cals.. $num1 + $num2');
  
  // Server Simulation
  await Future.delayed(Duration(seconds : 2), (){
    print('result : ${num1 + num2}');
  });
  
  print('function finished, $num1 + $num2');
  
  return num1 + num2;
}