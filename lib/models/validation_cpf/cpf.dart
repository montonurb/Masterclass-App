// ignore_for_file: avoid_print

class Cpf {
  String cpf;

  Cpf({required this.cpf});

  bool validationCpf(String cpf) {
    int total = 0;
    bool validation = false;
    if (cpf.length != 11) {
      return false;
    } else {
//STEP 1:
      print("STEP 1:");
      var j = 10;
      for (var i = 0; i <= 8; i++) {
        int num = int.parse(cpf[i]);
        var value = num * j;
        total += value;
        print("$num * $j = $total");
        j--;
      }

      total *= 10;
      total %= 11;
      total = total == 10 ? 0 : total;
      print("TESTE: $total");
      validation = total == int.parse(cpf[9]) ? true : false;

      //STEP 2
      print("STEP 2:");
      total = 0;
      j = 11;
      for (var i = 0; i <= 9; i++) {
        int num = int.parse(cpf[i]);
        var value = num * j;
        total += value;
        print("$num * $j = $total");
        j--;
      }
      total *= 10;
      total %= 11;
      total = total == 10 ? 0 : total;
      print("TESTE: $total");
      validation = total == int.parse(cpf[10]) ? true : false;
      print("TOTAL2 $total");

      return validation == true ? true : false;
    }
  }
}
