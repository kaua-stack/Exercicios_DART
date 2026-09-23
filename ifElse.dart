import 'dart:math';

void main(){

var nota = Random().nextInt(11);
print('nota Selecionada foi : $nota'); 

if(nota >= 7){
  print('Aluno Aprovado!!');
} else if(nota >= 5) {
  print('Aluno Recuperaçao!!!');
} else if (nota >= 4){
  print('Aluno Recuperaçao mais + trabalho');
} else {
  print('Aluno esta Reprovado');
}



/*if (true)
  {
    print('teste do IF');
    print('teste if -2');
  }*/

}

