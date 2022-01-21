import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(36)), borderSide: BorderSide.none,);
    const textStyle1 = TextStyle(fontSize: 16, color: Color(0xFFC4C4C4),);
    const textStyle2 = TextStyle(fontSize: 16, color: Color(0X99000000),);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(

          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 60,),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 34,),
                Row( mainAxisAlignment: MainAxisAlignment.center, children: const [
                  Icon(Icons.group,),
                  SizedBox(width: 9,),
                  Text('Регистрация', style: TextStyle(fontSize: 20, color: Color(0xFF5C5C5C), fontWeight: FontWeight.bold),
                  ),
                ],),
                const SizedBox(height: 15,),
                Container(
                  decoration:  const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1.0, color: Color(0xFFC4C4C4)),
                    ),
                  ),
                ),
                const SizedBox(height: 7,),
                const SizedBox(height: 38,  child:
                  Text('Чтобы зарегистрироваться введите свой номер телефона и почту', textAlign: TextAlign.center,
                    style: textStyle1),
                ),
                const SizedBox(height: 14,),
                const SizedBox(height: 19, child:
                  Text('Телефон', textAlign: TextAlign.center, style: textStyle2)
                ),
                const SizedBox(height: 6,),
                const SizedBox(height: 34, width: 244, child:
                  TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFECEFF1),
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                      border: InputBorder.none,
                  ),
                ),
                ),
                const SizedBox(height: 14,),
                const SizedBox(height: 19,  child:
                  Text('Почта', textAlign: TextAlign.center, style: textStyle2,),),
                const SizedBox(height: 6,),
                const SizedBox(height: 34, width: 244, child:
                  TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFECEFF1),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                  ),
                ),
                ),
                const SizedBox(height: 24,),
                const SizedBox(height: 38, child:
                  Text('Вам придет четырехзначный код, который будет вашим паролем', textAlign: TextAlign.center, style: textStyle1,),),
                const SizedBox(height: 14,),
                const SizedBox(height: 57, child:
                  Text('Изменить пароль можно будет в личном кабинете после регистрации', textAlign: TextAlign.center, style: textStyle1,),),
                const SizedBox(height: 32,),
                  SizedBox(height: 42, width: 154, child:
                    ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                    ),
                  ),
                      onPressed: () {},
                      child: const Text('Отправить код', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Color(0XFFFFFFFF),),),
                )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}