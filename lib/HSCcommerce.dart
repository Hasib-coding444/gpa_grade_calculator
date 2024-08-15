

import 'package:flutter/material.dart';

class hsc_c extends StatefulWidget{
  const hsc_c({super.key});

  @override
  State<hsc_c> createState() => _JSCState();
}

class _JSCState extends State<hsc_c> {


  double Result=0.000;
  double ?B = 5.00;
  double ?e = 5.00;
  double ?I = 5.00;
  double ?a = 5.00;
  double ?b = 5.00;
  double ?f = 5.00;
  double ?o = 5.00;



  String result="Please type correct point";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: const Text(
            "HSC GPA Calculate page",
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

              const Text("Commerce Group",style: TextStyle(fontSize: 17),),

              const SizedBox(height: 30,),


              DropdownButtonFormField<double>(
                decoration: const InputDecoration(
                  labelText: "Bangla" ,
                  labelStyle: TextStyle(color: Colors.cyan,fontSize:17,) ,
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
                  labelStyle: TextStyle(color: Colors.cyan,fontSize: 17,) ,
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
                  labelStyle: TextStyle(color: Colors.cyan,fontSize: 17,) ,
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
                  labelText: "Accounting" ,
                  labelStyle: TextStyle(color: Colors.cyan,fontSize: 20,) ,
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
                    a=newValue;
                  });
                },

              ),

              const SizedBox(height: 30,),
              DropdownButtonFormField<double>(
                decoration: const InputDecoration(
                  labelText: "Business org. & Management" ,
                  labelStyle: TextStyle(color: Colors.cyan,fontSize: 20,) ,
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
                  labelText: "Finance,Bnk. &Ins  " ,
                  labelStyle: TextStyle(color: Colors.cyan,fontSize:20,) ,
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
                    f=newValue;
                  });
                },

              ),



              const SizedBox(height: 30,),

              DropdownButtonFormField<double>(
                decoration: const InputDecoration(
                  labelText: "Optional(Agricultural Education/Economic/others) " ,
                  labelStyle: TextStyle(color: Colors.cyan,fontSize:20,) ,
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
                          Result = ((B!+e!+I!+a!+b!+f!+((o!)-2))/6);
                          if (Result>5.00){
                            Result=5.00;
                          }
                          else{
                            result="Please type correct point";
                          }

                        });

                      },
                      child: const Text("Get GPA",style: TextStyle(color: Colors.cyan,fontSize:20),)),

                ],
              ),
              const SizedBox(
                height:20,
              ),
              Text("GPA=$Result",
                style:const  TextStyle(color:
                Colors.cyan,
                    fontSize: 30,
                    fontWeight:FontWeight.bold),
              ),

            ],

          ),

        )
    );
  }
}