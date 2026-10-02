void main(){
  saudacao(nome: 'kaua', idade: 22);
}

saudacao({String? nome, int? idade}){
  print('ola $nome vc tem $idade anos ???');
}