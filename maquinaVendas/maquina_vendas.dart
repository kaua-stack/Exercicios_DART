class MaquinaVendas {
  String produto;
  double preco;
  int quantidade;
  double totalArrecadado = 0;

  // Construtor
  MaquinaVendas({
    required this.produto,
    required this.preco,
    required this.quantidade, //this recebe o valor do atributo 
  });

  // Adicionar produtos ao estoque
  void abastecer(int quantidade) {
    this.quantidade += quantidade;

    print('Estoque abastecido!');
    print('Quantidade atual: ${this.quantidade}');
  }

  // Realizar uma venda
  void comprar(int quantidade) {
    if (quantidade <= this.quantidade) {
      this.quantidade -= quantidade;

      double valorVenda = quantidade * preco;
      totalArrecadado += valorVenda;

      print('Compra realizada!');
      print('Valor da compra: R\$ $valorVenda');
    } else {
      print('Estoque insuficiente!');
    }
  }

  // Alterar o preço do produto
  void alterarPreco(double novoPreco) {
    
    preco = novoPreco;

    print('Preço atualizado para R\$ $preco');
  }

  // Mostrar informações da máquina
  void exibirRelatorio() {
    print('\n=== MÁQUINA ===');
    print('Produto: $produto');
    print('Preço: R\$ $preco');
    print('Quantidade em estoque: $quantidade');
    print('Total arrecadado: R\$ $totalArrecadado');
  }
}


class GerenciarMaquinas {
  // Lista que armazena todas as máquinas cadastradas
  final List<MaquinaVendas> maquinas = [];

  // CREATE (Cadastrar)
  // Adiciona uma nova máquina na lista
  void cadastrar(MaquinaVendas maquina) {
    maquinas.add(maquina);

    print('Máquina de ${maquina.produto} cadastrada com sucesso!');
  }

  // READ (Listar)
  // Exibe todas as máquinas cadastradas
  void listar() {
    for (int i = 0; i < maquinas.length; i++) {
      print('\nMáquina ${i + 1}');

      // Chama o relatório da máquina
      maquinas[i].exibirRelatorio();
    }
  }

  // READ (Consultar)
  // Exibe os dados de uma máquina específica
  void consultar(MaquinaVendas maquina) {
    maquina.exibirRelatorio();
  }

  // UPDATE (Atualizar)
  // Altera o preço de uma máquina através do índice
  void atualizarPreco(int indice, double novoPreco) {
    // Acessa a máquina desejada e altera o preço
    maquinas[indice].alterarPreco(novoPreco);

    print('Preço atualizado com sucesso!');
  }

  // DELETE (Excluir)
  // Remove uma máquina da lista
  void remover(int indice) {
    print('Máquina de ${maquinas[indice].produto} removida.');

    maquinas.removeAt(indice);
  }
}