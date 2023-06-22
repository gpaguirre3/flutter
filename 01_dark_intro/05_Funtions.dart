void main(){
  print(greetEveryone() );
  
  print('suma: ${addTwoNumbers(10 , 20)}');
  
  print(greetPerson( name: 'gabriel', message: 'que mas' ));
}

String greetEveryone() => 'hello everyone';

int addTwoNumbers(int a, int b) => (a+b);


int addTwoNumbersOptional(int a, [int? b]){
  
  b ??= 0;
  
  return a+b;
}



String greetPerson({required String name, String message = 'hola,'}){
  
  return '$message gabriel';
}
