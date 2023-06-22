void main () async {
  print('inicio del progrma');
  
  try{
    
    final value = await httpGet('https://google.com');
    print (value);
    
  }catch(err){
    print('tenemos el error: $err');
  }
  
  

  print('fin del programa');
}

Future <String> httpGet (String url) async{
  
  await Future.delayed(const Duration (seconds: 1));
  
  throw 'Error en la peticion';
  //return 'Tenemos un valor de la peticion';    

}