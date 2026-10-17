import 'maquina_vendas.dart';

void main() {
  GerenciarMaquinas gerenciador = GerenciarMaquinas();

  // Primeira máquina
  MaquinaVendas maquina1 = MaquinaVendas(
    produto: "Refrigerante",
    preco: 6.0,
    quantidade: 10,
  );

  // Segunda máquina
  MaquinaVendas maquina2 = MaquinaVendas(
    produto: "Chocolate",
    preco: 4.5,
    quantidade: 5,
  );

  // Cadastrando máquinas
  gerenciador.cadastrar(maquina1);
  gerenciador.cadastrar(maquina2);

  print('\n========== OPERAÇÕES ==========\n');

  // Operações da primeira máquina
  maquina1.comprar(3);
  maquina1.abastecer(5);

  print('');

  // Operações da segunda máquina
  maquina2.comprar(2);
  maquina2.alterarPreco(5.0);

  print('\n========== RELATÓRIOS ==========\n');

  // Relatórios finais
  maquina1.exibirRelatorio();
  maquina2.exibirRelatorio();

  print('\n========== CADASTRANDO NOVA MÁQUINA ==========\n');

  gerenciador.cadastrar(
    MaquinaVendas(
      produto: "Pizza",
      preco: 15.0,
      quantidade: 11,
    ),
  );

  print('\n========== LISTA DE MÁQUINAS ==========\n');

  gerenciador.listar();

  print('\n========== REMOVENDO MÁQUINA ==========\n');

  gerenciador.remover(1);

  print('\n========== LISTA ATUALIZADA ==========\n');

  gerenciador.listar();
}