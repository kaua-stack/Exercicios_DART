import 'dart:io';

void main() {
  // Pedindo o documento para o usuário
  stdout.write('Digite um CPF ou CNPJ: ');
  String documento = stdin.readLineSync() ?? '';

  // Remove pontos, traços, barras e espaços
  documento = documento.replaceAll(RegExp(r'[^0-9]'), '');

  // Verifica se é um CPF
  if (documento.length == 11) {
    if (validarCPF(documento)) {
      print('Cadastro realizado: Pessoa Física');
    } else {
      print('CPF inválido!');
    }
  }
  // Verifica se é um CNPJ
  else if (documento.length == 14) {
    if (validarCNPJ(documento)) {
      print('Cadastro realizado: Pessoa Jurídica');
    } else {
      print('CNPJ inválido!');
    }
  }
  // Caso não tenha 11 nem 14 dígitos
  else {
    print('Documento deve ser CPF ou CNPJ.');
  }
}

// Função para validar CPF
bool validarCPF(String cpf) {
  int soma = 0;
  int peso = 10;

  // Calcula o primeiro dígito verificador
  for (int i = 0; i < 9; i++) {
    soma += int.parse(cpf[i]) * peso;
    peso--;
  }

  int resto = soma % 11;
  int digito1 = 11 - resto;

  if (digito1 >= 10) {
    digito1 = 0;
  }

  // Zera a soma para calcular o segundo dígito
  soma = 0;
  peso = 11;

  // Calcula o segundo dígito verificador
  for (int i = 0; i < 10; i++) {
    soma += int.parse(cpf[i]) * peso;
    peso--;
  }

  resto = soma % 11;
  int digito2 = 11 - resto;

  if (digito2 >= 10) {
    digito2 = 0;
  }

  // Compara os dígitos calculados com os informados
  if (digito1 == int.parse(cpf[9]) && digito2 == int.parse(cpf[10])) {
    return true;
  }

  return false;
}

// Função para validar CNPJ
bool validarCNPJ(String cnpj) {
  List<int> pesos1 = [5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2];
  List<int> pesos2 = [6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2];

  int soma = 0;

  // Calcula o primeiro dígito verificador
  for (int i = 0; i < 12; i++) {
    soma += int.parse(cnpj[i]) * pesos1[i];
  }

  int resto = soma % 11;
  int digito1 = 11 - resto;

  if (digito1 >= 10) {
    digito1 = 0;
  }

  // Zera a soma para calcular o segundo dígito
  soma = 0;

  // Calcula o segundo dígito verificador
  for (int i = 0; i < 13; i++) {
    soma += int.parse(cnpj[i]) * pesos2[i];
  }

  resto = soma % 11;
  int digito2 = 11 - resto;

  if (digito2 >= 10) {
    digito2 = 0;
  }

  // Compara os dígitos calculados com os informados
  if (digito1 == int.parse(cnpj[12]) && digito2 == int.parse(cnpj[13])) {
    return true;
  }

  return false;
}
