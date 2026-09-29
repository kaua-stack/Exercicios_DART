import 'dart:async';
import 'dart:math';


void main(){
  int a =5 ;
  int b = 6;
  int c = 7;
  int d = 3;

  somaComPrint(a, b);
  somaComPrint(c, d);
  somaDoisNumerosAleatorios();
  calcularMedia(8.8,8.1,8.9);
  gerarNumeros();
}

// quando a funcao for sem retorno deixar como void 
void somaComPrint( int n1, int n2){
  print("a soma de $n1 + $n2 =");
  print(n1 + n2);
  print('\n');
}


// funçao sem parametros !! 
void somaDoisNumerosAleatorios(){

  print('======== SOMAR DOIS NUMEROIS ALEATORIOS ===== \n');
  int n1 = Random().nextInt(11);
  int n2 = Random().nextInt(11);

  print('a soma dos numeros aleatorios sao : $n1 + $n2 =');
  print(n1 + n2 );
  print('\n');

}

void calcularMedia(double n1, double n2 ,double n3){
  print('======= CALCULAR A MEDIA DE UMA ALUHNO ===== \n');

    double media = (n1 + n2 + n3)/3;
    print('a media do aluno é : $media');

    if(media >= 7){
      print('o aluno foi aprovado!');
    }else {
      print('o aluno foiu reprovado! \n');
    }
}



void gerarNumeros(){
  print('============= GERAR NUMEROS ALEATORIOS SOMAR E MOSTRAR O MAIOR ====  \n');

  int n1 = Random().nextInt(21);
  int n2 = Random().nextInt(21);
  int n3 = Random().nextInt(21);
  
  print('a soma dos numeros aleatorios $n1 + $n2 + $n3 sao =');
  print(n1 + n2 + n3);

  if(n1 > n2 && n1 > n3){
    print("o numero $n1 e mais que os outros numeros ");
  }else if(n2 > n1 && n2 > n3){
    print('o numero $n2 e maior que os outros numeros');
  }else{
    print('o numero $n3 e maior quer os outros numeros ');
  };


// int maior - max(n1,max(n2, n3)); 
}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   