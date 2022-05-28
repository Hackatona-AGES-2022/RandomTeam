// import 'package:reforco_app/components/glass.dart';
// import 'package:reforco_app/resource/app_strings.dart';

// // import 'package:comunicacao_hsl/router/routes.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// //import 'login_controller.dart';

// class Home extends StatefulWidget {
//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   List<String> images = [
//     "https://static.dicionariodesimbolos.com.br/upload/b5/3b/numero-1-3_xl.png",
//     "https://i.pinimg.com/originals/5c/29/31/5c293107ccba6da8d7b1185dcd034399.jpg",
//     "https://telhanorte.vteximg.com.br/arquivos/ids/338308-NaN-NaN/Numero-3-de-aco-com-bucha-e-parafuso-145cm-preto-Bemfixa.jpg",
//     "https://static.dicionariodesimbolos.com.br/upload/94/1e/numero-4-2_xl.png"
//   ];

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height / 2;
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage(AppStrings.images.background),
//               fit: BoxFit.cover,
//             ),
//           ),
//           child: Column(
//             children: [
//               PageView.builder(
//                   itemCount: 4,
//                   pageSnapping: true,
//                   itemBuilder: (context, pagePosition) {
//                     return Container(
//                         margin: EdgeInsets.all(10),
//                         child: Image.network(images[pagePosition]));
//                   })

//               //_createBanner(width, height),
//               //_createBody(width, height, context),
//             ],
//           )),
//     );
//   }

//   /*Widget _createBanner(double width, double height) {
//     return Container(
//         width: width,
//         height: height,
//         child: Center(
//           child: Image.asset(
//             AppStrings.images.logo,
//           ),
//         ));
//   }*/

//   Widget _createBody(double width, double height, context) {
//     return Container(
//         padding: const EdgeInsets.all(20),
//         width: width,
//         height: height,
//         child: Center(
//           child: Column(
//             children: [
//               TextField(
//                 keyboardType: TextInputType.emailAddress,
//                 maxLength: 45,
//                 decoration: _customTextFieldDecoration(placeholder: 'E-mail'),
//                 //controller: registrationController,
//               ),
//               SizedBox(height: 16.0),
//               TextField(
//                 keyboardType: TextInputType.visiblePassword,
//                 maxLength: 45,
//                 decoration: _customTextFieldDecoration(
//                     placeholder: 'Senha'), //Hide password
//                 //controller: registrationController,
//               ),
//               SizedBox(height: 16.0),
//               sendButton(context),
//               SizedBox(height: 16.0),
//               registerButton(context),
//             ],
//           ),
//         ));
//   }

//   InputDecoration _customTextFieldDecoration(
//       {required String placeholder, isCollapsed = true}) {
//     return InputDecoration(
//         hintText: placeholder,
//         filled: true,
//         fillColor: Colors.white,
//         counterText: "",
//         border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(40.0),
//             borderSide: BorderSide.none),
//         isCollapsed: isCollapsed,
//         contentPadding:
//             const EdgeInsets.symmetric(vertical: 14, horizontal: 20));
//   }

//   Widget sendButton(context) {
//     return TextButton(
//         onPressed: () {
//           //String registration = registrationController.value.text;
//           //if (registration.length == 8 && registration.isNotEmpty) {
//           // loginController.login(registration, (bool success) {
//           //if (success) {
//           //  Navigator.of(context).popAndPushNamed(Routes.home);
//           // } else {
//           //  onIncorrect(context);
//           // }
//           // });
//           // } else {
//           //badInput(context);
//           //}
//         },
//         child: Text(
//           AppStrings.connect,
//           style: TextStyle(color: Colors.white, fontSize: 16),
//         ),
//         style: TextButton.styleFrom(
//           minimumSize: Size(200, 48),
//           padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
//           backgroundColor: Colors.green,
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
//         ));
//   }

