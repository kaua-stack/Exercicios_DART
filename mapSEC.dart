void main (){
  //map
  var contatos = {
    'Stefany':{
      'telefone': '+55 (11) 78947-4564',
      'endereco': 'Aveida ZZZZ, 8000',
      'bairro': 'Centro',
      'cidade': 'Santo André \n' 
    },
    'Adenilson':{
      'telefone': '+55 (11) 78947-4564',
      'endereco': 'Aveida XPTO, 5000',
      'bairro': 'Vila Pires',
      'cidade': 'Santo André \n' 
    },
    'Daniel':{
      'telefone': '+55 (11) 12311-4564',
      'endereco': 'Av. Goias, 654654',
      'bairro': 'Santo Antônio',
      'cidade': 'São Caetano do Sul \n' 
    },
    'Iara':{
      'telefone': '+55 (11) 78979-4564',
      'endereco': 'Av. dsfsdfs, 654654',
      'bairro': 'Jardim Santa Cristina',
      'cidade': 'Santo André \n' 
    },
    'Kaua':{
      'telefone':[ 
        '+55 (11) 78979-4564',
        '+55 (11) 74567-1234' 
        ],
      'endereco': 'Av. dsfsdfs, 654654',
      'bairro': 'Eldorado',
      'cidade': 'Diadema' 
    }
  };

  
  print(contatos);
  print('================================ \n');

  print(contatos['Kaua']?['cidade']);
  print(contatos['Iara']?['endereco']);

  print('================================\n');
  
  for(var nome in contatos.keys){
    print('nome da pessoa $nome \n');
  };
  
  print('================================\n');

  print(contatos['Adenilson']?['telefone']);

  print('================================\n');

  print('cidade: ${contatos['Kaua']?['telefone']}');
  print('cidade: ${contatos['Kaua']?['cidade']}');

  print('================================\n');

  var exemplo = contatos['Kaua']!;
  var telefones = exemplo['telefone'] as List;
  var indice = 1;

  for (var telefone in telefones){
    print('telefone $indice : $telefone');
    indice++;
  }
  print('cidade: ${exemplo['cidade']}');

  print('================================\n');

  



}