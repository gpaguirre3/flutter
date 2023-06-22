void main (){
  final numbers = [1,2,3,4,5,5,6,7,8,8,9,9,10];
  
  
  print('Lista original $numbers');
  print('Lista original ${numbers.length}');
  print('Index 0:${numbers[0]}');
  print('first:${numbers.first}');
  print('reversed:${numbers.reversed}');
  
  final reversedNumbers = numbers.reversed;
  
  
  print('iterable; $reversedNumbers');
  print('List: ${reversedNumbers.toList()}');
  print('List: ${reversedNumbers.toSet()}');
  
  final numberGreaterThan5 = numbers.where((int num) {
    return num > 5; 
  });

  print('>5 iterable: $numberGreaterThan5');
  print('>5 set: ${numberGreaterThan5.toSet()}');

}