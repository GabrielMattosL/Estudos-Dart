import 'dart:async';

import 'package:dart_aula_dois/dart_aula_dois.dart' as dart_aula_dois;

void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e Cítrica";
  int diasDesdeColheita = 20;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  //mostrarMadura("Uva", 40, cor: "Roxa");
  funcQuantosDiasMadura(nome, diasDesdeColheita);
}

funcQuantosDiasMadura(String fruta, int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = dias - diasParaMadura;
  int quantosPositivo = quantosDiasFaltam * -1;

  if (quantosDiasFaltam > 0) {
    print("Pode colher sua $fruta.");
  } else {
    print("Ainda faltam $quantosPositivo dias para poder colher sua $fruta");
  }
}

void mostrarMadura(String nome, int dias, {String? cor}) {
  if (dias >= 30) {
    print("A $nome está madura.");
  } else {
    print("A $nome não está madura.");
  }

  if (cor != null) {
    print("A $nome é $cor");
  }
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}
