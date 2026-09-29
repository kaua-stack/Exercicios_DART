import 'dart:math';

void main(){
  int Resultado = somar(2,3);
  print(Resultado);

  print('o resultdado da soma aleatorio e ');
  print(SomarNumerosAleatorios());
  
  print("O resultado da soma aleatória e: ${SomarNumerosAleatorios()}");

  var somaAleatoria = SomarNumerosAleatorios();
  print('Usando a variável somaAleatoria: $somaAleatoria');


}

int somar(int n1, int n2){
  return n1 + n2;
}

int SomarNumerosAleatorios(){
  int n1 = Random().nextInt(10);
  int n2 = Random().nextInt(10);
  return n1 + n2;
}


