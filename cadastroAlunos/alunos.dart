class Aluno {
  int matricula;
  String nome;
  String curso;
  int idade;
 
  Aluno({
    required this.matricula,
    required this.nome,
    required this.curso,
    required this.idade,
  });
 
  void exibirDados() {
    print('Matricula: $matricula');
    print('Nome: $nome');
    print('Curso: $curso');
    print('Idade: $idade');
  }
}


class GerenciarAlunos {
  List<Aluno> alunos = [];

  // CREATE
  void cadastrar(Aluno aluno) {
    if (aluno.nome.trim().isEmpty) {
      print('Erro: nome não pode ser vazio.');
      return;
    }

    if (aluno.idade <= 0) {
      print('Erro: idade deve ser maior que zero.');
      return;
    }

    for (Aluno a in alunos) {
      if (a.matricula == aluno.matricula) {
        print('Erro: matrícula já cadastrada.');
        return;
      }
    }

    alunos.add(aluno);
    print('Aluno cadastrado com sucesso!');
  }

  // READ
  void listar() {
    if (alunos.isEmpty) {
      print('Nenhum aluno cadastrado.');
      return;
    }

    print('\n=== LISTA DE ALUNOS ===');

    for (Aluno aluno in alunos) {
      aluno.exibirDados();
      print('---------------------');
    }
  }

  // READ
  void consultar(int matricula) {
    for (Aluno aluno in alunos) {
      if (aluno.matricula == matricula) {
        print('\nAluno encontrado!');
        aluno.exibirDados();
        return;
      }
    }

    print('Matrícula não encontrada.');
  }




  // UPDATE 

void atualizarAluno(int matricula, String novoNome , int novaIdade) {
  for (Aluno aluno in alunos) {
    if (aluno.matricula == matricula) {
      aluno.nome = novoNome;
      aluno.idade = novaIdade;
      print("idade atualizada com sucesso $novaIdade");
      print('Nome atualizado com sucesso! ');
      return;
    }
  }
  print('Aluno não encontrado.');
}


  // DELETE
  void removerAT(int matricula) {
    for (int i = 0; i < alunos.length; i++) {
      if (alunos[i].matricula == matricula) {
        alunos.removeAt(i);
        print('Aluno removido com sucesso!');
        return;
      }
    }

    print('Matrícula não encontrada.');
  }
}