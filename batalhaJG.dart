void main() {
  
  String nomeJogador1 = 'Kaua';
  int vidaJogador1 = 100;
  int forcaJogador1 = 90;

  String nomeJogador2 = 'Lucas';
  int vidaJogador2 = 100;
  int forcaJogador2 = 60;

  print('=== BATALHA ===');
  print('$nomeJogador1 -> Vida: $vidaJogador1 | Força: $forcaJogador1');
  print('$nomeJogador2 -> Vida: $vidaJogador2 | Força: $forcaJogador2');

  print('\nAtaque do Jogador 1:');
  realizarAtaque(
    nomeJogador1,
    nomeJogador2,
    forcaJogador1,
    ataqueForte,
    ataqueNormal,
    ataqueFraco,
  );

  print('\nAtaque do Jogador 2:');
  realizarAtaque(
    nomeJogador2,
    nomeJogador1,
    forcaJogador2,
    ataqueForte,
    ataqueNormal,
    ataqueFraco,
  );
}


void ataqueForte(String atacante, String defensor) {
  print('$atacante realizou um ATAQUE FORTE em $defensor!');
}

void ataqueNormal(String atacante, String defensor) {
  print('$atacante realizou um ataque normal em $defensor!');
}

void ataqueFraco(String atacante, String defensor) {
  print('$atacante realizou um ataque fraco em $defensor!');
}

void realizarAtaque(
  String atacante,
  String defensor,
  int forcaAtaque,
  Function ataqueForteFunc,
  Function ataqueNormalFunc,
  Function ataqueFracoFunc,
) {
  if (forcaAtaque >= 80) {
    ataqueForteFunc(atacante, defensor);
  } else if (forcaAtaque >= 50) {
    ataqueNormalFunc(atacante, defensor);
  } else {
    ataqueFracoFunc(atacante, defensor);
  }
}

