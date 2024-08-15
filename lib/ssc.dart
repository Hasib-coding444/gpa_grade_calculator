

import 'package:flutter/material.dart';

class SSC extends StatefulWidget{
  const SSC({super.key});

  @override
  State<SSC> createState() => _JSCState();
}

class _JSCState extends State<SSC> {


  double Result=0.000;
  double ?B = 5.00;
  double ?e = 5.00;
  double ?m = 5.00;
  double ?p = 5.00;
  double ?c = 5.00;
  double ?b = 5.00;
  double ?i = 5.00;
  double ?I = 5.00;
  double ?s = 5.00;
  double ?o = 5.00;


  String result="Please type correct point";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "SSC GPA Calculate page",
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      body:SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child:Column(
          children:[

            const Text("Science Group",style: TextStyle(fontSize: 20),),

            const SizedBox(height: 30,),


            DropdownButtonFormField<double>(
              decoration: const InputDecoration(
                labelText: "Bangla" ,
                labelStyle: TextStyle(color: Colors.green,fontSize: 20,) ,
                border: OutlineInputBorder(),
              ),
              value: 5.00,
              items: <double>[5.00,4.00,3.50,3.00,2.00,1.00].map((double value)
              {return DropdownMenuItem<double>(
                value: value,
                child: Text(value.toString()),
              );}).toList(),

              onChanged: (double?newValue){
                setState(() {
                  B=newValue;
                });
              },

            ),
            const SizedBox(height: 30,),


            DropdownButtonFormField<double>(
              decoration: const InputDecoration(
                labelText: "English" ,
                labelStyle: TextStyle(color: Colors.green,fontSize: 20,) ,
                border: OutlineInputBorder(),
              ),
              value: 5.00,
              items: <double>[5.00,4.00,3.50,3.00,2.00,1.00].map((double value)
              {return DropdownMenuItem<double>(
                value: value,
                child: Text(value.toString()),
              );}).toList(),

              onChanged: (double?newValue){

                setState(() {
                  e=newValue;
                });
              },

            ),

            const SizedBox(height: 30,),

            DropdownButtonFormField<double>(
              decoration: const InputDecoration(
                labelText: "Math" ,
                labelStyle: TextStyle(color: Colors.green,fontSize: 20,) ,
                border: OutlineInputBorder(),
              ),
              value: 5.00,
              items: <double>[5.00,4.00,3.50,3.00,2.00,1.00].map((double value)
              {return DropdownMenuItem<double>(
                value: value,
                child: Text(value.toString()),
              );}).toList(),

              onChanged: (double?newValue){

                setState(() {
                  m=newValue;
                });

              },

            ),

            const SizedBox(height: 30,),

            DropdownButtonFormField<double>(
              decoration: const InputDecoration(
                labelText: "Physics" ,
                labelStyle: TextStyle(color: Colors.green,fontSize: 20,) ,
                border: OutlineInputBorder(),
              ),
              value: 5.00,
              items: <double>[5.00,4.00,3.50,3.00,2.00,1.00].map((double value)
              {return DropdownMenuItem<double>(
                value: value,
                child: Text(value.toString()),
              );}).toList(),

              onChanged: (double?newValue){

                setState(() {
                  p=newValue;
                });
              },

            ),

            const SizedBox(height: 30,),


            DropdownButtonFormField<double>(
              decoration: const InputDecoration(
                labelText: "Chemistry" ,
                labelStyle: TextStyle(color: Colors.green,fontSize: 20,) ,
                border: OutlineInputBorder(),
              ),
              value: 5.00,
              items: <double>[5.00,4.00,3.50,3.00,2.00,1.00].map((double value)
              {return DropdownMenuItem<double>(
                value: value,
                child: Text(value.toString()),
              );}).toList(),

              onChanged: (double?newValue){

                setState(() {
                  c=newValue;
                });
              },

            ),

            const SizedBox(height: 30,),


            DropdownButtonFormField<double>(
              decoration: const InputDecoration(
                labelText: "Biology" ,
                labelStyle: TextStyle(color: Colors.green,fontSize: 20,) ,
                border: OutlineInputBorder(),
              ),
              value: 5.00,
              items: <double>[5.00,4.00,3.50,3.00,2.00,1.00].map((double value)
              {return DropdownMenuItem<double>(
                value: value,
                child: Text(value.toString()),
              );}).toList(),

              onChanged: (double?newValue){

                setState(() {
                  b=newValue;
                });
              },

            ),

            const SizedBox(height: 30,),

            DropdownButtonFormField<double>(
              decoration: const InputDecoration(
                labelText: "ICT" ,
                labelStyle: TextStyle(color: Colors.green,fontSize: 20,) ,
                border: OutlineInputBorder(),
              ),
              value: 5.00,
              items: <double>[5.00,4.00,3.50,3.00,2.00,1.00].map((double value)
              {return DropdownMenuItem<double>(
                value: value,
                child: Text(value.toString()),
              );}).toList(),

              onChanged: (double?newValue){

                setState(() {
                  i= newValue;
                });
              },

            ),

            const SizedBox(height: 30,),


            DropdownButtonFormField<double>(
              decoration: const InputDecoration(
                labelText: "Islam" ,
                labelStyle: TextStyle(color: Colors.green,fontSize: 20,) ,
                border: OutlineInputBorder(),
              ),
              value: 5.00,
              items: <double>[5.00,4.00,3.50,3.00,2.00,1.00].map((double value)
              {return DropdownMenuItem<double>(
                value: value,
                child: Text(value.toString()),
              );}).toList(),

              onChanged: (double?newValue){

                setState(() {
                 I= newValue;
                });
              },

            ),

            const SizedBox(height: 30,),

            DropdownButtonFormField<double>(
              decoration: const InputDecoration(
                labelText: "Social Science" ,
                labelStyle: TextStyle(color: Colors.green,fontSize: 20,) ,
                border: OutlineInputBorder(),
              ),
              value: 5.00,
              items: <double>[5.00,4.00,3.50,3.00,2.00,1.00].map((double value)
              {return DropdownMenuItem<double>(
                value: value,
                child: Text(value.toString()),
              );}).toList(),

              onChanged: (double?newValue){
                setState(() {
                  s=newValue;
                });
              },

            ),

           const SizedBox(height: 30,),

            DropdownButtonFormField<double>(
              decoration: const InputDecoration(
                labelText: "Optional subject" ,
                labelStyle: TextStyle(color: Colors.green,fontSize: 20,) ,
                border: OutlineInputBorder(),
              ),
              value: 5.00,
              items: <double>[5.00,4.00,3.50,3.00,2.00,1.00].map((double value)
              {return DropdownMenuItem<double>(
                value: value,
                child: Text(value.toString()),
              );}).toList(),

              onChanged: (double?newValue){
                setState(() {
                  o=newValue;
                });
              },

            ),



            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed:(){

                      setState(() {
                        Result = ((B!+e!+m!+p!+c!+b!+i!+I!+s!+((o!)-2))/9);
                          if (Result>5.00){
                            Result=5.00;
                          }
                          else{
                          result="Please type correct point";
                          }

                      });

                    },
                    child: const Text("Get GPA",style: TextStyle(color: Colors.green,fontSize:20),)),

              ],
            ),
            const SizedBox(
              height:20,
            ),
            Text("GPA=$Result",
              style:const  TextStyle(color:
              Colors.green,
                  fontSize: 30,
                  fontWeight:FontWeight.bold),
            ),

          ],

        ),

      )
    );
  }
}