//   Widget registerButton(context) {
//     return TextButton(
//         onPressed: () {
//           //String registration = registrationController.value.text;
//           //if (registration.length == 8 && registration.isNotEmpty) {
//           // loginController.login(registration, (bool success) {
//           //if (success) {
//           //  Navigator.of(context).popAndPushNamed(Routes.home);
//           // } else {
//           //  onIncorrect(context);
//           // }
//           // });
//           // } else {
//           //badInput(context);
//           //}
//         },
//         child: Text(
//           AppStrings.register,
//           style: TextStyle(color: Colors.white, fontSize: 16),
//         ),
//         style: TextButton.styleFrom(
//           minimumSize: Size(200, 48),
//           padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
//           backgroundColor: Colors.green,
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
//         ));
//   }

//   // void onIncorrect(context) {
//   //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//   //     duration: Duration(seconds: 1),
//   //     backgroundColor: AppColors.redError,
//   //     behavior: SnackBarBehavior.floating,
//   //     margin: EdgeInsets.all(30.0),
//   //     shape: RoundedRectangleBorder(
//   //         borderRadius: BorderRadius.all(Radius.circular(10))),
//   //     padding: EdgeInsets.all(16.0),
//   //     content: Text('Matrícula inválida',
//   //         textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
//   //   ));
//   // }

//   // void badInput(context) {
//   //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//   //     backgroundColor: AppColors.redError,
//   //     behavior: SnackBarBehavior.floating,
//   //     margin: EdgeInsets.all(30.0),
//   //     shape: RoundedRectangleBorder(
//   //         borderRadius: BorderRadius.all(Radius.circular(10))),
//   //     padding: EdgeInsets.all(16.0),
//   //     content: Text('Devem ser 8 números',
//   //         textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
//   //   ));
//   // }
// }

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:reforco_app/resource/app_strings.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

// class CheckBox_Widget extends StatefulWidget {
//   const CheckBox_Widget({Key? key}) : super(key: key);

//   @override
//   State<CheckBox_Widget> createState() => _CheckBox_WidgetState();
// }

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height / 2;
    return MaterialApp(
      title: 'Tela Inicial',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tela Inicial'),
        ),
        body: Container(
            // height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppStrings.images.background),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                _createCarrousel(),
                Flexible(child: _homeListWidget())
              ],
            )),
      ),
    );
  }
}

Widget _createCarrousel() {
  return Container(
      child: CarouselSlider(
          items: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: new Image.asset('assets/port.png'),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: new Image.asset('assets/math.png'),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: new Image.asset('assets/geo.png'),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: new Image.asset('assets/hist.png'),
        )
      ],

          //Slider Container properties
          options: CarouselOptions(
            autoPlay: false,
          )));
}

// Widget _homeListWidget() {
//   return Container(
//     child: ListView.builder(
//       itemCount: 8,
//       itemBuilder: (context, index) {
//         return ListTile(
//           title: Text('item $index'),
//         );
//       },
//     ),

//     //Slider Container properties
//   );
// }

Widget _homeListWidget() {
  return Container(
    child: ListView(
      children: <Widget>[
        
        Image.asset('assets/exemploa.png',
            height: 90,
            width: 90,
        ),
        SizedBox(height: 10),
        Image.asset('assets/exemplob.png',
            height: 90,
            width: 90,
        ),
        SizedBox(height: 10),
        Image.asset('assets/exemploc.png',
            height: 90,
            width: 90,
        ),
        SizedBox(height: 10),
                Image.asset('assets/exemplod.png',
            height: 90,
            width: 90,
        ),
        SizedBox(height: 10),
                SizedBox(height: 10),
                Image.asset('assets/exemploe.png',
            height: 90,
            width: 90,
        ),
        SizedBox(height: 10),
                SizedBox(height: 10),
                Image.asset('assets/exemplof.png',
            height: 90,
            width: 90,
        ),
        SizedBox(height: 10),
      ],
    ),
  );
}
