import 'package:flutter/material.dart';
import 'package:my_bike/models/vehicle_widget.dart';

class VehicleList extends StatefulWidget {
  final int veh_id;//if you have multiple values add here
  VehicleList(this.veh_id, {Key key}): super(key: key);//add also..example this.abc,this...
  @override
  _VehicleListState createState() => _VehicleListState();
  }

class _VehicleListState extends State<VehicleList> {
  List<VehicleWidget> veh_wd_list = [];
  List<VehicleWidget> veh_wd = [
    VehicleWidget(veh_wid_brand: 'RK1',veh_wid_desc: 'NICE1',veh_wid_detail: '14-15',veh_wid_from: 'AMV',veh_wid_id: 1,veh_wid_img: 'widget1.PNG',veh_wid_limit: 20000,veh_wid_name: 'Nhong sen dia',veh_wid_price: 1600000,veh_wid_used: 0),
    VehicleWidget(veh_wid_brand: 'RK2',veh_wid_desc: 'NICE2',veh_wid_detail: '14-16',veh_wid_from: 'MOTO',veh_wid_id: 2,veh_wid_img: 'widget2.PNG',veh_wid_limit: 18000,veh_wid_name: 'Phuoc',veh_wid_price: 3600000,veh_wid_used: 10),
    VehicleWidget(veh_wid_brand: 'RK3',veh_wid_desc: 'NICE3',veh_wid_detail: '14-17',veh_wid_from: 'CF',veh_wid_id: 3,veh_wid_img: 'widget3.PNG',veh_wid_limit: 16000,veh_wid_name: 'LOC GIO',veh_wid_price: 160000,veh_wid_used: 20),
    VehicleWidget(veh_wid_brand: 'RK4',veh_wid_desc: 'NICE4',veh_wid_detail: '14-18',veh_wid_from: 'SHOP',veh_wid_id: 4,veh_wid_img: 'widget4.PNG',veh_wid_limit: 14000,veh_wid_name: 'LOP',veh_wid_price: 1000000,veh_wid_used: 30),
    VehicleWidget(veh_wid_brand: 'RK5',veh_wid_desc: 'NICE5',veh_wid_detail: '14-19',veh_wid_from: 'MT',veh_wid_id: 5,veh_wid_img: 'widget5.PNG',veh_wid_limit: 12000,veh_wid_name: 'DAU NHOT',veh_wid_price: 800000,veh_wid_used: 40),
  ];
  List<VehicleWidget> veh_wd_1 = [
    VehicleWidget(veh_wid_brand: 'IPONE1',veh_wid_desc: 'GOOD1',veh_wid_detail: '15-16',veh_wid_from: 'NEW_AMV',veh_wid_id: 1,veh_wid_img: 'widget1.PNG',veh_wid_limit: 20000,veh_wid_name: 'Nhong sen dia',veh_wid_price: 1600000,veh_wid_used: 0),
    VehicleWidget(veh_wid_brand: 'IPONE2',veh_wid_desc: 'GOOD2',veh_wid_detail: '15-17',veh_wid_from: 'NEW_MOTO',veh_wid_id: 2,veh_wid_img: 'widget2.PNG',veh_wid_limit: 18000,veh_wid_name: 'Phuoc',veh_wid_price: 3600000,veh_wid_used: 10),
    VehicleWidget(veh_wid_brand: 'IPONE3',veh_wid_desc: 'GOOD3',veh_wid_detail: '15-18',veh_wid_from: 'NEW_CF',veh_wid_id: 3,veh_wid_img: 'widget3.PNG',veh_wid_limit: 16000,veh_wid_name: 'LOC GIO',veh_wid_price: 160000,veh_wid_used: 20),
    VehicleWidget(veh_wid_brand: 'IPONE4',veh_wid_desc: 'GOOD4',veh_wid_detail: '15-19',veh_wid_from: 'NEW_SHOP',veh_wid_id: 4,veh_wid_img: 'widget4.PNG',veh_wid_limit: 14000,veh_wid_name: 'LOP',veh_wid_price: 1000000,veh_wid_used: 30),
    VehicleWidget(veh_wid_brand: 'IPONE5',veh_wid_desc: 'GOOD5',veh_wid_detail: '15-20',veh_wid_from: 'NEW_MT',veh_wid_id: 5,veh_wid_img: 'widget5.PNG',veh_wid_limit: 12000,veh_wid_name: 'DAU NHOT',veh_wid_price: 800000,veh_wid_used: 40),
  ];

  @override
  void initState() {
    print(widget.veh_id);
    switch(widget.veh_id){
      case 1:
        veh_wd_list = veh_wd;
        break;
      case 2:
        veh_wd_list = veh_wd_1;
        break;
      default:
        veh_wd_list = veh_wd;
        break;
    }
    super.initState();
  }
  Widget CardVehicleWidget(vehwid_md){
    return GestureDetector(
      child: Card(
        color: Colors.lightBlue,
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5.0),
                height: 80.0,
                width: 80.0,
                child: Image(
                  image: AssetImage('assets/${vehwid_md.veh_wid_img}'),
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                padding: EdgeInsets.all(5.0),
                height: 80.0,
                width: 80.0,
                color: Colors.redAccent,
                child: Column(
                  
                ),

              ),
              new Spacer(),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(5.0),
                child: IconButton(
                  onPressed:(){
                    /*setState(() {
                      gar_md.remove(veh_md);
                    });*/
                  },
                  iconSize: 30.0,
                  icon: Icon(
                      Icons.delete
                  ),
                  color: Colors.red,
                ),
              )


            ],






          ),
        ),
      ),
      onTap: (){

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
          'PHU TUNG',
        ),
      ),


        floatingActionButton: FloatingActionButton(
          onPressed: (){
            /*Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddGarage()),
            );*/
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
            children: veh_wd_list.map((veh){
              return CardVehicleWidget(veh);
            }).toList(),
          ),
        )
    );
  }
}

