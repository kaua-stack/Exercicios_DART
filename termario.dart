import 'dart:io';

void main(){

  stdout.write('Esta chovendo (S/N)');
  bool estaChovendo = stdin.readLineSync() == 's';

    stdout.write('Esta Frio (S/N)');
  bool estaFrio = stdin.readLineSync() == 's';

  String resultado = estaChovendo && estaFrio ? "Ficar em Casa ": "Sair";
  print(resultado);

}

