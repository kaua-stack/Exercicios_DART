void main(){
  
  Map<String,double> notas = {'kaua':9.9, 'israel': 8.8, 'jonathan':7.7 };

  for(String nome in notas.keys){
    print('nome do aluno é : $nome');
  }
  
   for( var nota in notas.values){
    print('nota do aluno é : $nota');
  }


  for(String nome in notas.keys){
    print("nome do aluno é : $nome e a nota e ${notas[nome]}");
  }




}