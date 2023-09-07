import 'dart:convert';
import 'dart:io';

import 'package:diodesafioimc/classes/pessoa.dart';
import 'package:diodesafioimc/classes/utilitarios.dart';
import 'package:diodesafioimc/diodesafioimc.dart' as diodesafioimc;

void main(List<String> arguments) {
  String nome = '';
  double peso = 0;
  double altura = 0;

  print('Bem vindo à calculadora de IMC');

  nome = Utilitarios.lerConsole('Digite o nome:');
  peso = Utilitarios.lerConsoleDouble('Digite o peso em kg: ');
  altura = Utilitarios.lerConsoleDouble('Digite a altura em metros: ');
  
  Pessoa pessoa = Pessoa(nome, peso, altura);
  pessoa.mostraIMC();
}
