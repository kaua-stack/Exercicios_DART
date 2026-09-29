import 'dart:io';

void main() {


  print("Digite um número de 1 até 7 para saber o dia da semana");
  
  String? entrada = stdin.readLineSync();


  while (int.tryParse(entrada!) == null) {
    print('Apenas números: IMBECIL'); entrada = stdin.readLineSync();
  }

  int numero = int.parse(entrada);

  switch (numero) {
    case 1:
      print('Domingo');
      break;

    case 2:
      print('Segunda');
      break;

    case 3:
      print('Terça');
      break;

    case 4:
      print('Quarta');
      break;

    case 5:
      print('Quinta');
      break;

    case 6:
      print('Sexta');
      break;

    case 7:
      print('Sábado');
      break;

    default:
      print('Número inválido');
  }
}