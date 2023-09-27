import 'dart:io';

import 'package:imc/models/pessoa_model.dart';
void main(){
  
  var nome;
  var pesoRecebido;
  var alturaRecebida;
  print('informe seu nome: ');
  nome = stdin.readLineSync();
  print('informe seu peso: '); 
  pesoRecebido = stdin.readLineSync();
  print('informe sua altura: ');
  alturaRecebida = stdin.readLineSync();

  double peso = double.tryParse(pesoRecebido.replaceAll(',', '.')) ?? -1;
  double altura = double.tryParse(alturaRecebida.replaceAll(',', '.')) ?? -1;

  var pessoa = Pessoa(nome: nome, peso: peso, altura: altura);
  var imc = pessoa.imc(nome, peso, altura);
  print('seu imc é $imc');
}