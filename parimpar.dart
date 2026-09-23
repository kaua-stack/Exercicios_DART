/*  1 - Par ou ímpar
Solicite ao usuário um número inteiro e determine se ele é par ou ímpar.
Além disso, informe se o número é:
Positivo;
Negativo;
Zero. */

import 'dart:async';
import 'dart:io';
import 'dart:math';
void main (){
  var num = Random().nextInt(11);

  print('DIGITE UM NUMERO: ');
  int numero = int.parse(stdin.readLineSync()!);

  if(numero % 2 == 0){
    print('o nuemro e PAR');
  }else{
    print('o numero e impar');
  }

  if (numero > 0){
    print('o numero e positivo');
  }else if(numero < 0 ){
    print('o numero e negativo');
  } else {
    print('o numero e zero 0');
  }




  print('numero Selecionada foi : $num'); 
  if(num % 2 == 0 ){
    print('o numero e par !');
  } else{
    print('o numero e impar ! ');
  }

  if(num > 0){
    print('Numero e positivo');
  } else if (num < 0){
    print('o numero e negativo');
  }else{
    print('o numero e zero');
  }
}



