class Pessoa {
  String _nome = "";
  double? _peso = 0.0;
  double? _altura = 0.0;

  Pessoa(this._nome, this._peso, this._altura);

  getNome() {
    return _nome;
  }

  setNome(String nome) {
    _nome = nome;
  }

  getPeso() {
    return _peso;
  }

  setPeso(double peso) {
    _peso = peso;
  }

  geAltura() {
    return _altura;
  }

  setAltura(double altura) {
    _altura = altura;
  }
}
