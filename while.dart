import 'dart:io';

void main() {
  int numero = -1; 
  int quantidade = 0;
  int soma = 0;

  while (numero != 0) {
    stdout.write('Digite um número (0 para sair): ');
    numero = int.parse(stdin.readLineSync()!);

    if (numero != 0) {
      quantidade++;
      soma += numero;
    }
  }

  print('\nQuantidade de números digitados: $quantidade');
  print('Soma dos números digitados: $soma');
  









}