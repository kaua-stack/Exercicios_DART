/* Exercício 2
2 - Antecessor e sucessor
Faça um programa em que solicite ao usuário um número inteiro.
O programa deverá mostrar:
O número informado;
Seu antecessor;
Seu sucessor. */



import 'dart:async';
import 'dart:io';

void main (){
 print('DIGITE UM NUMERO: ');
  int numero = int.parse(stdin.readLineSync()!);

  var antecessor = numero + 1;
  var sucessor = numero - 1;
 
    print('o numero antecessor é: $antecessor');
    print('o numero sucessor e : $sucessor');
  }


