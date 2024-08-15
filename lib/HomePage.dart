
import 'package:app10/HSC_arts.dart';
import 'package:app10/HSCcommerce.dart';
import 'package:app10/SSCarts.dart';
import 'package:app10/SSCcommerce.dart';
import 'package:flutter/material.dart';
import 'jsc.dart';
import 'ssc.dart';

class HomePage extends StatefulWidget{

   const HomePage({super.key});



  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double ?B = 5.00;
  double ?e = 5.00;
  double ?m = 5.00;
  double ?p = 5.00;
  double ?c = 5.00;
  double ?b = 5.00;
  double ?i = 5.00;



  double Result=0.0;
  String result ="Please type correct point";
  double res =5.00;

MySnackBar(massege,context){
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: massege)
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text(
          "HSC GPA Calculate",
          style: TextStyle(
              color: Colors.white,
              fontSize: 25),
        ),
        titleSpacing: 0,
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      drawer:  Drawer(
        surfaceTintColor: Colors.white,
        child: (ListView(padding:  const EdgeInsets.all(35),
          children: <Widget>

            // this is Header
          [const DrawerHeader
              (decoration: BoxDecoration(
                color: Colors.blue),
                child:  Text('NAME OF EXAM & GROUP' , style: TextStyle(color: Colors.white,fontSize: 28),)
            ),

            // this is space
            const SizedBox(
              height: 50,
            ),

            // under the header
            ListBody(
              children: [

                // set the 1st button in  a drawer
                ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const JSC()),);
                    },
                    child:  const Text(
                      ("JSC"),
                      style:TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ) ,)),

                // Space
                const SizedBox(
                  height: 35,
                ),

                // set  2nd the button in a drawer
                ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SSC()),);
                    },
                    child:  const Text(
                      ("SSC Science"),
                      style:TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ) ,
                    )
                ),

                const SizedBox(
                  height: 35,
                ),
                // set the 3rd button in  a drawer
                ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const ssc_a()),);
                    },
                    child:  const Text(
                      ("SSC-Arts"),
                      style:TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ) ,
                    )
                ),

                // set the 4th button in  a drawer
                const SizedBox(
                  height: 35,
                ),

                ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const hsc_a()),);
                    },
                    child:  const Text(
                      ("HSC-Arts"),
                      style:TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ) ,
                    )
                ),

                // set the 5th button in  a drawer
                const SizedBox(
                  height: 35,
                ),

                ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const ssc_c()),);
                    },
                    child:  const Text(
                      ("SSC-Commerce"),
                      style:TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ) ,
                    )
                ),

                // set the 6th button in  a drawer
                const SizedBox(
                  height: 35,
                ),

                ElevatedButton(
                    onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>const hsc_c()),);
                    },
                    child:  const Text(
                      ("HSC-Commerce"),
                      style:TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ) ,
                    )
                ),
              ],
            ),
          ],
        )
        ),

      ),
      body:SingleChildScrollView(
        padding: const EdgeInsets.all(25),

        child:Column(
           children:[

             const Text("Science Group",style: TextStyle(fontSize: 20),),

             const SizedBox(height: 20,),
             DropdownButtonFormField<double>(
               decoration: const InputDecoration(
                 labelText: "Bangla" ,
                 labelStyle: TextStyle(color: Colors.blue,fontSize: 20,) ,
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
                 labelStyle: TextStyle(color: Colors.blue,fontSize: 20,) ,
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
                 labelText: " Higher Math" ,
                 labelStyle: TextStyle(color: Colors.blue,fontSize: 20,) ,
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
                 labelStyle: TextStyle(color: Colors.blue,fontSize: 20,) ,
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
                 labelStyle: TextStyle(color: Colors.blue,fontSize: 20,) ,
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
                 labelStyle: TextStyle(color: Colors.blue,fontSize: 20,) ,
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
                 labelStyle: TextStyle(color: Colors.blue,fontSize: 20,) ,
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


             const SizedBox(
              height: 30,
            ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 ElevatedButton(
                     onPressed:(){
                       setState(() {
                         Result = ((B!+e!+((m!)-2)+p!+c!+b!+i!)/6);
                         if (Result>5.00){
                           Result=5.00;
                         }
                         else{
                           result="Please type correct point";
                         }
                       });
                       },
                     child: const Text(
                       "Get GPA",
                       style: TextStyle(
                           color: Colors.blue,
                           fontSize:15
                       ),
                     )
                 ),

               ],
             ),
             const SizedBox(
               height:15,
             ),
             Text(
               "RESULT=$Result",
               style:const  TextStyle(
                   color: Colors.blue,
                   fontSize: 30,
                   fontWeight:FontWeight.bold),
             ),

           ],

        ),

      )
    );

  }
}