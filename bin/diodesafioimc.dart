import 'dart:convert';
import 'dart:io';

import 'package:diodesafioimc/classes/pessoa.dart';
import 'package:diodesafioimc/classes/utilitarios.dart';
import 'package:diodesafioimc/diodesafioimc.dart' as diodesafioimc;

void main(List<String> arguments) {
  String nome = '';
  double peso = 0;
  double altura = 0;
  var linha;

  print('Bem vindo à calculadora de IMC');

  nome = Utilitarios.lerConsole('Digite o nome');
  
  do {
    print('Digite o peso: ');
    linha = stdin.readLineSync(encoding: utf8);
    try {
      linha = linha.replaceFirst(',', '.');
      peso = double.parse(linha);
    } catch (e) {
      print('Peso inválido!');
    }
  } while (peso == 0);

  do {
    print('Digite a altura: ');
    linha = stdin.readLineSync(encoding: utf8);
    try {
      linha = linha.replaceFirst(',', '.');
      altura = double.parse(linha);
    } catch (e) {
      print('Altura inválida!');
    }
  } while (altura == 0);

  Pessoa pessoa = Pessoa(nome, peso, altura);
  pessoa.mostraIMC();
}
