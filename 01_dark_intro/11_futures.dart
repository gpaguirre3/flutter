void main (){
  print('inicio del progrma');
  
  httpGet('https://google.com').then(
    (value){
    print(value);
  }).catchError((err){
    print('Error: $err');
  });
  print('fin del programa');
}

Future <String> httpGet (String url){
  
  return Future.delayed(const Duration (seconds: 1),(){
   throw 'error en la peticion http'; 
 //   return 'Respuesta de la peticion http: ';
  });
}