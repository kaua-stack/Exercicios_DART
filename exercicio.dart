import 'dart:math';

void main(){
   var nota = Random().nextInt(11);
  print("a nota sorteada foi $nota");
  
  switch(nota){
    case 10: 
        print("parabens quadro de honra ");
        case 7: 
        case 6: 
        case 5: 
      break;
    case 4:   
      print('recuperaçao ');
    break;
    case 0:
      print('reprovado');
    break;

    default:
    print('nota invalida');
  }







}