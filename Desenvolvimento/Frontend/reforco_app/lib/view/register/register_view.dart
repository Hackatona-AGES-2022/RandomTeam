import 'package:reforco_app/components/glass.dart';
import 'package:reforco_app/resource/app_strings.dart';

// import 'package:comunicacao_hsl/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//import 'login_controller.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String dropdownValue = 'Tutor';
  
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height / 2;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppStrings.images.background),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              _createBanner(width, height),
              _createBody(width, height, context),
            ],
          )),
    );
  }

  Widget _createBanner(double width, double height) {
    return Container(
        width: width,
        //height: (height*0.25),
        child: Center(
          child: Image.asset(
            AppStrings.images.logo_register,
          ),
        ));
  }

  Widget _createBody(double width, double height, context) {
    return Container(
        //padding: const EdgeInsets.all(20),
        width: width,
        height: height,
        child: Center(
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.name,
                maxLength: 45,
                decoration: _customTextFieldDecoration(placeholder: 'Nome Completo'),
                //controller: registrationController,
              ),
              SizedBox(height: 16.0),
              TextField(
                keyboardType: TextInputType.emailAddress,
                maxLength: 45,
                decoration: _customTextFieldDecoration(
                    placeholder: 'Email'), //Hide password
                //controller: registrationController,
              ),
               SizedBox(height: 16.0),
              TextField(
                keyboardType: TextInputType.name,
                maxLength: 45,
                decoration: _customTextFieldDecoration(
                    placeholder: 'Instituição'), //Hide password
                //controller: registrationController,
              ),
              SizedBox(height: 16.0),
              TextField(
                keyboardType: TextInputType.number,
                maxLength: 45,
                decoration: _customTextFieldDecoration(
                    placeholder: 'Senha'), //Hide password
                //controller: registrationController,
              ),
              SizedBox(height: 16.0),
              DecoratedBox(
  decoration: BoxDecoration( 
     color: Colors.white, //background color of dropdown button
     border: Border.all(color: Colors.black38, width:3), //border of dropdown button
     borderRadius: BorderRadius.circular(40), //border raiuds of dropdown button
     boxShadow: <BoxShadow>[ //apply shadow on Dropdown button
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                blurRadius: 5) //blur radius of shadow
          ]
  ),
  
  child:Padding(
    padding: EdgeInsets.only(left:30, right:30),
     child:DropdownButton(
      value: "0",
      items: [ //add items in the dropdown 
        DropdownMenuItem(
          child: Text("Aluno"),
          value: "0",
        ), 
        DropdownMenuItem(
          child: Text("Tutor"),
          value: "1"
        ),
      ],
      onChanged: (value){ //get value when changed
          print("You have selected $value");
      },
      icon: Padding( //Icon at tail, arrow bottom is default icon
        padding: EdgeInsets.only(left:20),
        child:Icon(Icons.arrow_circle_down_sharp)
      ), 
      iconEnabledColor: Colors.green, //Icon color
      style: TextStyle(  //te
         color: Color.fromARGB(255, 0, 0, 0), //Font color
         fontSize: 20 //font size on dropdown button
      ),
      
      dropdownColor: Color.fromARGB(255, 151, 151, 151), //dropdown background color
      underline: Container(), //remove underline
      isExpanded: true, //make true to make width 100%
     )
  )
),
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
          //String registration = registrationController.value.text;
          //if (registration.length == 8 && registration.isNotEmpty) {
          // loginController.login(registration, (bool success) {
          //if (success) {
          //  Navigator.of(context).popAndPushNamed(Routes.home);
          // } else {
          //  onIncorrect(context);
          // }
          // });
          // } else {
          //badInput(context);
          //}
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
          //String registration = registrationController.value.text;
          //if (registration.length == 8 && registration.isNotEmpty) {
          // loginController.login(registration, (bool success) {
          //if (success) {
          //  Navigator.of(context).popAndPushNamed(Routes.home);
          // } else {
          //  onIncorrect(context);
          // }
          // });
          // } else {
          //badInput(context);
          //}
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

  // void onIncorrect(context) {
  //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //     duration: Duration(seconds: 1),
  //     backgroundColor: AppColors.redError,
  //     behavior: SnackBarBehavior.floating,
  //     margin: EdgeInsets.all(30.0),
  //     shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.all(Radius.circular(10))),
  //     padding: EdgeInsets.all(16.0),
  //     content: Text('Matrícula inválida',
  //         textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
  //   ));
  // }

  // void badInput(context) {
  //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //     backgroundColor: AppColors.redError,
  //     behavior: SnackBarBehavior.floating,
  //     margin: EdgeInsets.all(30.0),
  //     shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.all(Radius.circular(10))),
  //     padding: EdgeInsets.all(16.0),
  //     content: Text('Devem ser 8 números',
  //         textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
  //   ));
  // }
}
