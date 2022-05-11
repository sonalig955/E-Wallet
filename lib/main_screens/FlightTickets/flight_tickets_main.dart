import 'package:scratch_flutter/FlightTickets/airport.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlightSearchUI extends StatefulWidget {
  @override
  _FlightSearchUIState createState() => _FlightSearchUIState();
}

enum TripType { oneway, rountrip, multicity }

Map<TripType, String> _tripTypes = {
  TripType.oneway: "ONE WAY",
  TripType.rountrip: "ROUNDTRIP",
  TripType.multicity: "MULTICITY"
};

class _FlightSearchUIState extends State<FlightSearchUI> {
  // basic trip type where selection is  made is one way
  TripType _selectedTrip = TripType.oneway;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey,
        // there are two text flight and search with different text styles
        title: RichText(
          text: TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 32),
              children: [
                // flight
                TextSpan(
                  text: "Flight",
                  style: GoogleFonts.overpass(fontWeight: FontWeight.w200),
                ),
                // search
                TextSpan(
                  text: "Search",
                  style: GoogleFonts.overpass(fontWeight: FontWeight.bold),
                ),
              ]),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48),
          child: Column(
            children: <Widget>[
              // the container for all the types
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(21),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 6),
                          blurRadius: 6),
                    ]),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(_tripTypes.length, (index) {
                    // function which we will create soon!
                    return buildTripTypeSelector(
                        _tripTypes.keys.elementAt(index));
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              height: 20,
            ),

            // only one entry
            FlatButton(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 35),
              onPressed: () {},
              // creating this new function
              child: buildAirportSelector(

                // issue was that we assigned more space taking element to our short name area

                  AirportInfo(
                      "BOM",
                      "Chatrapati Shivaji Maharaj International Airport",
                      "Mumbai"),
                  Icons.flight_takeoff),
            ),

            Container(
              height: 1,
              color: Colors.black26,
            ),

            //second entry

            FlatButton(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 35),
              onPressed: () {},
              // creating this new function
              child: buildAirportSelector(

                // issue was that we assigned more space taking element to our short name area

                  AirportInfo(
                      "BOM",
                      "Chatrapati Shivaji Maharaj International Airport",
                      "Mumbai"),
                  Icons.flight_takeoff),
            ),

            Container(
              height: 1,
              color: Colors.black26,
            ),

            // the buttons

            Row(
              children: <Widget>[
                Expanded(
                    child: FlatButton(
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      onPressed: () {},
                      child: buildDateSelector("DEPARTURE", DateTime.now()),
                    )),
                Expanded(
                    child: FlatButton(
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      onPressed: () {},
                      child: buildDateSelector(
                          "RETURN", DateTime.now().add(Duration(days: 10))),
                    )),
              ],
            ),

           
            Container(
              height: 1,
              color: Colors.black26,
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: FlatButton(
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      onPressed: () {},
                      child: buildTravelersView(),
                    )),
                Expanded(
                    child: FlatButton(
                        color: Colors.white,
                        padding:
                        EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        onPressed: () {},
                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "CABIN CLASS",
                                  style: GoogleFonts.overpass(
                                    fontSize: 18,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  "ECONOMY\nCLASS",
                                  style: GoogleFonts.overpass(
                                    fontSize: 24,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ))),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 12),
                          blurRadius: 12,
                        ),
                      ],
                      borderRadius: BorderRadius.vertical(
                          bottom: Radius.elliptical(
                              MediaQuery.of(context).size.width * 2, 100)),
                    )),
                Center(
                  child: Material(
                    color: Colors.blue,
                    shape: CircleBorder(),
                    clipBehavior: Clip.antiAlias,
                    elevation: 16,
                    child: InkWell(
                      onTap: () {},
                      splashColor: Colors.orange,
                      child: Container(
                        width: 100,
                        height: 100,
                        alignment: Alignment.center,
                        child: Text(
                          "SEARCH",
                          style: GoogleFonts.overpass(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTripTypeSelector(TripType tripType) {
    var isSelected = _selectedTrip == tripType;
    return FlatButton(
      padding: EdgeInsets.only(left: 4, right: 16),
      onPressed: () {
        setState(() {
          _selectedTrip = tripType;
        });
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      color: isSelected ? Colors.blue : Colors.transparent,
      child: Row(
        children: <Widget>[
          if (isSelected)
            Icon(
              Icons.check_circle,
              color: Colors.white,
            ),

        ],
      ),
    );
  }

  Widget buildAirportSelector(AirportInfo airportinfo, IconData icon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        // airportCode
        Container(
          width: 60,
          child: Text(
            airportinfo.airportCode,
            style: GoogleFonts.overpass(
              fontWeight: FontWeight.w600,
              fontSize: 24,
              color: Colors.black54,
            ),
          ),
        ),

        //short name and long name

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              airportinfo.airportShortName,
              style: GoogleFonts.overpass(
                fontSize: 24,
                color: Colors.black87,
              ),
            ),
            Text(
              airportinfo.airportLongName,
              style: GoogleFonts.overpass(
                fontSize: 12,
                color: Colors.black87,
              ),
            )
          ],
        ),

        Icon(icon)
      ],
    );
  }

  Widget buildDateSelector(String title, DateTime dateTime) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: GoogleFonts.overpass(fontSize: 18, color: Colors.grey),
        ),
        Row(
          children: <Widget>[
            Text(
              dateTime.day.toString().padLeft(2, '0'),
              style: GoogleFonts.overpass(fontSize: 48),
            ),
            SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Jan 2020',
                  style: GoogleFonts.overpass(fontSize: 16),
                ),
                Text(
                  'Friday',
                  style: GoogleFonts.overpass(fontSize: 16, color: Colors.grey),
                ),
              ],
            )
          ],
        )
      ],
    );
  }

  Widget buildTravelersView() {
    return Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "TRAVELLERS",
              style: GoogleFonts.overpass(fontSize: 18, color: Colors.grey),
            ),
            Text(
              "01",
              style: GoogleFonts.overpass(fontSize: 48),
            )
          ],
        )
      ],
    );
  }
}