import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool b1 = false;
  bool b2 = false;
  bool b3 = false;
  bool b4 = false;
  bool b5 = false;
  dynamic Price="";
  dynamic Total_Price="";
  dynamic per="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 20,),

          Name_Price("ORIGINAL PRICE", "$Price"),
          SizedBox(height: 20,),

          Container(
            height: 60,
            width: double.infinity,
            color: Color(0xffEEEEEE),
            alignment: Alignment.center,
            child: Column(
              children: [
                Text("GST",style: TextStyle(fontSize: 20),),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(onTap: (){
                        setState(() {
                          b1 = true;
                          b2 = false;
                          b3 = false;
                          b4 = false;
                          b5 = false;
                          per = 0.03;

                          Total_Price = ( double.parse(Price) *  0.03 ) + double.parse(Price) ;
                        });
                      },
                          child: Pr(3,b1)),
                      InkWell(onTap: (){
                        setState(() {
                          b1 = false;
                          b2 = true;
                          b3 = false;
                          b4 = false;
                          b5 = false;
                          per = 0.05;

                          Total_Price = ( double.parse(Price) *  0.05 ) + double.parse(Price);
                        });
                      },
                          child: Pr(5,b2)),
                      InkWell(onTap: (){
                        setState(() {
                          b1 = false;
                          b2 = false;
                          b3 = true;
                          b4 = false;
                          b5 = false;
                          per = 0.12;

                          Total_Price = ( double.parse(Price) *  0.12 ) + double.parse(Price) ;
                        });
                      },
                          child: Pr(12,b3)),
                      InkWell(onTap: (){
                        setState(() {
                          b1 = false;
                          b2 = false;
                          b3 = false;
                          b4 = true;
                          b5 = false;
                          per = 0.18;

                          Total_Price = ( double.parse(Price) *  0.18 ) + double.parse(Price) ;
                        });
                      },
                          child: Pr(18,b4)),
                      InkWell(onTap: (){
                        setState(() {
                          b1 = false;
                          b2 = false;
                          b3 = false;
                          b4 = false;
                          b5 = true;
                          per = 0.28;

                          Total_Price = ( double.parse(Price) *  0.28 ) + double.parse(Price) ;
                        });
                      },
                          child: Pr(28,b5)),


                    ],),
                )
              ],
            ),
          ), //   GST Percentage BAR
          SizedBox(height: 20,),

          Name_Price("FINAL PRICE", "$Total_Price" ),
          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 50,
              width: 250,
              alignment: Alignment.center,
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color(0xffEEEEEE),),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("CGST/SGST",style: TextStyle(fontSize: 20),),
                  Text("25",style: TextStyle(fontSize: 15),),


                ],
              ),
            ),
          ), //    CGST/SGST
          SizedBox(height: 20,),

          Container(
            height: 400,
            width: double.infinity,
            alignment: Alignment.center,
            child: Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: [
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      width: 300,
                      child: Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(child: InkWell(onTap: (){
                                    setState(() { Price = Price + "7"; }); },
                                      child: Number("7"))),
                                  Expanded(child: InkWell(onTap: (){
                                    setState(() { Price = Price + "8"; }); },
                                      child: Number("8"))),
                                  Expanded(child: InkWell(onTap: (){
                                    setState(() { Price = Price + "9"; }); },
                                      child: Number("9"))),
                                ],),
                            ),
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(child: InkWell(onTap: (){
                                    setState(() { Price = Price + "4"; }); },
                                      child: Number("4"))),
                                  Expanded(child: InkWell(onTap: (){
                                    setState(() { Price = Price + "5"; }); },
                                      child: Number("5"))),
                                  Expanded(child: InkWell(onTap: (){
                                    setState(() { Price = Price + "6"; }); },
                                      child: Number("6"))),
                                ],),
                            ),
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(child: InkWell(onTap: (){
                                    setState(() { Price = Price + "1"; }); },
                                      child: Number("1"))),
                                  Expanded(child: InkWell(onTap: (){
                                    setState(() { Price = Price + "2"; }); },
                                      child: Number("2"))),
                                  Expanded(child: InkWell(onTap: (){
                                    setState(() { Price = Price + "3"; }); },
                                      child: Number("3"))),
                                ],),
                            ),
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(child: InkWell(onTap: (){
                                    setState(() { Price = Price + "0";; }); },
                                      child: Number("0"))),
                                  Expanded(child: InkWell(onTap: (){
                                    setState(() { Price = Price + "00"; }); },
                                      child: Number("00"))),
                                  Expanded(child: InkWell(onTap: (){
                                    setState(() { Price = Price + "."; }); },
                                      child: Number("."))),
                                ],),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),  //   Numbers
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      width: 100,
                      alignment: Alignment.center,
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell( onTap: (){
                              setState(() {
                                Price = "";
                                Total_Price = "";
                              });
                            },
                                child: Bc(Text("AC",style: TextStyle(color: Colors.white,fontSize: 20),),)),
                            InkWell(onTap: (){
                              setState(() {


                                int press = 1 ;
                                String temp = Price ;
                                Price = "";
                                for(int i = 0 ; i < temp.length - press ; i++)
                                {
                                  Price = Price +  temp[i] ;
                                }
                                temp = Price ;
                                Total_Price = ( double.parse(temp) *  per ) + double.parse(temp) ;;

                              });
                            },
                                child: Bc(Icon(Icons.backspace_outlined,size: 20,color: Colors.white,)))
                            // Button  <<-
                          ],
                        ),
                      ) ,
                    ),
                  ),  //   Buttons
                ],
              ),
            ),
          ),
          //SizedBox(height: 10,),


        ],
      ),

    );



  }

  Widget Name_Price(String name, String rupess)
  {
    return Container(
      height: 20,
      width: double.infinity,
      color: Color(0xffEEEEEE),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("$name", style: TextStyle(fontSize: 16),),
            Text("${rupess} Rs. ", style: TextStyle(fontSize: 20),),
          ],
        ),
      ),
    );
  }

  Widget Pr(int a,bool a1)
  {
    return Container(
      height: 30,
      width: 50,
      alignment: Alignment.center,
      child: Text("${a}%",style: TextStyle(fontSize: 20),),
      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),
          color: a1 ? Color(0xffFF6B00) : Colors.white),
    );
  }
  Widget Bc(Widget w1)
  {
    return Container(
      height:150,
      width: 90,
      alignment: Alignment.center,
      child:  w1 ,
      decoration: BoxDecoration(color: Color(0xffFF6B00),borderRadius: BorderRadius.circular(40)),
    );
  }

  Widget Number(String num)
  {
    return Container(
      height: 100,
      width: 100,
      alignment: Alignment.center,
      child:  Text("$num",style: TextStyle(fontSize: 15),),
    );
  }


}

