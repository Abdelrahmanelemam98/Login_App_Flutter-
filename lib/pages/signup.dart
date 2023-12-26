import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



class Signup extends StatelessWidget {
  const Signup({Key? key}) :super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
          height: double.infinity,
          width:double.infinity,
          child: Stack(
            children: [
              SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                          SizedBox(height: 80),
                          Text("Sign up"),
                          SizedBox(height: 50),
                          SvgPicture.asset("assets/icons/signup.svg",width:200,height: 200,),
                          SizedBox(height: 23,),

                          Container(
                            decoration: BoxDecoration(
                                color: Colors.purple[100],
                                borderRadius: BorderRadius.circular(66)
                            ),
                            width: 266,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: TextField(
                              decoration: InputDecoration(
                                  icon:Icon(Icons.person,color: Colors.purple[800],),
                                  hintText: "Your Email",
                                  border: InputBorder.none
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.purple[100],
                              borderRadius: BorderRadius.circular(66),
                            ),
                            width: 266,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: TextField(
                              decoration: InputDecoration(
                                  suffix: Icon(Icons.visibility),
                                  icon: Icon(Icons.lock,color: Colors.purple[800],
                                  ),
                                  hintText: "Password",
                                  border: InputBorder.none

                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          ElevatedButton(onPressed: (){},
                              style:ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 106,vertical: 10)),
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(27),
                                  ))
                              ),
                              child:Text("Sign up",style:TextStyle(fontSize: 20),)),
                          SizedBox(height: 8,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don`t have an account"),
                              Text(" Log in",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                          Row(

                            children: [
                              Expanded(child: Divider(height: 20 ,thickness: 1,color: Colors.black,indent: 50)),
                              Text("OR"),
                              Expanded(child: Divider(height: 20,thickness: 1,color: Colors.black,endIndent: 50,)),
                              SizedBox(height: 20,),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                child: SvgPicture.asset(
                                  "assets/icons/google-plus.svg",
                                  height: 15,
                                  width: 15,
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,

                                  border: Border.all(color: Colors.black,width: 1),
                                ),
                              ),
                              SizedBox(width: 22,),
                              Container(
                                padding: EdgeInsets.all(10),
                                child: SvgPicture.asset(
                                  "assets/icons/facebook.svg",
                                  height: 15,
                                  width: 15,                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.black,width: 1),
                                ),
                              ),
                              SizedBox(width: 22,),
                              Container(
                                padding: EdgeInsets.all(10),
                                child: SvgPicture.asset(
                                  "assets/icons/twitter.svg",
                                  height: 15,
                                  width: 15,                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.black,width: 1),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                            )
                          )

                        ]
                    ),
                  )

              ),
              Positioned(
                  left: 0,
                  child:Image.asset("assets/images/main_top.png",width: 120,)
              ),
              Positioned(
                  bottom: 0,
                  child: Image.asset("assets/images/main_bottom.png",width: 120,)
              )

            ],
          ),

        )

    );
  }
}