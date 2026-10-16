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

