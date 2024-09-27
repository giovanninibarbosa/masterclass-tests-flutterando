import 'package:test/test.dart';

import '../imc.dart';

void main() {
  test('Deve efetuar o calculo do IMC', () {
    // Arrange
    final peso = 64.0;
    final altura = 1.78;

    // Act
    final result = calcIMC(altura, peso);

    // Assert
    expect(result, equals(20.199469763918696));
  });

  group('Excessões de parametros |', () {
    test('Deve lançar uma excessão se altura for menor que 1', () {
      expect(() => calcIMC(0, 64), throwsA(isA<Exception>()));
    });

    test('Deve lançar uma excessão se o peso for menor que 1', () {
      expect(() => calcIMC(1.70, 0), throwsA(isA<Exception>()));
    });
  });
}
