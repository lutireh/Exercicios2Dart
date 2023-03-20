import 'ContaCorrente.dart';
import 'Cliente.dart';

class ContaEspecial extends ContaCorrente {
  var _taxaDeJuros = 6.0;
  double limitecredito = -300;

  ContaEspecial(double saldo, Cliente cliente) : super(saldo, cliente);

  get taxaDeJuros {
    return _taxaDeJuros;
  }

  set taxaDeJuros(taxa) {
    _taxaDeJuros = taxa;
  }

  aplicaCorrecao() {
    // usa super.saldo para acessar o setter da classe pai
    super.saldo = saldo * (1 + taxaDeJuros);
  }

  // sobrescreve o método toString da classe pai
  // sobrescreve o método toString para mostrar o cliente antes do saldo
  @override
  toString() {
    aplicaCorrecao();
    return "Conta especial: cliente = ${cliente.nome}, idade = ${cliente.idade}, saldo = $saldo";
  }

// Esse override serve para definir que o saldo nunca pode ser menor que o limite de crédito
  @override
  set saldo(double valor) {
    if (valor >= limitecredito) {
      super.saldo = valor;
    }
  }
}
