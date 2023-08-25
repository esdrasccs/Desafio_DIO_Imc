calcularImc(pessoa) {
  double peso = pessoa.getPeso();
  double altura = pessoa.geAltura();

  double? imc = peso / (altura * altura);
  imc = double.tryParse(imc.toStringAsFixed(1));

  if (imc! < 16) {
    return "$imc Magreza grave";
  } else if (imc >= 16 && imc < 17) {
    return "$imc Magreza moderada";
  } else if (imc >= 17 && imc < 18.5) {
    return "$imc Magreza leve";
  } else if (imc >= 18.5 && imc < 25) {
    return "$imc Saudavel";
  } else if (imc >= 25 && imc < 30) {
    return "$imc Sobrepeso";
  } else if (imc >= 30 && imc < 35) {
    return "$imc Obesidade Grau I";
  } else if (imc >= 35 && imc < 40) {
    return "$imc Obesidade Grau II (severa)";
  } else if (imc >= 40) {
    return "$imc Obesidade Grau III (mórbida)";
  }

  return "null";
}
