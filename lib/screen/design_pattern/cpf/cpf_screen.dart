import 'package:flutter/material.dart';
import 'package:masterclass_app/models/cpf/cpf_store.dart';
import 'package:masterclass_app/screen/widgets/header_widget.dart';
import 'package:masterclass_app/theme/app_theme.dart';
import 'package:mask_input_formatter/mask_input_formatter.dart';

class CpfScreen extends StatefulWidget {
  const CpfScreen({Key? key}) : super(key: key);

  @override
  State<CpfScreen> createState() => _CpfScreenState();
}

class _CpfScreenState extends State<CpfScreen> {
  final store = CpfStore();
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
              HeaderWidget(title: "Validador de CPF", logo: false),
              const SizedBox(height: 16),
              TextField(
                style: TextStyle(
                  fontSize: 20,
                  color: AppTheme.colors.textHighlight,
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [MaskInputFormatter(mask: '###.###.###-##')],
                onChanged: store.setCpf,
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
                  prefixIcon: store.validation == true
                      ? Icon(
                          Icons.check,
                          color: AppTheme.colors.check,
                        )
                      : Icon(
                          Icons.error_outline,
                          color: AppTheme.colors.primary,
                        ),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: AppTheme.colors.primary,
                ),
                onPressed: store.validationCpf,
                child: Text(
                  "Validar CPF!",
                  style: TextStyle(
                    fontSize: 20,
                    color: AppTheme.colors.textHighlight,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              AnimatedBuilder(
                animation: store,
                builder: (context, child) {
                  return Text(
                    store.message,
                    style: TextStyle(
                      fontSize: 24,
                      color: store.message == "CPF válido!"
                          ? AppTheme.colors.check
                          : AppTheme.colors.textHighlight,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
