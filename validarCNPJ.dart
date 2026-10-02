void main() {
  String cnpj = "04.252.011/0001-10";

  if (validarCnpj(cnpj)) {
    print("CNPJ válido!");
  } else {
    print("CNPJ inválido!");
  }
}

bool validarCnpj(String cnpj) {
  // Remove caracteres de formatação
  cnpj = cnpj.replaceAll('.', '');
  cnpj = cnpj.replaceAll('/', '');
  cnpj = cnpj.replaceAll('-', '');

  // Deve possuir 14 dígitos
  if (cnpj.length != 14) {
    return false;
  }

  // Verifica se todos são números
  for (int i = 0; i < cnpj.length; i++) {
    if (int.tryParse(cnpj[i]) == null) {
      return false;
    }
  }

  // Rejeita CNPJs com todos os números iguais
  bool todosIguais = true;

  for (int i = 1; i < cnpj.length; i++) {
    if (cnpj[i] != cnpj[0]) {
      todosIguais = false;
      break;
    }
  }

  if (todosIguais) {
    return false;
  }

  // Calcula o primeiro dígito verificador
  int digito1 = calcularPrimeiroDigito(cnpj);

  // Calcula o segundo dígito verificador
  int digito2 = calcularSegundoDigito(cnpj, digito1);

  // Compara com os dígitos informados
  return digito1 == int.parse(cnpj[12]) &&
      digito2 == int.parse(cnpj[13]);
}

int calcularPrimeiroDigito(String cnpj) {
  List<int> pesos = [
   5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2
  ];

  int soma = 0;

  for (int i = 0; i < 12; i++) {
    soma += int.parse(cnpj[i]) * pesos[i];
  }

  int resto = soma % 11;

  if (resto < 2) {
    return 0;
  }

  return 11 - resto;
}

int calcularSegundoDigito(String cnpj, int primeiroDigito) {
  List<int> pesos = [
   6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2
  ];

  String cnpjBase = cnpj.substring(0, 12) + primeiroDigito.toString();

  int soma = 0;

  for (int i = 0; i < 13; i++) {
    soma += int.parse(cnpjBase[i]) * pesos[i];
  }

  int resto = soma % 11;

  if (resto < 2) {
    return 0;
  }

  return 11 - resto;
}