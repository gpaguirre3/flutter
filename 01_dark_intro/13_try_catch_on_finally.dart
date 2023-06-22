void main () async {
  print('inicio del progrma');
  
  try{
    
    final value = await httpGet('https://google.com');
    print ('Exito $value');
    
  }on Exception catch(err) {
    print('tenemos una exception: $err');
  }catch(err){
    print('upps el error: $err');
  }finally{
    print(' fin del try y catch');
  }
  
  

  print('fin del programa');
}

Future <String> httpGet (String url) async{
  
  await Future.delayed(const Duration (seconds: 1));
  
  throw Exception('No ahi parametros en el URL');
  
  //throw 'Error en la peticion';
  //return 'Tenemos un valor de la peticion';
  
}