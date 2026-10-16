
import 'maquina_vendas.dart';

void main() {
  // Primeira máquina
  MaquinaVendas maquina1 = MaquinaVendas(
    produto: "Refrigerante",
    preco: 6.0,
    quantidade: 10,
  );
  print("\n");

  // Segunda máquina
  MaquinaVendas maquina2 = MaquinaVendas(
    produto: "Chocolate",
    preco: 4.5,
    quantidade: 5,
  );

  // Operações da primeira máquina
  maquina1.comprar(3);
  maquina1.abastecer(5);
 print("\n");
  // Operações da segunda máquina
  maquina2.comprar(2);
  maquina2.alterarPreco(5.0);
 print("\n");
  // Relatórios finais
  maquina1.exibirRelatorio();
  maquina2.exibirRelatorio();
}