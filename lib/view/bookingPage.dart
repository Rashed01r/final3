

import 'package:final_project/compenent/bottomSheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
enum payment { ApplePay, STCpay, MadaCard }

class pay extends StatefulWidget {
  const pay({super.key});

  @override
  State<pay> createState() => _payState();
}

class _payState extends State<pay> {
  int count = 0;
  payment choose = payment.ApplePay;

  void incrementCount() {
    setState(() {
      count++;
    });
  }

  void decrementCount() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    int price = 100;
    int total = count * price;
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 IconButton(
                              onPressed: () {
                                Get.back();
                              },
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.black,
                              )),
                 Text(
                      "68".tr,
                      style: TextStyle(
                   color: Color(0xffAD557A),
                   fontSize: 20,
                   fontWeight: FontWeight.bold),
                    ),
                    Text(".",style: TextStyle(color: Colors.white),)
               ],
             ),
                SizedBox(
                  height: 30,
                ),
           
            
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text(
                    "63".tr,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                  Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 241, 241),
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 26,
                            width: 26,
                            child: FloatingActionButton(
                              backgroundColor: Color(0xff1F61C3),
                              shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              child: Icon(Icons.remove),
                              onPressed: decrementCount,
                            ),
                          ),
                        ),
                        Text("$count"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 26,
                            width: 26,
                            child: FloatingActionButton(
                              backgroundColor: Color(0xff1F61C3),
                              shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              child: Icon(Icons.add),
                              onPressed: incrementCount,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                 
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text(
                    "64".tr,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text("200SR" ,style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Color(0xff929090),
                          fontSize: 10),
                    ),
                        SizedBox(width: 10,),

                        Text("$price"),
                      ],
                    ),
                  ),
                 
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "65".tr,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                  Container(
                    child: Row(
                      children: [
                         Text("$total"),
                        Text(" SR"),
                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
            Center(child:Container(
              color: Colors.black,
              height: 1,
              width: 400,
            )),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                          "66".tr,
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                ],
              ),
            ),
             Column(
      children: <Widget>[
        ListTile(
          title: Row(
            children: [
              Image.asset("images/apple-pay 1.png"),
              const Text(' ApplePay'),
            ],
          ),
          leading: Radio<payment>(
            value: payment.ApplePay,
            groupValue: choose,
            onChanged: (payment? value) {
              setState(() {
                choose = value!;
              });
            },
          ),
          
          ),
           ListTile(
          title: Row(
            children: [
              Image.asset("images/Screenshot_20221223_034900.png",width: 25,height: 25,),
              const Text(' Mada Card'),
            ],
          ),
          leading: Radio<payment>(
            value: payment.MadaCard,
            groupValue: choose,
            onChanged: (payment? value) {
              setState(() {
                choose = value!;
              });
            },
          ),
          ),
          ListTile(
          title: Row(
            children: [
              Image.asset("images/Screenshot 1444-05-29 at 2.38 1.png"),
              const Text(' STCPay'),
            ],
          ),
          leading: Radio<payment>(
            value: payment.STCpay,
            groupValue: choose,
            onChanged: (payment? value) {
              setState(() {
                choose = value!;
              });
            },
          ),
          ),
          ],
          
        ),
         BottomSheetCustome(label: "67".tr),
           
          ],
        )
      ]),
    );
  }
}