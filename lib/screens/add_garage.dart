import 'package:flutter/material.dart';
import 'package:my_bike/widgets/text_field.dart';

class AddGarage extends StatefulWidget {
  @override
  _AddGarageState createState() => _AddGarageState();
}
class _AddGarageState extends State<AddGarage> {
  var veh_name = TextEditingController();
  var veh_odo = TextEditingController();
  var veh_desc = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    veh_name.dispose();
    veh_odo.dispose();
    veh_desc.dispose();
    super.dispose();
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
          'THEM XE',
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0,10.0, 10.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFieldCustom(controller: veh_name,texthint: "Nhap ten xe",input_number: false),
            SizedBox(height: 10.0,),
            TextFieldCustom(controller: veh_odo,texthint: "So Km da chay",textunit: "KM",input_number: true),
            SizedBox(height: 10.0,),
            TextFieldCustom(controller: veh_desc,texthint: "Thong tin them",input_number: false),
            SizedBox(height: 10.0,),
            FlatButton(
              onPressed: (){
                return showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      // Retrieve the text the that user has entered by using the
                      // TextEditingController.
                      content: Text(veh_name.text + '-' + veh_odo.text + '-' + veh_desc.text),
                    );
                  },
                );
              },
              color: Colors.green,
              child: Text(
                'THEM',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
