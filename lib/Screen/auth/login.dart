import 'package:credits/Screen/home/Home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
   final Mheight=MediaQuery.of(context).size.height;
   final Mwidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height:Mheight*9,
        width: Mwidth*9,
        child: Column(
          children: [
            SizedBox(
              height:Mheight * .5 ,
            ),
            Container(
                margin: EdgeInsets.only(top: Mheight * .005),
                width: Mwidth * .65,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  // key: _formFieldKey,

                  // onChanged: (name) {
                  //   _formFieldKey.currentState!
                  //       .validate();
                  // },
                  // controller: numberController,
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
                    suffixIcon: Icon(Icons.email_outlined),
                    labelText: 'MobileNumber',
                  ),
                )
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
                  suffixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                ),
              ),
            ),
            SizedBox(
              height: Mheight * .01,
            ),
            Container(
                margin: EdgeInsets.only(top: Mheight * .005),
                width: Mwidth * .65,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Home()));
              }, child: Text("Login")),
            ),


          ],
        ),
      ),
    );
  }
}
