import 'dart:convert';
import 'dart:io';

class Utilitarios {
  static String lerConsole(String mensagem) {
    String valor = '';
    print(mensagem);
    do {
      var linha = stdin.readLineSync(encoding: utf8);
      valor = linha ?? '';
      if (valor.trim() == '') {
        print('Leitura inválida!');
        print(mensagem);
      }
    } while (valor.trim() == '');
    return valor;
  }

  static double lerConsoleDouble(String mensagem) {
    double valor = 0;
    do {
      print(mensagem);
      var linha = stdin.readLineSync(encoding: utf8) ?? '';
      try {
        linha = linha.replaceFirst(',', '.');
        valor = double.parse(linha);
      } catch (e) {
        print('Valor inválido!');
      }
    } while (valor == 0);
    return valor;
  }
}
