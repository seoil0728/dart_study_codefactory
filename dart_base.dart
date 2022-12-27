enum Status {
  approved,
  pending,
  rejected,
}

void main() {
  print('Hello World');
  
  
  // variable
  
  var name = 'KSW';
  print(name);
  
  name = 'tontell';
  print(name);
  
  // integer
  
  int num01 = 1;
  print(num01);
  
  int num02 = 15;
  
  print(num02);
  
  print(num02 - num01);
  
  // double
  
  double dble01 = 2.5;
  double dble02 = 0.5;
  
  print(dble01 - dble02);
  
  
  // boolean
  bool isGet = true;
  bool isNotGet = false;
  
  print(isGet);
  print(isNotGet);
  
  // string
  String strname01 = 'stringName';
  String strname02 = 'kswtontell';
  
  print(strname01.runtimeType);
  print(name.runtimeType);
  
  print(strname01 + ' ' + strname02 + ' ' + name);
  
  print('${name} ${strname01} is ${strname02}');
  
  // dynamic
  dynamic dn = 'dynamics';
  var vardn = 'dynamics';
  
  print(dn.runtimeType);
  print(vardn.runtimeType);
  
  dn = 1;
  // error in var
  // vardn = 1;
  
  
  
  // nullable, non-nullable
  String? nullname = 'nullname';
  print(nullname);
  nullname = null;
  print(nullname);
  
  nullname = 'non-nullable';
  print(nullname!);
  
  
  // final
  // final variable cannot change value
  final String fname = 'finalname';
  print(fname);
  
  // const
  // const variable cannot change value
  
  const String cname = 'constname';
  print(cname);
  
  // DateTime
  DateTime now = DateTime.now();
  print(now);
  
  // final vs const
  // final dont have to get build-time
  // but const have to know build-time
  
  // operator
  
  int number01 = 2;
  print(number01 + 2);
  print(number01 - 2);
  print(number01 * 2);
  print(number01 / 2);
  
  print(number01 % 2); // 나머지
  print(number01 % 3);
  
  print('======================');
  print(number01);
  
  number01 ++;
  print(number01);
  print(number01++);
  print(number01);
  
  
  double dbnumber01 = 4.0;
  dbnumber01 += 1;
  print(dbnumber01);
  
  dbnumber01 * 2;
  print(dbnumber01);
  
  double? dbnumber02  = 2.0;
  print(dbnumber02);
  dbnumber02 = null;
  print(dbnumber02);
  
  // ??= if null, change value, else, dont change
  dbnumber02 ??= 3.0;
  print(dbnumber02);
  
  
  // >
  
  print(dbnumber01 > dbnumber02);
  
  // is type
  print(dbnumber01 is int);
  print(dbnumber01 is String);
  
  
  // List
  List<String> strlist = ['tontell', 'ksw', 'test'];
  print(strlist);
  print(strlist[0] + ' ' + strlist[2]);
  print(strlist.length);
  strlist.add('guitarchino');
  print(strlist);
  print(strlist.first + ' ' + strlist.last);
  print(strlist.indexOf('ksw'));
  
  // Map
  // Key : Value
  Map<int, String> dict = {
    5 : 'tontell',
    3 : 'ksw',
    1 : 'test'
  };
  
  print(dict);
  
  dict.addAll({
    2 : 'guitarchino'
  });
  print(dict);
  print(dict[5]);
  
  dict.remove(1);
  print(dict);
  
  print(dict.keys);
  print(dict.values);
  
  // Set
  final Set<String> shapes = {'Star', 'Triangle', 'Square'};
  print(shapes);
  shapes.add('Star');
  shapes.add('Pentagon');
  print(shapes);
  
  
  // if
  int ifnum = 4;
  if(ifnum % 2 == 0) {
    print('ifnum is even number');
  }else {
    print('ifnum is odd number');
  }
  
  String ifstr = 'Ts';
  if(ifstr == 'ts') {
    print('ts');
  }else if(ifstr == 'tS') {
    print('tS');
  }else if(ifstr == 'Ts') {
    print('Ts');
  }else {
    print('Whatever');
  }
  
  
  // switch
  int nube = 3;
  switch(nube % 3) {
    case 0:
      print('0 set');
      break;
    case 1:
      print('1 set');
      break;
    default:
      print('whatever');
      break;
  }
  
  // loop
  for(int i = 0; i < 10; i++){
    print('$i count');
  }
  
  int total = 0;
  
  List<int> lsnum = [1, 3, 4, 6, 7];
  for(int nums in lsnum) {
    total += nums;
  }
  print(total);
  
  
  int wlnum = 0;
  while(wlnum < 10) {
    wlnum += 1;
    print(wlnum);
  }
  
  int dowlnum = 0;
  
  do {
    dowlnum += 1;
  } while(dowlnum < 10);
  
  print(dowlnum);
  
  
  // continum
  // skip current loop
  for(int i = 0; i < 10; i++) {
    if(i % 2 == 0) {
      continue;
    }
    print(i);
  }
  
  // enum
  // 정확한 몇 가지 값만 가진 경우 사용
  Status stat = Status.pending;
  if (stat == Status.approved) {
    print('apporved');
  } else if (stat == Status.pending) {
    print('pending');
  } else {
    print('rejected');
  }
  
  printfunc();
  sumAndEven(3, 5, 6);
  sumAndEven(2, 5, 6);
  
  optSumAndEven(3);
  optSumAndEven(3, 4);
  optSumAndEven(3, 4, 5);
  
  namedSumAndEven(y : 6, x : 1, z : 5);
  namedSumAndEven(y : 6, x : 1);
  
  int sums = getSum(3, 4, 5);
  print(sums);
  
  print(arrowSum(2, 4, 6));
  
  
  // typedef test
  Operation opt = add;
  int result = opt(2, 3, 5);
  print(result);
  
  opt = subtract;
  print(opt(5, 2, 1));
  
  print(calculate(3, 4, 5, add));
  print(calculate(3, 4, 5, subtract));
  
}

// function

// print functionary
printfunc() {
  print('functionary printed');
}

// get summary and check even number
sumAndEven(int x, int y, int z) {
  print(x + y + z);
  print((x + y + z) % 2 == 0);
}


// optional parameter
optSumAndEven(int x, [int y = 0, int z = 0]) {
  print(x + y + z);
  print((x + y + z) % 2 == 0);
}


// named parameter - unordered
namedSumAndEven({
  required int x,
  required int y,
  int z = 0, // optional
}) {
  print(x + y + z);
  print((x + y + z) % 2 == 0);
}

// return type
int getSum(int x, int y, int z) {
  return x + y + z;
}


// arrow function
int arrowSum(int x, int y, int z) => x + y + z;

// typedef

// signature
typedef Operation = int Function(int x, int y, int z);

int add(int x, int y, int z) => x + y + z;

int subtract(int x, int y, int z) => x - y - z;

int calculate(int x, int y, int z, Operation opt) {
  return opt(x, y, z);
}