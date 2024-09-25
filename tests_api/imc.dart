void main() {}

double calcIMC(double altura, double peso) {
  if (peso < 1) {
    throw Exception('Peso não pode ser menor que 1');
  }

  if (altura < 1) {
    throw Exception('Altura não pode ser menor que 1');
  }

  return peso / (altura * altura);
}
