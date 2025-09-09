import 'sensores.dart';

// calcular média
double calcularMedia(List<double> valores) {
  if (valores.isEmpty) return 0;
  double soma = 0;
  for (var v in valores) {
    soma += v;
  }
  return soma / valores.length;
}

// calcular mínimo
double calcularMin(List<double> valores) {
  if (valores.isEmpty) return 0;
  double min = valores.first;
  for (var v in valores) {
    if (v < min) {
      min = v;
    }
  }
  return min;
}

// calcular máximo
double calcularMax(List<double> valores) {
  if (valores.isEmpty) return 0;
  double max = valores.first;
  for (var v in valores) {
    if (v > max) {
      max = v;
    }
  }
  return max;
}

// testezin
void main() {
  List<double> exemplo = [28.5, 29.0, 27.5];

  print("Média: ${calcularMedia(exemplo)}"); // Deve dar 28.33...
  print("Mínimo: ${calcularMin(exemplo)}"); // Deve dar 27.5
  print("Máximo: ${calcularMax(exemplo)}"); // Deve dar 29.0

  // Testando leitura do sensor
  print(gerarLeitura());
}
