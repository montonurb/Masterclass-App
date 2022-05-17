import 'package:flutter/material.dart';
import 'package:masterclass_app/models/validation_cpf/cpf.dart';
import 'package:masterclass_app/theme/app_theme.dart';
import 'package:masterclass_app/widgets/custom_header.dart';

class CpfScreen extends StatefulWidget {
  const CpfScreen({Key? key}) : super(key: key);

  @override
  State<CpfScreen> createState() => _CpfScreenState();
}

class _CpfScreenState extends State<CpfScreen> {
  late Cpf cpf = Cpf(cpf: '');
  bool validation = false;
  String mensagem = '';
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.colors.scaffoldBackground,
        body: Padding(
          padding:
              const EdgeInsets.only(top: 35, left: 15, right: 15, bottom: 10),
          child: Column(
            children: [
              CustomHeader(title: "Validador de CPF", logo: false),
              const SizedBox(height: 16),
              TextField(
                style: TextStyle(
                  fontSize: 20,
                  color: AppTheme.colors.textHighlight,
                ),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: AppTheme.colors.textHighlight,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: AppTheme.colors.textHighlight,
                    ),
                  ),
                  labelText: 'CPF:',
                  labelStyle: TextStyle(color: AppTheme.colors.textHighlight),
                  prefixIcon: validation == true
                      ? Icon(
                          Icons.check,
                          color: AppTheme.colors.check,
                        )
                      : Icon(
                          Icons.error_outline,
                          color: AppTheme.colors.primary,
                        ),
                ),
                controller: controller,
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: AppTheme.colors.primary,
                ),
                onPressed: () {
                  if (controller.text != '') {
                    setState(() {
                      validation = cpf.validationCpf(controller.text);
                      mensagem =
                          validation == true ? "CPF válido!" : "CPF inválido!";
                    });
                  } else {
                    setState(() {
                      mensagem = "Informe o CPF!";
                    });
                  }
                },
                child: Text(
                  "Validar CPF!",
                  style: TextStyle(
                    fontSize: 20,
                    color: AppTheme.colors.textHighlight,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Text(
                mensagem,
                style: TextStyle(
                  fontSize: 24,
                  color: mensagem == "CPF válido!"
                      ? AppTheme.colors.check
                      : AppTheme.colors.textHighlight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
