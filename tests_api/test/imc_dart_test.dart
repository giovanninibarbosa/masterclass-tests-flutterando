import 'package:test/test.dart';

import '../imc.dart';

void main() {

  // Lifecycle
  setUp(()=> null)); // Runs before the tests.
  tearDown(() => null ));  // Runs after the tests.
  
  setUpAll(() => null)); // Runs before all the tests.
  tearDownAll(() => null)); // Runs afters all the tests.

  test('Deve efetuar o calculo do IMC', () {
    final result = calcIMC(1.78, 64);

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
