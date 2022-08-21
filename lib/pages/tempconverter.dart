import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:midterm_620710177/pages/temperature.dart';

class Tempconverter extends StatefulWidget {
  @override
  State<Tempconverter> createState() => Temp();
}
class Temp extends State<Tempconverter>{
  final control =TextEditingController();
  var show="";
  Temps t=new Temps();
  void KeltoFar(){
    var num=double.tryParse(control.text);
var s=num.toString();
    if(num==null){
      setState(() {
        show='Please enter a value to convert';
      });}



    setState(() {
      var num=double.tryParse(control.text);
      double j= t.kelTofar(num!);
      show='$num Kelvin = $j Fahrenheit';
    });


  }
  void FartoKel(){
      var num=double.tryParse(control.text);
    if(num==null){
      setState(() {
        show='Please enter a value to convert';
      });

    }
    setState(() {
      var num=double.tryParse(control.text);

      double j=t.farTokel(num!);
      show='$num Fahrenheit = $j Kelvin';
    });

  }
  void CeltoFar(){
    var num=double.tryParse(control.text);
    if(num==null){
      setState(() {
        show='Please enter a value to convert';
      });

    }
    setState(() {
      var num=double.tryParse(control.text);
      double j=t.celTofar(num!);
      show='$num Celsius = $j Fahrenheit';
    });

  }
  void FartoCel(){
    var num=double.tryParse(control.text);
    if(num==null){
      setState(() {
        show='Please enter a value to convert';
      });

    }
    setState(() {
      var num=double.tryParse(control.text);
      double j=t.farTocel(num!);
      show='$num Fahrenheit = $j Celsius';
    });

  }
  void CeltoKel(){
    var num=double.tryParse(control.text);
    if(num==null){
      setState(() {
        show='Please enter a value to convert';
      });

    }
    setState(() {
      var num=double.tryParse(control.text);
     double j= t.celTokel(num!);
      show='$num Celsius = $j Kelvin';
    });

  }
  void KeltoCel(){
    var num=double.tryParse(control.text);
    if(num==null){
      setState(() {
        show='Please enter a value to convert';
      });

    }
    setState(() {
      double? num=double.tryParse(control.text);
      double j=t.kelTocel(num!);
      show='$num Kelvin = $j Celsius';
    });

  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Midterm Exam'),
    ),

    body: Container(
      decoration: BoxDecoration(
    color: Colors.white, //สีพื้นหลังของ Container
    border: Border.all(
    width: 2.0,
    color: Colors.deepPurple.shade200,
    ),
      borderRadius: BorderRadius.circular(5.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 3,
          blurRadius: 5,
          offset: const Offset(0, 3),
        ),

      ],

    ),
  child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Temperature Converter',style:TextStyle(fontSize: 32),),
            SizedBox(width: 50.0,height: 70.0,),
            TextField(
              controller: control,
              decoration:const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a temperature value to convert',
              ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
             children:[  SizedBox(width: 50.0,height: 40.0,),
               ElevatedButton(
                onPressed: FartoCel,
                child: const Text('Fahrenheit to Celsius')
            ), ElevatedButton(
                onPressed: CeltoFar,
                child: const Text('Celsius to Fahrenheit')
            ),],),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
           children:[  SizedBox(width: 60.0,height: 40.0,),
             ElevatedButton(
                onPressed: CeltoKel,
                child: const Text('Celsius to Kelvin')
            ),
            ElevatedButton(
                onPressed: KeltoCel,
                child: const Text('Kelvin to Celsius')
            ),]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                SizedBox(width: 60.0,height: 40.0,),
            ElevatedButton(
                onPressed: FartoKel,
                child: const Text('Fahrenheit to Kelvin')
            ),
            ElevatedButton(
                onPressed: KeltoFar,
                child: const Text('Kelvin to Fahrenheit')
            ),],),
            Text(show),
      ]
            ),

             )
  );





  }

}