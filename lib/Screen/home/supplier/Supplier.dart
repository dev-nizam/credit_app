import 'package:credits/Screen/home/supplier/CreateSupplier.dart';
import 'package:flutter/material.dart';

class Supplier extends StatefulWidget {
  const Supplier({Key? key}) : super(key: key);

  @override
  State<Supplier> createState() => _SupplierState();
}

class _SupplierState extends State<Supplier> {
  @override
  Widget build(BuildContext context) {
    final Mheight=MediaQuery.of(context).size.height;
    final Mwidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: Mheight * 9,
        child: Stack(
          children: [
            Container(
              height: Mheight * 9,
              child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) => Container(
                    margin: EdgeInsets.only(left: 20),
                    child: ListTile(
                      trailing:Text(
                        "1000",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      title: Text(
                        "name",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      subtitle: Text("9847478388"),
                    ),
                  ),
                  separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                    thickness: 2,
                  ),
                  itemCount: 15),
            ),
            Positioned(
                right: 30,
                bottom: 30,
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.black) ,
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)))),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (ctx)=>CreateSupplier()));
                  },
                  child: Icon(
                    Icons.add,
                    color: Colors.green,size: 70,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
