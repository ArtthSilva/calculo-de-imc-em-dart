class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa({
    required this.nome,
    required this.peso,
    required this.altura,
  });

  imc(nome, peso, altura){
    if (peso <= 0 || altura <= 0) {
      return "Dados inválidos";  
    }else{ 
    double novaAltura = altura * altura;
    double imc = peso / novaAltura;
    return imc.toStringAsFixed(2);
    }
  }
} 
