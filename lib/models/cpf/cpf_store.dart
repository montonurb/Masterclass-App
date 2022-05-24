import 'package:flutter/cupertino.dart';

class CpfStore extends ChangeNotifier {
  String _cpf = "";
  String _message = "";
  bool _validation = false;

  bool get validation => _validation;
  String get message => _message;

  void setCpf(String value) {
    //COM O \W (W MAIUSCULO) ELE REMOVE OS CARACTERES ESPECIAIS
    _cpf = value.replaceAll(RegExp(r'[\W]'), '');
  }

  void setMensage(String value) {
    _message = value;
  }

  void setValidation(bool value) {
    _validation = value;
  }

  validationCpf() {
    if (_message != '') {
      int total = 0;
      if (_cpf.length != 11) {
        return false;
      } else {
//STEP 1:
        int j = 10;
        for (int i = 0; i <= 8; i++) {
          int num = int.parse(_cpf[i]);
          int value = num * j;
          total += value;
          j--;
        }

        total *= 10;
        total %= 11;
        total = total == 10 ? 0 : total;
        _validation = total == int.parse(_cpf[9]) ? true : false;

//STEP 2
        total = 0;
        j = 11;
        for (int i = 0; i <= 9; i++) {
          int num = int.parse(_cpf[i]);
          int value = num * j;
          total += value;
          j--;
        }
        total *= 10;
        total %= 11;
        total = total == 10 ? 0 : total;
        _validation = total == int.parse(_cpf[10]) ? true : false;

        setMensage(_validation == true ? "CPF válido!" : "CPF inválido!");
      }
    } else {
      setMensage("Informe o CPF!");
    }
    notifyListeners();
  }
}
