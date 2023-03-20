import 'Cliente.dart';

class ContaCorrente {
  double saldo; // atributo privado
  Cliente cliente; // atributo privado que referencia a classe cliente

  // construtor da classe contacorrente que recebe o número, o saldo e o cliente
  ContaCorrente(this.saldo, this.cliente);
}
