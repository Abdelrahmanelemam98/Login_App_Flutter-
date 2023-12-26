import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
                        Text("Login"),
                        SizedBox(height: 50),
                        SvgPicture.asset("assets/icons/login.svg",width:200,height: 200,),
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
                            child:Text("Login",style:TextStyle(fontSize: 20),)),
                        SizedBox(height: 8,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don`t have an account"),
                            Text(" Sign up",style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
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

