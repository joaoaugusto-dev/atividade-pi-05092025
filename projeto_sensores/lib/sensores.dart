import 'dart:math';

Map<String, dynamic> gerarLeitura() {
  final random = Random();

  double sensorTemp = 20 + random.nextDouble() * 15; // 20 a 35
  double sensorUmid = 40 + random.nextDouble() * 40; // 40 a 80
  int sensorLdr = random.nextInt(1001); // 0 a 1000
  String dataHora = DateTime.now().toString();

  return {
    'dataHora': dataHora,
    'temperatura': sensorTemp,
    'umidade': sensorUmid,
    'lux': sensorLdr,
  };
}
