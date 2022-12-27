// class Idol
// name
// members
// sayHello
// introduce
class Idol {
  final String name;	// immutable
  final List<String> members;	// immutable
  
  const Idol(String name, List<String> members) 
    : this.name = name,
  		this.members = members;
  
  void sayHello() {
    print('Hello, this is ${this.name}.');
  }
  
  void introduce() {
    print('member List is ${this.members}.');
  }
}


class SimpleIdol {
  final String name;
  final List<String> members;
  
  SimpleIdol(this.name, this.members);
  
  SimpleIdol.fromList(List value)
    :	this.members = value[0],
  		this.name = value[1];
  
  void sayHello() {
    print('Hello, this is ${this.name}.');
  }
  
  void introduce() {
    print('member List is ${this.members}.');
  }
}


// getter, setter
// get data, set data

class GetsetIdol {
  String name;
  List<String> members;
  
  GetsetIdol(this.name, this.members);
  
  GetsetIdol.fromList(List value)
    :	this.members = value[0],
  		this.name = value[1];
  
  void sayHello() {
    print('Hello, this is ${this.name}.');
  }
  
  void introduce() {
    print('member List is ${this.members}.');
  }
  
  // getter
  String get firstMember{
    return this.members[0];
  }
  
  // setter
  set firstMember(String name) {
    this.members[0] = name;
  }
}


// private
// use underscore

class _PvIdol {
  String name;
  List<String> members;
  
  _PvIdol(this.name, this.members);
  
  _PvIdol.fromList(List value)
    :	this.members = value[0],
  		this.name = value[1];
  
  void sayHello() {
    print('Hello, this is ${this.name}.');
  }
  
  void introduce() {
    print('member List is ${this.members}.');
  }
  
  // getter
  String get firstMember{
    return this.members[0];
  }
  
  // setter
  set firstMember(String name) {
    this.members[0] = name;
  }
}

// inheritance

class IhIdol {
  String name;
  int memberCount;
  
  IhIdol({
    required this.name,
    required this.memberCount,
  });
  
  void sayHello() {
    print('this is ${this.name}.');
  }
  
  void sayMbCount() {
    print('Member Count is ${this.memberCount}');
  }
}


class BoyGroup extends IhIdol {
  BoyGroup(
    String name,
  	int memberCount
  ):super(
  			name: name,
  			memberCount : memberCount
  	);
  
  void sayMale()  {
    print('this is boygroup');
  }
}

class GirlGroup extends IhIdol {
  GirlGroup(
    String name,
  	int memberCount
  ):super(
  			name: name,
  			memberCount : memberCount
  	);
  
  void sayFemale()  {
    print('this is girlgroup');
  }
}


// method override
class TimesTwo {
  final int number;
  
  TimesTwo(
  this.number
  );
  
  int calculate() {
    return number * 2;
  }
}

class TimesFour extends TimesTwo {
  TimesFour (
  	int number,
  ) : super(number);
  
  @override
  int calculate() {
    return super.number * 4;
  }
}


// Static
class Employee {
  // static은 instance에 귀속되지 않고 class에 귀속된다.
  static String? building;
  final String name;
  
  Employee(
  	this.name,
  );
  
  void printNameAndBuilding() {
    print('My name is $name. and I work in $building building.');
  }
  
  static void printBuilding() {
    print('I work in $building building.');
  }
}

// interface
// dart dont have original interface keyword
// abstract = do not use instance
abstract class IdolInterface {
  String name;
  IdolInterface(this.name);
  void sayName() {}
}

class BGroup implements IdolInterface {
  String name;
  BGroup(this.name);
  void sayName() {
    print('My Name is $name');
  }
}

class GGroup implements IdolInterface {
  String name;
  GGroup(this.name);
  void sayName() {
    print('My Name is $name');
  }
}


// generic
// 타입을 외부에서 받기 위해 사용

class Lecture<T> {
  final T id;
  final String name;
  
  Lecture(this.id, this.name);
  
  void printIdType() {
    print(id.runtimeType);
  }
}

void main() {
  Idol blackpink = const Idol('blackpink', ['Jisu', 'Jenny', 'Lisa', 'Rosse']);
  blackpink.sayHello();
  blackpink.introduce();
  
  Idol bts = const Idol('BTS', ['RM', 'Jimin', 'JungGuk', 'JayHope', 'Sugar', 'V','Jin']);
  bts.sayHello();
  bts.introduce();
  
  SimpleIdol gc = SimpleIdol.fromList([
    ['Minheon', 'SW', 'TJoon', 'nams'],
    'GuitarChinno']
  );
  
  gc.sayHello();
  gc.introduce();
  
  
  print('----Constant----');
  Idol bp1 = Idol('bp', ['m1', 'm2', 'm3', 'm4']);
  Idol bp2 = Idol('bp', ['m1', 'm2', 'm3', 'm4']);
  
  print(bp1 == bp2);
  
  Idol cbp1 = const Idol('cbp', ['m1', 'm2', 'm3', 'm4']);
  Idol cbp2 = const Idol('cbp', ['m1', 'm2', 'm3', 'm4']);
  
  print(cbp1 == cbp2);
  
  print('----getter,setter----');
  GetsetIdol gsbp = GetsetIdol('gsbp', ['m1', 'm2', 'm3', 'm4']);
  print(gsbp.firstMember);
  
  gsbp.firstMember = 'member1';
  print(gsbp.firstMember);
  
  
  print('----private----');
  _PvIdol pvbp = _PvIdol('pvbp', ['m1', 'm2', 'm3', 'm4']);
  print(pvbp.firstMember);
  
  print('----inheritance----');
  IhIdol apink = IhIdol(name : 'APink', memberCount : 5);
  apink.sayHello();
  apink.sayMbCount();
  
  BoyGroup btss = BoyGroup('BTS', 7);
  btss.sayHello();
  btss.sayMbCount();
  btss.sayMale();
  
  GirlGroup rv = GirlGroup('RedVelvet', 5);
  rv.sayHello();
  rv.sayMbCount();
  rv.sayFemale();
  
  print('----Type Comparison----');
  print(apink is IhIdol);
  print(apink is BoyGroup);
  print(apink is GirlGroup);
  
  print(btss is IhIdol);
  print(btss is BoyGroup);
  print(btss is GirlGroup);
  
	print(rv is IhIdol);
  print(rv is BoyGroup);
  print(rv is GirlGroup);
  
  print('');
  print('----method override----');
  TimesTwo tt = TimesTwo(2);
  print(tt.calculate());
  
  TimesFour tf = TimesFour(2);
  print(tf.calculate());
  
  print('');
  print('----Static----');
  Employee chorong = Employee('chorong');
  Employee seulgi = Employee('seulgi');
  
  Employee.building = 'OKTower';
  
  chorong.printNameAndBuilding();
  seulgi.printNameAndBuilding();
  // static method
  Employee.printBuilding();
  
  print('');
  print('----interface----');
  BGroup bs = BGroup('bs');
  GGroup gs = GGroup('gs');
  bs.sayName();
  print(bs is IdolInterface);
  
  print('');
  print('----generic----');
  Lecture<int> lec1 = Lecture(123, 'lecture');
  Lecture<String> lec2 = Lecture('123', 'lecture');
  
  lec1.printIdType();
  lec2.printIdType();
  
}