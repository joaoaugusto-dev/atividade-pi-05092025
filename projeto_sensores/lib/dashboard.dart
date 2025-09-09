import 'utils.dart';
import 'dart:async';

void main() {
  Timer.periodic(Duration(seconds: 2), (timer) {
    adicionarLeitura();
    var stats = obterEstatisticas();
    print('Dashboard: Leituras acumuladas: ${leituras.length}');
    print(
      'Temperatura: Média: [32m${stats['temperatura']!['media']}[0m, Min: ${stats['temperatura']!['min']}, Max: ${stats['temperatura']!['max']}',
    );
    print(
      'Umidade: Média: ${stats['umidade']!['media']}, Min: ${stats['umidade']!['min']}, Max: ${stats['umidade']!['max']}',
    );
    print(
      'Lux: Média: ${stats['lux']!['media']}, Min: ${stats['lux']!['min']}, Max: ${stats['lux']!['max']}',
    );
    print('---');
    if (leituras.length >= 10) timer.cancel();
  });
}
