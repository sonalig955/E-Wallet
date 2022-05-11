import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scratch_flutter/widgets/text-input.dart';

class JioPage extends StatefulWidget {
  const JioPage({Key? key}) : super(key: key);

  @override
  State<JioPage> createState() => _JioPageState();
}

class _JioPageState extends State<JioPage> {
  final List<String> _animals = <String>['₹15/1GB','₹25/2GB', '₹719/ 2GB PER DAY/ 3 MONTH','₹249/ 1.5GB PER DAY/ 1 MONTH','₹499/ 1.5GB PER DAY/ 2 MONTH'];
  String dropdownValue = '₹15/1GB';
  String? _selectedColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey.shade400,
        // there are two text flight and search with different text styles
        title: RichText(
          text: TextSpan(
              style: const TextStyle(color: Colors.black, fontSize: 32,fontStyle: FontStyle.italic),
              children: [
                // flight
                TextSpan(
                  text: "Reliance",
                  style: GoogleFonts.overpass(fontWeight: FontWeight.w200),
                ),
                // search
                TextSpan(
                  text: "Jio",
                  style: GoogleFonts.overpass(fontWeight: FontWeight.bold),
                ),
              ]),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 57),
              child: TextInputFeild(icon: Icons.phone, hint: 'Enter Your Number', inputType: null, inputAction: null,
              ),
            ),
            Container(
              width: 390,
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(30)),
              child: DropdownButton<String>(
                onChanged: (value) {
                  setState(() {
                    _selectedColor = value;
                  });
                },
                value: _selectedColor,

                // Hide the default underline
                underline: Container(),
                hint: const Center(
                    child: Text(
                      'Select your Plan',
                      style: TextStyle(color: Colors.white),
                    )),
                icon: const Icon(
                  Icons.arrow_downward,
                  color: Colors.yellow,
                ),
                isExpanded: true,

                // The list of options
                items: _animals
                    .map((e) => DropdownMenuItem(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      e,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                  value: e,
                ))
                    .toList(),

                // Customize the selected item
                selectedItemBuilder: (BuildContext context) => _animals
                    .map((e) => Center(
                  child: Text(
                    e,
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.amber,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                ).toList(),
              ),


            ),
            SizedBox(height: 50,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.white,
                shadowColor: Colors.greenAccent,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                minimumSize: Size(120, 40), //////// HERE
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'QrPage');
              },
              child: Text('Pay'),
            )

          ],
        ),

      ),

    );
  }
}
