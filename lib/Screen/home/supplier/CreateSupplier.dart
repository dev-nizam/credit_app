import 'package:credits/Screen/home/Home.dart';
import 'package:flutter/material.dart';

class CreateSupplier extends StatefulWidget {
  const CreateSupplier({Key? key}) : super(key: key);

  @override
  State<CreateSupplier> createState() => _CreateSupplierState();
}

class _CreateSupplierState extends State<CreateSupplier> {
  @override
  Widget build(BuildContext context) {
    final Mheight=MediaQuery.of(context).size.height;
    final Mwidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(margin: EdgeInsets.all(50),
        child: Column(
          children: [
            SizedBox(
              height:Mheight*0.1 ,
            ),
            Text("CreateSupplier",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            SizedBox(
              height:Mheight*0.05 ,
            ),
            Container(
                margin: EdgeInsets.only(top: Mheight * .005),
                width: Mwidth * .65,
                child: TextFormField(

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Can\'t be empty';
                    }

                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                    hintText: "name",
                  ),
                )
            ),
            SizedBox(
              height:Mheight*0.01 ,
            ),
            Container(
                margin: EdgeInsets.only(top: Mheight * .005),
                width: Mwidth * .65,
                child: TextFormField(
                  keyboardType: TextInputType.number,

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Can\'t be empty';
                    }
                    if (value.length < 10) {
                      return 'Too short';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText:'MobileNumber' ,
                    labelText: 'MobileNumber',
                  ),
                )
            ),SizedBox(
              height:Mheight*0.01 ,
            ),
            Container(
              margin: EdgeInsets.only(top: Mheight * .005),
              width: Mwidth * .65,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Home()));
              }, child: Text("Submit")),
            ),
          ],
        ),
      ),
    );
  }
}
