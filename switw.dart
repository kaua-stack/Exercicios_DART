import 'dart:io';

void main( ){
  print("digite um numero de 1 ate 7 para saber o dia da semana");
  var numero = int.parse(stdin.readLineSync()!);

  switch(numero){
    case 1 :
      print('domingo');
    break;
    case 2 :
      print('segunda');
    break;
    case 3 :
      print('terça');
    break;
    case 4 :
      print('quarta');
    break;
    case 5 :
      print('quinta');
    break;
    case 6 :
      print('sexta');
    break;
    case 7 :
      print('sabado');
    break;

    default:
    print('numero invalido');
  }


}