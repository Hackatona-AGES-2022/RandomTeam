import 'package:reforco_app/components/glass.dart';
import 'package:reforco_app/resource/app_strings.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//import 'login_controller.dart';

class Search extends StatefulWidget {
  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final lista=[
    {'titulo':'Atividade de matematica muito complicada','descricao':'Essa é uma atividade de matematica, onde quem conseguir resolver é muito bom.','tutor':'Fulaninho da SIlva','instituicao':'PUCRS'},
    {'titulo':'Atividade de Portugues muito complicada','descricao':'Essa é uma atividade de matematica, onde quem conseguir resolver é muito bom.','tutor':'Beltraninho Silva','instituicao':'PUCRS'},
    {'titulo':'Atividade de Historia muito complicada','descricao':'Essa é uma atividade de matematica, onde quem conseguir resolver é muito bom.','tutor':'Code Bugado','instituicao':'PUCRS'},
    {'titulo':'Atividade de Geografia muito complicada','descricao':'Essa é uma atividade de matematica, onde quem conseguir resolver é muito bom.','tutor':'Agua Molhada','instituicao':'PUCRS'},
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height / 2;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('Meu caramb'),
          Expanded(child: ListView.builder(shrinkWrap: true,
          itemBuilder: (context, i){
            var listas=lista[i];
            var word=listas['titulo'];
            var word2=listas['descricao'];
            return Card(
              child: ListTile(title: Text('$word'),
              subtitle: Text('$word2'),),
            );
          }))
        ],
      ),
    );
  }

  Widget _createBody(double width, double height, context) {
    return Container(
        padding: const EdgeInsets.all(20),
        width: width,
        height: height,
        child: Center(
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.emailAddress,
                maxLength: 45,
                decoration: _customTextFieldDecoration(placeholder: 'E-mail'),
                //controller: registrationController,
              ),
              SizedBox(height: 16.0),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                maxLength: 45,
                decoration: _customTextFieldDecoration(
                    placeholder: 'Senha'), //Hide password
                //controller: registrationController,
              ),
              SizedBox(height: 16.0),
              sendButton(context),
              SizedBox(height: 16.0),
              registerButton(context),
            ],
          ),
        ));
  }

  InputDecoration _customTextFieldDecoration(
      {required String placeholder, isCollapsed = true}) {
    return InputDecoration(
        hintText: placeholder,
        filled: true,
        fillColor: Colors.white,
        counterText: "",
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.0),
            borderSide: BorderSide.none),
        isCollapsed: isCollapsed,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 14, horizontal: 20));
  }

  Widget sendButton(context) {
    return TextButton(
        onPressed: () {

        },
        child: Text(
          AppStrings.connect,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        style: TextButton.styleFrom(
          minimumSize: Size(200, 48),
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          backgroundColor: Colors.green,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ));
  }

  Widget registerButton(context) {
    return TextButton(
        onPressed: () {

        },
        child: Text(
          AppStrings.register,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        style: TextButton.styleFrom(
          minimumSize: Size(200, 48),
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          backgroundColor: Colors.green,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ));
  }
}
