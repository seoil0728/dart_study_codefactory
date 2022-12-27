void main() {
  List<String> blackpink = ['Rosse', 'Jisu', 'Lisa', 'Jenny'];

  print(blackpink);
  print(blackpink.asMap());
  print(blackpink.toSet());

  Map blackpinkMap = blackpink.asMap();
  print(blackpinkMap.keys.toList());
  print(blackpinkMap.values.toList());

  Set blackpinkSet = Set.from(blackpink);
  print(blackpinkSet);
  print(blackpinkSet.toList());

  final newbp = blackpink.map((x) {
    return 'blackpink $x';
  });

  print(blackpink);
  print(newbp.toList());

  final newbp2 = blackpink.map((x) => 'blackpink $x');
  print(newbp2.toList());

  // to [1.jpg, 2.jpg, 3.jpg ...]
  String number = '123456';
  final parsed = number.split('').map((x) => '$x.jpg').toList();
  print(parsed);

  Map<String, String> harryPotter = {
    'Harry Potter': '해리 포터',
    'Ron Weasley': '론 위즐리',
    'Hermione Granger': '해르미온느 그레인저'
  };

  final result = harryPotter.map(
    (key, value) => MapEntry(
      'Harry Potter Character $key',
      '해리포터 캐릭터 $value',
    ),
  );

  print(result);

  final keys = harryPotter.keys.map((x) => 'HPC $x').toList();
  final values = harryPotter.values.map((x) => '캐릭터 $x').toList();
  print(keys);
  print(values);

  // where
  List<Map<String, String>> people = [
    {
      'name': 'roze',
      'group': 'blackpink',
    },
    {
      'name': 'Jisu',
      'group': 'blackpink',
    },
    {
      'name': 'Jin',
      'group': 'BTS',
    },
    {
      'name': 'V',
      'group': 'BTS',
    }
  ];

  print(people);

  final inBlackPink = people.where((x) => x['group'] == 'blackpink');
  final inBTS = people.where((x) => x['group'] == 'BTS');
  print(inBlackPink);
  print(inBTS);

  // reduce
  // prev : 맨 처음에만 제일 처음 값, 다음 루프부턴 함수의 리턴 값
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7];
  final nubma = numbers.reduce((prev, next) {
    print('----new loop----');
    print('previous = $prev');
    print('next = $next');
    print('total = ${prev + next}');

    return prev + next;
  });

  print(nubma);

  List<String> myname = ['hello', 'my', 'name', 'is', 'KSW'];
  final sentence = myname.reduce((prev, next) => prev + next);
  print(sentence);

  // reduce가 실행되지 않는 상황
  // 최초 멤버의 type과 reduce 함수의 리턴 값이 같은 type이어야 한다.

  // fold
  final sum = numbers.fold<int>(0, (prev, next) {
    print('---new loop---');
    print('previous = $prev');
    print('next = $next');
    print('total = ${prev + next}');

    return prev + next;
  });

  print(sum);

  final sentex = myname.fold<String>('', (prev, next) => prev + next);
  print(sentex);

  final sentexlength = myname.fold<int>(0, (prev, next) => prev + next.length);
  print(sentexlength);

  // cascading operator
  // ...
  List<int> even = [2, 4, 6, 8];
  List<int> odd = [1, 3, 5, 7];

  print([even, odd]);
  print([...even, ...odd]);

  // is it same?
  print(even);
  print([...even]);
  print(even == [...even]);

  // use people list

  print(people);
  print('---make person class---');
  final parsedPerson = people
      .map((x) => Person(
            name: x['name']!,
            group: x['group']!,
          ))
      .toList();

  print(parsedPerson);
  
  for (Person person in parsedPerson) {
    print(person.name);
    print(person.group);
  }
}

class Person {
  final String name;
  final String group;

  Person({required this.name, required this.group});

  @override
  String toString() {
    return 'Person(name : $name, group : $group)';
  }
}
