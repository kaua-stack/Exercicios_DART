/* 3 - Calculadora simples
Crie uma calculadora de terminal.
1 - Somar
2 - Subtrair
3 - Multiplicar
4 - Dividir   usuario escolher qual operaçao quewr */

import 'dart:io';
void main() {

  int opcao = 0;
  while (opcao != 5) {

    print(" ==== CALCULADORA SENAC DART ====");

    print('Digite o primeiro número: ');
    int numero1 = int.parse(stdin.readLineSync()!);

    print('Digite o segundo número: ');
    int numero2 = int.parse(stdin.readLineSync()!);

    print('''
    Escolha uma opção:
    1 - Somar
    2 - Subtrair
    3 - Multiplicar
    4 - Dividir
    5 - Sair
    ''');

    opcao = int.parse(stdin.readLineSync()!);

    var somar = numero1 + numero2;
    var subtrair = numero1 - numero2;
    var multiplicar = numero1 * numero2;

    if (opcao == 1) {
      print('Resultado da soma: $somar');

    } else if (opcao == 2) {

      print('Resultado da subtração: $subtrair');

    } else if (opcao == 3) {

      print('Resultado da multiplicação: $multiplicar');

    } else if (opcao == 4) {

      if (numero2 != 0) {
        var dividir = numero1 / numero2;
        print('Resultado da divisão: $dividir');
      } else {
        print('Não é possível dividir por zero!');
      }

    } else if (opcao == 5) {

      print('Calculadora encerrada!');

    } else {

      print('Opção inválida!');

    }
  }
}



