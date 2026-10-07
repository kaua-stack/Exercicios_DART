import 'dart:io';

void main() {
  stdout.write('Digite um CPF ou CNPJ: ');
  String documento = stdin.readLineSync() ?? '';

  // Remove pontos, traços e barras
  documento = documento.replaceAll(RegExp(r'[^0-9]'), '');

  if (documento.length == 11) {
    if (validarCPF(documento)) {
      print('Cadastro realizado: Pessoa Física');
    } else {
      print('Documento inválido!');
    }
  } else if (documento.length == 14) {
    if (validarCNPJ(documento)) {
      print('Cadastro realizado: Pessoa Jurídica');
    } else {
      print('Documento inválido!');
    }
  } else {
    print('Documento deve ser um CPF ou CNPJ.');
  }
}

bool validarCPF(String cpf) {
  if (cpf.length != 11) return false;

  // Evita CPFs com todos os dígitos iguais
  if (RegExp(r'^(\d)\1*$').hasMatch(cpf)) return false;

  int soma = 0;
  int peso = 10;

  // Primeiro dígito verificador
  for (int i = 0; i < 9; i++) {
    soma += int.parse(cpf[i]) * peso;
    peso--;
  }

  int resto = soma % 11;
  int digito1 = (resto < 2) ? 0 : 11 - resto;

  // Segundo dígito verificador
  soma = 0;
  peso = 11;

  for (int i = 0; i < 10; i++) {
    soma += int.parse(cpf[i]) * peso;
    peso--;
  }

  resto = soma % 11;
  int digito2 = (resto < 2) ? 0 : 11 - resto;

  return digito1 == int.parse(cpf[9]) &&
         digito2 == int.parse(cpf[10]);
}

bool validarCNPJ(String cnpj) {
  if (cnpj.length != 14) return false;

  // Evita CNPJs com todos os dígitos iguais
  if (RegExp(r'^(\d)\1*$').hasMatch(cnpj)) return false;

  List<int> pesos1 = [5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2];
  List<int> pesos2 = [6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2];

  int soma = 0;

  // Primeiro dígito verificador
  for (int i = 0; i < 12; i++) {
    soma += int.parse(cnpj[i]) * pesos1[i];
  }

  int resto = soma % 11;
  int digito1 = (resto < 2) ? 0 : 11 - resto;

  // Segundo dígito verificador
  soma = 0;

  for (int i = 0; i < 13; i++) {
    soma += int.parse(cnpj[i]) * pesos2[i];
  }

  resto = soma % 11;
  int digito2 = (resto < 2) ? 0 : 11 - resto;

  return digito1 == int.parse(cnpj[12]) &&
         digito2 == int.parse(cnpj[13]);
}


