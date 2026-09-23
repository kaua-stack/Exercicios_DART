void main(){
  for (int j = 0; j < 10; j++){
    print('j = $j');
  }

  print('================================' );

  int k = 0;

  for (; k <= 10; k++){
   print('k = $k');
  }

  print('valor de $k \n');

  print('================================');

  var notas = [9.7,5.5, 7.3, 8.9, 10.0, 6.0];

  for( var i = 0; i < 5 ; i++){
    print('o valor da nota e :  ${notas[i]} ');
  }

  print('============== OU =================='); 

  for( var i = 0; i < notas.length ; i++){
    print('o valor da nota e :  ${notas[i]}');
  }

  print('\n');

  print('============= SOMAR QUANTIDADE DE PARES=================== ');

  int quantidadePares = 0;

  for (int i = 1; i <= 50; i++){
    if (i % 2 == 0) {
      quantidadePares++;
    }
  } 

  print("Existem $quantidadePares números pares entre 1 e 50. \n");


  print('============= SOMAR OS NUMEROS DE 1 ATE 100 ===================');

  int calculars = 0;

  for(int i = 1 ; i <= 1000 ; i++){
    calculars = calculars + i;
  }
  print(' o resultado da soma de 1 ate 1000 e : $calculars \n');

   print('================================');
  
  






















}