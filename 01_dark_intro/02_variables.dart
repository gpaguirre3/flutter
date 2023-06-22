void main (){
  
  final String pokemon = 'ditto';
  final int hp = 100;
  bool? isAlive;
  final List<String> abilities= ['impostor','golpe roca'];
  final sprites = <String> ['ditto/front.png','ditto/back.png'];

// dynamic == null
  dynamic errorMessage ='hola';
  errorMessage = true;
  errorMessage = [1,2,3,4,5];
  errorMessage = {1,2,3,4,5};
  errorMessage = ()=> true;
  errorMessage = null;
  
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  """);
 
}