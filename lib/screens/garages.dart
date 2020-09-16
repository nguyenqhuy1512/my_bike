import 'package:flutter/material.dart';
import 'package:my_bike/models/garages_model.dart';
import 'package:my_bike/models/vehicle_widget.dart';
import 'package:my_bike/screens/add_garage.dart';
import 'package:my_bike/screens/vehicle_list.dart';
import 'package:my_bike/widgets/text_field.dart';

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
  var dialog_odo_controler = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    dialog_odo_controler.dispose();
    super.dispose();
  }
  Widget CardVehicle(veh_md){
    return GestureDetector(
      child: Card(
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
                    flex: 8,
                    child: Container(
                      height: 30.0,
                      color: Colors.lightBlue,
                      child: Center(
                        child: Text(
                          '${veh_md.vehicle_name}',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: 30.0,
                      color: Colors.orange[400],
                      child: Center(
                        child: Text(
                            'Odo: ${veh_md.vehicle_odo} Km',
                            style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 30.0,
                      child: IconButton(
                        onPressed:(){
                          setState(() {
                            gar_md.remove(veh_md);
                          });
                        },
                        iconSize: 15.0,
                        icon: Icon(
                          Icons.delete
                        ),
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      onTap: (){
        showDialog(child: new Dialog(
          child: Container(
            height: 160.0,
            padding: EdgeInsets.all(10.0),
            child: new Column(
              children: <Widget>[
                SizedBox(height: 10.0),
                Text(
                  'Xin moi nhap so km hien tai',
                  style: TextStyle(
                    color: Colors.black
                  ),
                ),
                SizedBox(height: 10.0),
                TextFieldCustom(controller: dialog_odo_controler,
                    textContent:veh_md.vehicle_odo.toString(),
                    textunit: "KM",
                    input_number: true),
                FlatButton(
                  color: Colors.green,
                  child: new Text(
                      "Save",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: (){
                    setState((){
                      //this._text = _c.text;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VehicleList(veh_md.vehicle_id)),
                      );
                    });
                    //Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ), context: context);
      },
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
        ),
        title: Text(
          'NHA XE',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddGarage()),
          );
        },
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

