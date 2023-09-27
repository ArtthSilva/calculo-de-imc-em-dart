import 'package:imc/models/pessoa_model.dart';
import 'package:test/test.dart';

void main() {
  group('Pessoa', () {
    test('Calcula o IMC corretamente', () {
      var pessoa = Pessoa(nome: 'João', peso: 70.0, altura: 1.75);
      expect(pessoa.imc('João',70.0, 1.75), equals('22.86')); // O valor do IMC deve ser 22.86
    });

    test('Rejeita altura e peso negativos', () {
      var pessoa = Pessoa(nome: 'Maria', peso: -50.0, altura: -1.60);
      expect(pessoa.imc('Maria', -50.0, -1.60), equals('Dados inválidos')); // Deve retornar Dados inválidos para entradas inválidas
    });

  });
}
