import 'alunos.dart';
void main() {
  GerenciarAlunos gerenciador = GerenciarAlunos();

  gerenciador.cadastrar(
    Aluno(
      matricula: 101,
      nome: 'João',
      curso: 'ADS',
      idade: 20,
    ),
  );

  gerenciador.cadastrar(
    Aluno(
      matricula: 102,
      nome: 'Maria',
      curso: 'Informática',
      idade: 22,
    ),
  );

  gerenciador.cadastrar(
    Aluno(
      matricula: 103,
      nome: 'Pedro',
      curso: 'Redes',
      idade: 19,
    ),
  );

  print('\n=== LISTAR ===');
  gerenciador.listar();

  print('\n=== CONSULTAR ===');
  gerenciador.consultar(102);

  print('\n=== UPDATE ===');
  gerenciador.atualizarAluno(102,"Kaua", 18);
 

  print('\n=== CONSULTAR APÓS UPDATE ===');
  gerenciador.consultar(102);

  print('\n=== DELETE ===');
  gerenciador.removerAT(103);

  print('\n=== LISTA FINAL ===');
  gerenciador.listar();
}