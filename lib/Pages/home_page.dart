import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_app_flutter_clone/services/sorteador_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroSorteado = 0;
  var qtdSorteios = 0;
  var ultimosorteio = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu Primeiro App Flutter"),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Tivemos até agora $qtdSorteios sorteios!", 
            style:GoogleFonts.tajawal(fontSize: 48)),
          Text(
            numeroSorteado.toString(), 
            style:GoogleFonts.tajawal(fontSize: 100)),
          Text(
            "O ultimo número sorteado foi: $ultimosorteio", 
            style:GoogleFonts.tajawal(fontSize: 48)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.monetization_on_outlined),
        onPressed: () {
          setState(() {
            qtdSorteios++;
            numeroSorteado = SorteadorService.sortearNumero();
            ultimosorteio = numeroSorteado;
          });
          debugPrint(numeroSorteado.toString());
        },
      ),
    );
  }
}
