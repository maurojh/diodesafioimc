import 'dart:convert';
import 'dart:io';

class Utilitarios {
  static String lerConsole(String mensagem) {
    String valor = '';
    print(mensagem);
    do {
      var linha = stdin.readLineSync(encoding: utf8);
      valor = linha ?? '';
      if(valor.trim() == '') {
        print('Leitura inválida!');
        print(mensagem);
      }
    } while (valor.trim() == '');
    return valor;
  }
}