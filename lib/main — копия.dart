import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(36)),);
    const textStyle1 = TextStyle(fontSize: 16, color: Color(0xFFC4C4C4),);
    const textStyle2 = TextStyle(fontSize: 16, color: Color(0XFF000000),);
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 34,),
                Row( mainAxisAlignment: MainAxisAlignment.center, children: const [
                  Icon(Icons.group,),
                  SizedBox(width: 9,),
                  Text('Регистрация', style: TextStyle(fontSize: 19, color: Color(0xFF5C5C5C))
                  ),
                ],),
                const SizedBox(height: 15,),
                const SizedBox(height: 7,),
                const SizedBox(height: 38, width: 300, child:
                Text('Чтобы зарегистрироваться введите свой номер телефона и почту',
                    style: textStyle1),
                ),
                const SizedBox(height: 14,),
                const SizedBox(height: 19, width: 64,child:
                Text('Телефон', style: textStyle2)
                ),
                const SizedBox(height: 6,),
                const SizedBox(height: 34, width: 244, child:
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFECEFF1),
                    hintText: '+7',
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                  ),
                ),
                ),
                const SizedBox(height: 14,),
                const SizedBox(height: 19, width: 45, child:
                Text('Почта', style: textStyle2,),),
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
                const SizedBox(height: 38, width: 300,child:
                Text('Вам придет четырехзначный код, который будет вашим паролем',style: textStyle1,),),
                const SizedBox(height: 14,),
                const SizedBox(height: 57, width: 252, child:
                Text('Изменить пароль можно будет в личном кабинете после регистрации', style: textStyle1,),),
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
                  child: const Text('Отправить код', style: TextStyle(fontSize: 16, color: Color(0XFFFFFFFF),),),
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