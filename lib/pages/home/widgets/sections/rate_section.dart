import 'package:flutter/material.dart';
import 'package:udemyclone/pages/home/widgets/sections/vantagens.dart';

class RateWidget extends StatelessWidget {
  const RateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black))),
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        runSpacing: 16,
        children: [
          VantagensWidget(
              title: '+45.000 alunos', subtitle: 'Didádica garantida'),
          VantagensWidget(
              title: 'Certificado de conlusão', subtitle: 'Disponível para cursos pagos'),
          VantagensWidget(
              title: 'Acesso vitalício', subtitle: 'Aprenda no seu tempo'),
        ],
      ),
    );
  }
}
