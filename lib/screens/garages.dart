import 'package:flutter/material.dart';
import 'package:my_bike/models/garages_model.dart';

class Garages extends StatefulWidget {
  @override
  _GaragesState createState() => _GaragesState();
}
class _GaragesState extends State<Garages> {
  List<garage_md> gar_md = [
    garage_md(vehicle_id: 1,vehicle_name: 'HONDA CBR250 RR1',vehicle_odo: 4000,img_asset:'12345.jpg'),
    garage_md(vehicle_id: 2,vehicle_name: 'HONDA CBR250 RR2',vehicle_odo: 3200,img_asset:'12345.jpg'),
    garage_md(vehicle_id: 3,vehicle_name: 'HONDA CBR250 RR3',vehicle_odo: 3300,img_asset:'12345.jpg')
  ];

  Widget CardVehicle(veh_md){
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image(
              image: AssetImage('assets/${veh_md.img_asset}'),
              fit: BoxFit.cover,
              height: 100.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 30.0,
                    color: Colors.lightBlue,
                    child: Center(
                      child: Text(
                        '${veh_md.vehicle_name}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 30.0,
                    color: Colors.orange[200],
                    child: Center(
                      child: Text(
                          'Odo: ${veh_md.vehicle_odo} Km',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
          //onPressed: (){},
        ),
        title: Text(
          'NHA XE'
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text(
        '+',
        style:TextStyle(
          fontSize: 30.0,
          ) ,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: gar_md.map((veh){
            return CardVehicle(veh);
        }).toList(),
        ),
        )
      );
  }
}

