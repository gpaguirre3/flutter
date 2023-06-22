void main(){
  
  final Map<String, dynamic> rawJson={
    'name':'tonny Stark',
    'power': 'money',
    'isAlive': true
  };
  
  final ironMan =Hero.fromJson(rawJson);
  
//  final ironMan = Hero(
//   isAlive: rawJson['isAlive2'] ?? false,
//    power: 'Money',
//    name: 'tonny Stark'
//  );
  
  
  
  print(ironMan);
  
}

class Hero {
  
  String name;
  String power;
  bool isAlive;
  
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'no name found',
      power = json['power'] ?? 'no power found',
      isAlive =json['isAlive'] ?? 'no isAlive found';
  
  
  @override
  String toString(){
    return '$name, $power, isAlive ${isAlive ? 'YES':'NO'}';
  }
}