import 'package:flutter/material.dart';
import 'main.dart';

class EditarEsdevenimentForm extends StatefulWidget {
  const EditarEsdevenimentForm({Key? key}) : super(key: key);

  @override
  State<EditarEsdevenimentForm> createState() => _EditarEsdevenimentFormState();
}

class _EditarEsdevenimentFormState extends State<EditarEsdevenimentForm> {
  final _clauFormulari = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calendari de Oscar Imbernol"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(labelText: "Data inici"),
                ),
              ),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(labelText: "Data fi"),
                ),
              )
            ],
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: "Títol"),
          ),
          Expanded(
            child: TextFormField(
              maxLines: null,
              expands: true,
              decoration: const InputDecoration(
                labelText: "Descripció",
                alignLabelWithHint: true,
              ),
            ),
          )
        ],
      ),
    );
  }

  /**
  void save() {
    Esdeveniment().clases[claveClase] = Classe(
        horaInici: initTime,
        horaFinal: initTime,
        codiModul: modulo ?? "",
        descripcioModul: moduloDescripcion ?? "",
  }
*/
}
