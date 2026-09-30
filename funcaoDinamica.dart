void main() {
  String retorno = concatenar(1, 9);
  
  print("O retorno com a concatenação e: $retorno");

  concatenar('Boa ', 'Noite');
}

String concatenar(dynamic a , b)
{
  print((a.toString() + b.toString()));
  return a.toString() + b.toString();
}