


import 'package:credits/Screen/widgets/creditview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';



class Receivied extends StatefulWidget {
  const Receivied({Key? key}) : super(key: key);

  @override
  State<Receivied> createState() => _ReceiviedState();
}

class _ReceiviedState extends State<Receivied> {

  @override
  Widget build(BuildContext context) {
    final Mheight = MediaQuery.of(context).size.height;
    final Mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height:Mheight*9,
        width: Mwidth*9,
        child: Column(
          children: [
            SizedBox(
              height: Mheight*0.11,
            ),
            Container(
              margin: EdgeInsets.only(top: Mheight * .005),
              width: Mwidth * .65,
              child:  TextFormField(
                keyboardType: TextInputType.number,
                // key: _formFieldKeyOne,
                //
                // onChanged: (name) {
                //   _formFieldKeyOne.currentState!
                //       .validate();
                // },
                obscureText: false,
                // controller: passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Can\'t be empty';
                  }
                  if (value.length < 6) {
                    return 'Too short';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Amount',
                ),
              ),
            ),TextButton(
                onPressed: () {
                  DatePicker.showDatePicker(context,
                      showTitleActions: true,
                      minTime: DateTime.now(),
                      maxTime: DateTime.now(), onChanged: (date) {
                        print('change $date');
                      }, onConfirm: (date) {
                        print('confirm $date');
                      }, currentTime: DateTime.now(), locale: LocaleType.en);
                },
                child: Text(
                  'show date time picker ',
                  style: TextStyle(color: Colors.blue),
                )),

            Container(
              // margin: EdgeInsets.only(top: Mheight * .005),
              width: Mwidth * .65,
              height: Mheight*0.3,
              child:  TextFormField(
                autofocus: true,
                textInputAction:TextInputAction.newline,
                maxLength: 500,
                maxLines: 20,
                // key: _formFieldKeyOne,
                //
                // onChanged: (name) {
                //   _formFieldKeyOne.currentState!
                //       .validate();
                // },
                obscureText: false,
                // controller: passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Can\'t be empty';
                  }
                  if (value.length < 6) {
                    return 'Too short';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'note',
                ),
              ),
            ),
            MaterialButton(
                color: Colors.blue,
                child: const Text(
                    "Pick Image from Camera",
                    style: TextStyle(
                        color: Colors.white70, fontWeight: FontWeight.bold
                    )
                ),
                onPressed: () {
                }
            ),
            Container(
              margin: EdgeInsets.only(top: Mheight * .005),
              width: Mwidth * .65,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (ctx)=>CreditView()));
              }, child: Text("Submit"),style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.green),),
            ),
            ),
          ],
        ),
      ),
    );


  }

}
