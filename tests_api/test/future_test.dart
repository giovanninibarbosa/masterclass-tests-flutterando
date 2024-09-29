import 'package:test/test.dart';

import '../future.dart';

void main() {
  group('deve completar a requisição retornando uma lista de nomes |', () {
    test('apenas verificar se completou', () {
      // Arrange
      final future = getFutureList();

      // Act

      // Assert
      expect(future, completes);
    });

    test('deve retornar uma lista de string', () {
      // Arrange
      final future = getFutureList();

      // Act

      // Assert
      expect(future, completion(isA<List<String>>()));
    });

    test('deve retornar exatamente o mesmo que a future', () {
      // Arrange
      final future = getFutureList();

      // Act

      // Assert
      expect(future, completion(equals(['masterclass', 'flutterando'])));
    });
  });
}
