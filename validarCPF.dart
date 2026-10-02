void main() {
  String cpf = "529.982.247-25";

  if (validarCPF(cpf)) {
    print("CPF válido!");
  } else {
    print("CPF inválido!");
  }
}

bool validarCPF(String cpf) {
  // Remove pontos e hífen
  cpf = cpf.replaceAll('.', '').replaceAll('-', '');

  // Verifica se possui 11 dígitos
  if (cpf.length != 11) {
    return false;
  }

  // Verifica se todos os caracteres são números
  for (int i = 0; i < cpf.length; i++) {
    if (int.tryParse(cpf[i]) == null) {
      return false;
    }
  }

  // Rejeita CPF com todos os números iguais
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

  // Calcula o primeiro dígito
  int primeiroDigito = calcularDigito(cpf, 9, 10);

  // Junta os 9 números com o primeiro dígito
  String cpfCalculado = cpf.substring(0, 9) + primeiroDigito.toString();

  // Calcula o segundo dígito
  int segundoDigito = calcularDigito(cpfCalculado, 10, 11);

  // Monta o CPF completo calculado
  cpfCalculado += segundoDigito.toString();

  // Compara o CPF inteiro
  return cpf == cpfCalculado;
}

int calcularDigito(String cpf, int quantidade, int pesoInicial) {
  int soma = 0;

  for (int i = 0; i < quantidade; i++) {
    int numero = int.parse(cpf[i]);
    int peso = pesoInicial - i;

    soma += numero * peso;
  }

  int resto = soma % 11;
  int digito = 11 - resto;

  if (digito == 10 || digito == 11) {
    digito = 0;
  }

  return digito;
}
 