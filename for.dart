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



  print('============== programa que percorra os números de 1 até 100 e: Se o número for múltiplo de 3, ');
  print("  mostre múltiplo de 3; Se for múltiplo de 5, mostre múltiplo de 5  Caso contrário, mostre o próprio número \n ================== ");
  
  for (int num = 1; num <= 100; num++) {


    if(num % 3 == 0 && num % 5 == 0){
      print('$num multiplo do numnero 3 e do 5 .');
    }


    else if (num % 3 == 0) {
      print('$num é múltiplo de 3');
    } else if (num % 5 == 0) {
       print('$num é múltiplo de 5');
    } else {
      print(num);
    }
  }

  print('================================');

  for( var nota in notas){
    print("o valor da nota $nota");
  }

 

print('============= Considere as temperaturas de um processador (CPU): var temperaturas = [45, 52, 68, 75, 81, 59]; =================== \n');


  var temperaturas = [45, 52, 68, 75, 81, 59];

  for (var temperatura in temperaturas){

    if (temperatura <= 59) {
      print("$temperatura°C - Normal");
    } else if ((temperatura >= 60) && (temperatura <= 74)){
      print("$temperatura°C - Anteção");
    } else{
      print("$temperatura°C - Temperatura Elevada");
    }
  }  

 print('================================ \n');







}