import 'package:credits/Screen/widgets/Recevied.dart';
import 'package:credits/Screen/widgets/given.dart';
import 'package:flutter/material.dart';

class CreditView extends StatefulWidget {
  const CreditView({Key? key}) : super(key: key);

  @override
  State<CreditView> createState() => _CreditViewState();
}

class _CreditViewState extends State<CreditView> {
  @override
  Widget build(BuildContext context) {
    final Mheight = MediaQuery.of(context).size.height;
    final Mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("haj"),
      ),
      body: Container(
        height: Mheight * 9,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: Container(
                  child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) =>
                    Column(
                      children: [
                        Container(
                            alignment: Alignment.topRight,
                            // decoration: BoxDecoration(
                            //    border: Border.all()),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blueAccent)
                              ),


                              child: Column(
                                children: [
                                  Text("100",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 25)),
                                  SizedBox(
                                    height: Mheight*0.005,
                                  ),
                                  Text("ffffgggggggggggggggggggg",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 15)),
                                  SizedBox(
                                    height: Mheight*0.005,
                                  ),
                                  Text("nisnu",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 15)),

                                ],
                              ),
                            ),
                        ),
                        SizedBox(
                          height: Mheight*0.010,
                        ),
                      ],
                    ),
              ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.fromBorderSide(BorderSide(color: Colors.black))
              ),
              height: Mheight * .05,
             
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Balance",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "1000",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.green),),onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Receivied()));
                  }, child: Text("Received")),
                  ElevatedButton(style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.red),),onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Given()));
                  }, child: Text("Given")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
