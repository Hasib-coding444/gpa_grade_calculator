

import 'package:flutter/material.dart';

class JSC extends StatefulWidget{
  const JSC({super.key});

  @override
  State<JSC> createState() => _JSCState();
}

class _JSCState extends State<JSC> {


  double Result=0.000;
  double ?B = 5.00;
  double ?e = 5.00;
  double ?m = 5.00;
  double ?s = 5.00;
  double ?i = 5.00;
  double ?I = 5.00;
  double ?a = 5.00;


  String result="Please type correct point";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Text(
            "JSC GPA Calculate page",
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



              const SizedBox(height: 30,),


              DropdownButtonFormField<double>(
                decoration: const InputDecoration(
                  labelText: "Bangla" ,
                  labelStyle: TextStyle(color: Colors.deepOrange,fontSize: 20,) ,
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
                  labelStyle: TextStyle(color: Colors.deepOrange,fontSize: 20,) ,
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
                  labelStyle: TextStyle(color: Colors.deepOrange,fontSize: 20,) ,
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
                  labelText: "Social Science" ,
                  labelStyle: TextStyle(color: Colors.deepOrange,fontSize: 20,) ,
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
                  labelText: "Islam" ,
                  labelStyle: TextStyle(color: Colors.deepOrange,fontSize: 20,) ,
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
                  labelText: "ICT" ,
                  labelStyle: TextStyle(color: Colors.deepOrange,fontSize: 20,) ,
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
                    i=newValue;
                  });
                },

              ),

              const SizedBox(height: 30,),

              DropdownButtonFormField<double>(
                decoration: const InputDecoration(
                  labelText: "Agricultural Education" ,
                  labelStyle: TextStyle(color: Colors.deepOrange,fontSize: 20,) ,
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
                    a= newValue;
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
                          Result = ((B!+e!+m!+s!+i!+I!+((a!)-2))/6);
                          if (Result>5.00){
                            Result=5.00;
                          }
                          else{
                            result="Please type correct point";
                          }

                        });

                      },
                      child: const Text("Get GPA",style: TextStyle(color: Colors.deepOrange,fontSize:20),)),

                ],
              ),
              const SizedBox(
                height:20,
              ),
              Text("GPA=$Result",
                style:const  TextStyle(color:
                Colors.deepOrange,
                    fontSize: 30,
                    fontWeight:FontWeight.bold),
              ),

            ],

          ),

        )
    );
  }
}