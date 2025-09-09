import 'sensores.dart';

//lista global para armazenar as leituras
List<Map<String, dynamic>> leituras = [];

//adiciona leitura à uma lista global
void adicionarLeitura() {
  leituras.add(gerarLeitura());
}

//separa os dados gerados no sensor.dart
List<double> getTemperaturas() =>
    leituras.map((l) => l['temperatura'] as double).toList();
List<double> getUmidades() =>
    leituras.map((l) => l['umidade'] as double).toList();
List<double> getLux() =>
    leituras.map((l) => (l['lux'] as num).toDouble()).toList();

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

//acumulando as estatísticas
Map<String, Map<String, double>> obterEstatisticas() {
  return {
    'temperatura': {
      'media': calcularMedia(getTemperaturas()),
      'min': calcularMin(getTemperaturas()),
      'max': calcularMax(getTemperaturas()),
    },
    'umidade': {
      'media': calcularMedia(getUmidades()),
      'min': calcularMin(getUmidades()),
      'max': calcularMax(getUmidades()),
    },
    'lux': {
      'media': calcularMedia(getLux()),
      'min': calcularMin(getLux()),
      'max': calcularMax(getLux()),
    },
  };
}
