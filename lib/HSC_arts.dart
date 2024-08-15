

import 'package:flutter/material.dart';

class hsc_a extends StatefulWidget{
  const hsc_a({super.key});

  @override
  State<hsc_a> createState() => _JSCState();
}

class _JSCState extends State<hsc_a> {


  double Result=0.000;
  double ?B = 5.00;
  double ?e = 5.00;
  double ?I = 5.00;
  double ?E = 5.00;
  double ?c = 5.00;
  double ?ih = 5.00;
  double ?o = 5.00;



  String result="Please type correct point";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
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

              const Text("Arts Group",style: TextStyle(fontSize: 17),),

              const SizedBox(height: 30,),


              DropdownButtonFormField<double>(
                decoration: const InputDecoration(
                  labelText: "Bangla" ,
                  labelStyle: TextStyle(color: Colors.purple,fontSize:17,) ,
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
                  labelStyle: TextStyle(color: Colors.purple,fontSize: 17,) ,
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
                  labelText: "ICT" ,
                  labelStyle: TextStyle(color: Colors.purple,fontSize: 20,) ,
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
                    I=newValue;
                  });
                },

              ),

              const SizedBox(height: 30,),
              DropdownButtonFormField<double>(
                decoration: const InputDecoration(
                  labelText: "Economics " ,
                  labelStyle: TextStyle(color: Colors.purple,fontSize:20,) ,
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
                    E=newValue;
                  });
                },

              ),

              const SizedBox(height: 30,),


              DropdownButtonFormField<double>(
                decoration: const InputDecoration(
                  labelText: "Civic & Good Govern" ,
                  labelStyle: TextStyle(color: Colors.purple,fontSize: 20,) ,
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
                  labelText: " Islamic History " ,
                  labelStyle: TextStyle(color: Colors.purple,fontSize:20,) ,
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
                    ih=newValue;
                  });
                },

              ),

              const SizedBox(height: 30,),

              DropdownButtonFormField<double>(
                decoration: const InputDecoration(
                  labelText: "Optional-(agricultural education/others subject)" ,
                  labelStyle: TextStyle(color: Colors.purple,fontSize: 20,) ,
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
                    o= newValue;
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
                          Result = ((B!+e!+I!+E!+c!+ih!+((o!)-2))/6);
                          if (Result>5.00){
                            Result=5.00;
                          }
                          else{
                            result="Please type correct point";
                          }

                        });

                      },
                      child: const Text("Get GPA",style: TextStyle(color: Colors.purple,fontSize:20),)),

                ],
              ),
              const SizedBox(
                height:20,
              ),
              Text("GPA=$Result",
                style:const  TextStyle(color:
                Colors.purple,
                    fontSize: 30,
                    fontWeight:FontWeight.bold),
              ),

            ],

          ),

        )
    );
  }
}