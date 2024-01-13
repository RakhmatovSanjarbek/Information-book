import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.all(16.0),
      decoration:const BoxDecoration(
        gradient:  LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(0.8, 1),
          colors: <Color> [
            Color(0xff1f005c),
            Color(0xff5b0060),
            Color(0xff870160),
            Color(0xffac255e),
            Color(0xffca485c),
            Color(0xffe16b5c),
            Color(0xfff39060),
            Color(0xffffb56b),
          ], // Gradient from https://learnui.design/tools/gradient-generator.html
          tileMode: TileMode.mirror,
        ),
      ),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0.0),
                  ),
                width:150.0,
                height: 200.0,
                margin: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset('images/sanjarbek.jpg',width: 150.0,height: 200.0,fit: BoxFit.cover,))
              ),
              const SizedBox(width: 5.0,),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(8.0),
                  child: const Text("Muhammad al-Xorazmiy nomidagi Toshkent axborot texnologiyalari universiteti Qarshi filiali “Axborot texnologiyalari servisi” kafedrasi assistenti", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.white),),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15.0,),
          // ignore: prefer_const_constructors
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(16.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Yaratuvchi va dastur haqida",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white),),
                  SizedBox(height: 10.0,),
                  Text("""Mustaqil tadqiqotchi bir qancha maqolalar, mualliflik guvohnomalar, Ma'lumotlar bazi fanidan o'quv qo'llanmalar chiqarib kelmoqda""",style: TextStyle(color: Colors.white),),
                  SizedBox(height: 10.0,),
                  Text("Bu dastur Infotmatika fanini o'rganuvchilar ushun qulay va yangi boshlaganlar uchun qulay hisoblanadi. Bu dasturda asosan Informatika faniga oid kitoblar va vedio darsliklar bor. Va sanoq sistimalarni organish va ularni hisoblash uchun funksiya ham mavjud",style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
