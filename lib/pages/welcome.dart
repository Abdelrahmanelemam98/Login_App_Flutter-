import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



class Welcome extends StatelessWidget {
  const Welcome({Key? key}) :super(key: key);


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
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                SizedBox(height: 80),
                Text("Welcome"),
                  SizedBox(height: 50),
                  SvgPicture.asset("assets/icons/chat.svg",width:200,height: 200,),
                  SizedBox(height: 23,),

                  ElevatedButton
                    (onPressed: (){
                      Navigator.pushNamed(context, "/login");
                  },
                      child:
                      Text("login",style:TextStyle(fontSize: 24) ),
                      style:ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.purple),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 79,vertical: 10)),
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(borderRadius:BorderRadius.circular(27)))
                      )
                  ),
                  SizedBox(height: 15,),
                  ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, "/signup");
                      },
                      child: Text("sign in",style: TextStyle(fontSize: 24),),
                      style:ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.purple[100]),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 70,vertical: 10)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(27)))
                      )

                  ),

                ]
            ),
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