import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
        width: 2.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignInside,
      ),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          "Currency Converter..",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Rs. $result",
              style: const TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  hintText: "Please Enter an amount in USD : ",
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: const Icon(Icons.attach_money_rounded),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white70,
                  focusedBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            //button
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 86;
                  });
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    minimumSize: const Size(150, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
                child: const Text("Convert")),
          ],
        ),
      ),
    );
  }
}

// class CurrencyConverterMaterialPagee extends StatelessWidget {
//   const CurrencyConverterMaterialPagee({super.key});

//   TextEditingController get textEditingController => TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     // ignore: unused_local_variable
//     double result = 0;
//     final border = OutlineInputBorder(
//       borderSide: BorderSide(
//         color: Colors.white,
//         width: 2.0,
//         style: BorderStyle.solid,
//         strokeAlign: BorderSide.strokeAlignInside,
//       ),
//       borderRadius: BorderRadius.all(Radius.circular(20)),
//     );

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         elevation: 0,
//         title: const Text(
//           "Currency Converter..",
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//       ),
//       backgroundColor: Colors.black,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               result.toString(),
//               style: const TextStyle(
//                   fontSize: 55,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: TextField(
//                 controller: textEditingController,
//                 decoration: InputDecoration(
//                   hintText: "Please Enter an amount in USD : ",
//                   hintStyle: const TextStyle(
//                     color: Colors.black,
//                   ),
//                   prefixIcon: const Icon(Icons.attach_money_rounded),
//                   prefixIconColor: Colors.black,
//                   filled: true,
//                   fillColor: Colors.white70,
//                   focusedBorder: border,
//                 ),
//                 keyboardType: const TextInputType.numberWithOptions(
//                   decimal: true,
//                 ),
//               ),
//             ),
//             //button
//             ElevatedButton(
//                 onPressed: () {
//                   result = double.parse(textEditingController.text) * 86;
//                 },
//                 style: TextButton.styleFrom(
//                     backgroundColor: Colors.white,
//                     foregroundColor: Colors.black,
//                     minimumSize: const Size(150, 50),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(5),
//                     )),
//                 child: const Text("Convert")),
//           ],
//         ),
//       ),
//     );

//   }
// }
