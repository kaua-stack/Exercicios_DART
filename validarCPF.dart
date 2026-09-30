import 'dart:io';

void main() {

  print('Digite o CPF:');
  String cpf = stdin.readLineSync()!;

  while (cpf.length > 11) {
    print('O CPF deve ter no máximo 11 números. Digite novamente:');
    cpf = stdin.readLineSync()!;

    if (validarCPF(cpf)) {
      print("CPF válido!");
    } else {
      print("CPF inválido!");
    }
  }
}

bool validarCPF(String cpf) {

  // Remove pontos e hífen
  cpf = cpf.replaceAll('.', '').replaceAll('-', '');

  // Verifica se possui 11 dígitos
  if (cpf.length != 11) {
    return false;
  }

  // Rejeita CPFs com todos os números iguais
  bool todosIguais = true;

  for (int i = 1; i < cpf.length; i++) {
    if (cpf[i] != cpf[0]) {
      todosIguais = false;
      break;
    }
  }

  if (todosIguais) {
    return false;
  }


  // Primeiro dígito

  int soma = 0;
  int total = 10;

  for (int i = 0; i < 9; i++) {
    soma += int.parse(cpf[i]) * total;
    total--;
  }

  int resto = soma % 11;
  int digito1 = 11 - resto;

  if (digito1 == 10 || digito1 == 11) {
    digito1 = 0;
  }


  // Segundo dígito

  soma = 0;
  total = 11;

  for (int i = 0; i < 10; i++) {
    soma += int.parse(cpf[i]) * total;
    total--;
  }

  resto = soma % 11;
  int digito2 = 11 - resto;

  if (digito2 == 10 || digito2 == 11) {
    digito2 = 0;
  }

  // Compara os dígitos calculados
  if (digito1 == int.parse(cpf[9]) &&
      digito2 == int.parse(cpf[10])) {
    return true;
  }

  return false;
}