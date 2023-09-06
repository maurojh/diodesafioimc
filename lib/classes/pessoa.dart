class Pessoa {
  String _nome = '';
  double _peso = 0;
  double _altura = 0;

  String getNome() => _nome;

  void setNome(String value) {
    _nome = value;
  }

  double getPeso() {
    return _peso;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getAltura() {
    return _altura;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  void mostraIMC() {
    if(_peso > 0 && _altura > 0) {
      var imc = calculaIMC();
      print('Valor do IMC: $imc');
      print('Classificação: ${classificaIMC(imc)}');
    } else {
      print('Peso e/ou altura zerados');
    }
  }

  String classificaIMC(double imc) {
    if(imc < 16) {
      return 'Magreza grave';
    } else if(imc < 17) {
      return 'Magreza moderada';
    } else if(imc < 18.5) {
      return 'Magreza leve';
    } else if(imc < 25) {
      return 'Saudável';
    } else if(imc < 30) {
      return 'Sobrepeso';
    } else if(imc < 35) {
      return 'Obesidade Grau I';
    } else if(imc < 40) {
      return 'Obesidade Grau II (severa)';
    } else {
      return 'Obesidade Grau III (mórbida)';
    } 
  }

  double calculaIMC() {
    return _peso / (_altura * _altura);
  }

  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }
}