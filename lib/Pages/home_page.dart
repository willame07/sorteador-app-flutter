import 'package:flutter/material.dart';
import 'package:meu_app_flutter_clone/services/sorteador_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroSorteado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu Primeiro App Flutter"),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(child: Text(numeroSorteado.toString())),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.monetization_on_outlined),
        onPressed: () {
          setState(() {
            numeroSorteado = SorteadorService.sortearNumero();
          });
          debugPrint(numeroSorteado.toString());
        },
      ),
    );
  }
}
