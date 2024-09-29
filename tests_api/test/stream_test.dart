import 'package:test/test.dart';

import '../stream.dart';

void main() {
  group('deve completar a requisição trazendo uma lista de nomes', () {
    test('checagem apenas do primeiro item', () {
      final stream = getStreamList();
      expect(stream, emits('masterclass'));
    });
  });

  test('checagem dos itens em ordem', () {
    final stream = getStreamList();
    expect(stream, emitsInOrder(['masterclass', 'flutterando']));
  });

  test('checagem dos itens sem ordem / aleatorio', () {
    final stream = getStreamList();
    expect(stream, emitsInAnyOrder(['flutterando', 'masterclass']));
  });
}
