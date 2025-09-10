import 'dart:async';
import 'dart:io';
import 'dashboard.dart';
import 'utils.dart';

void main(List<String> args) {
  print('Iniciando aplicação...');

  // Inicia timer simulado para gerar leituras a cada 2 segundos
  Timer.periodic(Duration(seconds: 2), (timer) {
    var leitura = gerarLeituraSimulada();
    leituras.add(leitura);
  });

  // Loop principal de menu
  while (true) {
    printMenu();
    var escolha = stdin.readLineSync();
    if (escolha == null) break;

    if (escolha == '0') {
      print('Encerrando aplicação...');
      exit(0);
    }

    if (['1', '2', '3', '4'].contains(escolha)) {
      mostrarEstatisticas(escolha);
      stdout.writeln('\nPressione Enter para voltar ao menu...');
      stdin.readLineSync();
      continue;
    }

    stdout.writeln('Opção inválida. Pressione Enter para tentar novamente.');
    stdin.readLineSync();
  }
}
