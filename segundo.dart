// -list ( lista) - set (definicao) -map (definiçao) 

void main(){

// lista array que declara algumacoisa

var  aluno = ['Israel', 'Kauã', 'jonathan'];
print(aluno);
print(aluno[1]);
print(aluno.length);

print (aluno is List);



// MAP
var telefone = {
  'stefany':'+55 (11)99999-7373',
  'adenilson':'+55 (11)99999-7474 , Cidade : Sao paulo (SP)'
};

print(telefone['adenilson']);
print(telefone.length);
print(telefone.keys);
print(telefone);
print(telefone is Map);


  // SET

  var times = { 'Sao paulo', 'palmeiras', 'santos' };
  print(times.first);
  print(times.last);
  print(times.length);
  print(times);






}