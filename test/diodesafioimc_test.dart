import 'package:diodesafioimc/classes/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('Teste calculadoraIMC com peso e altura', () {
    Pessoa pIMC = Pessoa('TesteCalcSimples', 80, 1.69);
    expect(pIMC.calculaIMC(), greaterThanOrEqualTo(28.0));
  });

  group('Calcula vários pesos e altura fixa', () {
    var altura = 1.69;
    for (var peso = 10; peso < 150; peso = peso + 10) {
      Pessoa pessoa = Pessoa('TestePeso', peso.toDouble(), altura);
      test('Peso: $peso Altura: $altura', () {
        expect(pessoa.calculaIMC(),
            greaterThanOrEqualTo(peso / (altura * altura)));
      });
    }
  });

  group('Calcula peso fixo e várias alturas', () {
    var peso = 70.0;
    for (var altura = 1.2; altura < 2.1; altura = altura + 0.1) {
      Pessoa pessoa = Pessoa('TesteAltura', peso, altura);
      test('Peso: $peso Altura: $altura', () {
        expect(pessoa.calculaIMC(),
            greaterThanOrEqualTo(peso / (altura * altura)));
      });
    }
  });

  // [15,16,17,19,26,31,36,41]
  // return 'Magreza grave' 'Magreza moderada'
  //  'Magreza leve'; 'Saudável'; 'Sobrepeso';
  // 'Obesidade Grau I'; 'Obesidade Grau II (severa)';
  //  'Obesidade Grau III (mórbida)';
  test('Verifica classificaIMC()', () {
    Pessoa pessoa = Pessoa('Teste mensagem IMC 14', 40.0, 1.69);
    expect(pessoa.classificaIMC(14), equals('Magreza grave'));
  });

  test('Verifica classificaIMC()', () {
    Pessoa pessoa = Pessoa('Teste mensagem IMC 16', 40.0, 1.69);
    expect(pessoa.classificaIMC(16), equals('Magreza moderada'));
  });
  test('Verifica classificaIMC()', () {
    Pessoa pessoa = Pessoa('Teste mensagem IMC 18', 40.0, 1.69);
    expect(pessoa.classificaIMC(18), equals('Magreza leve'));
  });
  
  test('Verifica classificaIMC()', () {
    Pessoa pessoa = Pessoa('Teste mensagem IMC 19', 40.0, 1.69);
    expect(pessoa.classificaIMC(19), equals('Saudável'));
  });
  test('Verifica classificaIMC()', () {
    Pessoa pessoa = Pessoa('Teste mensagem IMC 26', 40.0, 1.69);
    expect(pessoa.classificaIMC(26), equals('Sobrepeso'));
  });
  test('Verifica classificaIMC()', () {
    Pessoa pessoa = Pessoa('Teste mensagem IMC 31', 40.0, 1.69);
    expect(pessoa.classificaIMC(31), equals('Obesidade Grau I'));
  });
  test('Verifica classificaIMC()', () {
    Pessoa pessoa = Pessoa('Teste mensagem IMC 36', 40.0, 1.69);
    expect(pessoa.classificaIMC(36), equals('Obesidade Grau II (severa)'));
  });
  
  test('Verifica classificaIMC()', () {
    Pessoa pessoa = Pessoa('Teste mensagem IMC 41', 40.0, 1.69);
    expect(pessoa.classificaIMC(41), equals('Obesidade Grau III (mórbida)'));
  });
  
}
