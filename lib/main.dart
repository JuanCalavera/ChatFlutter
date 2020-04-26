import 'package:chat/chat_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());

  
  /*
  
  Escrevendo dados no banco de Dados no Firestore:
  Firestore.instance.collection("mensagens").document("Nome do documento").collection("Nome da coleção dentro do documento").updateData({
    'read' = true
  });

  No caso de haver uma coleção dentro do documento:
  Firestore.instance.collection("mensagens").document("Nome do documento").collection("Nome da coleção dentro do documento").updateData({
    'read' = true
  });
  
  No caso de querer escrever um novo documento dentro da coleção:
  Firestore.instance.collection("mensagens").document("Nome do documento").collection("Nome da coleção dentro do documento").document().setData({
    'arqname' = 'foto'
  });


  Para ler os dados no banco:
  QuerySnapshot snapshot = await Firestore.instance.collection('mensagens').getDocuments(); - Como temos await no inicio dessa chamada, então necessariamente a função tem de ser assíncrona.
  snapshot.documents;

  Caso eu queira dar print em cada documento:
  QuerySnapshot snapshot = await Firestore.instance.collection('mensagens').getDocuments(); - Como temos await no inicio dessa chamada, então necessariamente a função tem de ser assíncrona.
  snapshot.documents.forEach((d){
    print(d.data);
  });
  
  QuerySnapshot => Para vários documentos
  DocumentSnapshot snapshot = await Firestore.instance.collection('mensagens').documents('id do documento').get(); - Como temos await no inicio dessa chamada, então necessariamente a função tem de ser assíncrona.
  print(snapshot.data);
  print(snapshot.documentID); -> Caso queiro o ID do documento.
  d.reference({'lido : false'}); -> Pegando a referência e adicionando um campo.
  });

  DocumentSnapshot => Para um determinado documento
  
  Caso queira ser notificado a cada modificação no banco:

  Firestore.instance.collection("mensagens").snapshots().listen((dado) { //-> sempre que algo mudar ele chama essa pequena função.
    dado.documents.forEach((d) {
      print(d.data);
    });

  Ou caso queira que só a primeira; segunda;terceira modificação do dado seja mostrada:

  Firestore.instance.collection("mensagens").snapshots().listen((dado) {
    print(dado[0].data); -> Neste caso ele pega a primeira que é identificada por 0, mas pode alterar a array para outro número/campo de interesse.
    });

  Ou também queira um document específico definido pelo seu ID:

  Firestore.instance.collection("mensagens").document("digite aqui o ID específico").snapshots().listen((dado) { 
    print(dado.data);
    }); 
  */
  }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Chat Flutter',
        theme: ThemeData(
            primarySwatch: Colors.green,
            iconTheme: IconThemeData(
              color: Colors.green,
            )),
        home: ChatScreen());
  }
}
