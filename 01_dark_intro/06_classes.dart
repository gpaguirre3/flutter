void main (){
  
  final wolverine = Hero(name: 'logan', power: 'regeration');
  
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
  
}

class Hero{
  
  String name;
  String power;
  
  Hero({
    required this.name, 
    required this.power
    });
  
//  Hero(String pName, String pPower)
//    : name = pName,
//      power = pPower;
    
  @override
  String toString(){
    return '$name - $power';
  }
  
  
}