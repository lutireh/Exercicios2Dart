import 'Cliente.dart';

class ContaEspecial {
  var cliente = Cliente();
  var saldo = 0.0;
  var taxaDeJuros = 0.0;

  getCliente() {}
  setCliente() {}
  getSaldo() {
    return saldo;
  }

  setSaldo(saldo) {
    this.saldo = saldo;
  }

  getTaxaDeJuros() {
    return taxaDeJuros;
  }

  setTaxaDeJuros(taxaDeJuros) {
    this.taxaDeJuros = taxaDeJuros;
  }

  aplicaCorrecao() {
    saldo = saldo * (1 + taxaDeJuros);
  }
}
