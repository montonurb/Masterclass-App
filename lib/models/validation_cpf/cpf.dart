// ignore_for_file: avoid_print

class Cpf {
  String cpf;

  Cpf({required this.cpf});

  bool validationCpf(String cpf) {
    //COM O \W (W MAIUSCULO) ELE REMOVE OS CARACTERES ESPECIAIS
    var newCpf = cpf.replaceAll(RegExp(r'[\W]'), '');
    print("NOVOCPF: $newCpf");
    int total = 0;
    bool validation = false;
    if (newCpf.length != 11) {
      return false;
    } else {
//STEP 1:
      var j = 10;
      for (var i = 0; i <= 8; i++) {
        int num = int.parse(newCpf[i]);
        var value = num * j;
        total += value;
        j--;
      }

      total *= 10;
      total %= 11;
      total = total == 10 ? 0 : total;
      validation = total == int.parse(newCpf[9]) ? true : false;

      //STEP 2
      total = 0;
      j = 11;
      for (var i = 0; i <= 9; i++) {
        int num = int.parse(newCpf[i]);
        var value = num * j;
        total += value;
        j--;
      }
      total *= 10;
      total %= 11;
      total = total == 10 ? 0 : total;
      validation = total == int.parse(newCpf[10]) ? true : false;

      return validation == true ? true : false;
    }
  }
}
