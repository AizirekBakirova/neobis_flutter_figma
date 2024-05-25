import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neobis_flutter_figma/widgets/payment_page/payment_info_button.dart';
import 'package:neobis_flutter_figma/widgets/payment_page/text_field_button.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    'Подтверждение оплаты',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFieldButton(
              text: 'Имя покупателя',
            ),
            SizedBox(
              height: 15,
            ),
            TextFieldButton(
              text: '+ 996 (000) 000 000',
            ),
            SizedBox(
              height: 15,
            ),
            TextFieldButton(
              text: 'Сумма',
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 343,
              height: 60,
              child: Padding(
                padding: EdgeInsets.only(left: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Продать в долг',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    CupertinoSwitch(
                      value: _switchValue,
                      onChanged: (value) {
                        setState(() {
                          _switchValue = value;
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 120,
            ),
            Divider(),
            PaymentInfoButton(),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(343, 56),
                    backgroundColor: Color(0xff8897AE),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {},
                child: Text(
                  'Продать',
                  style: const TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                )),
          ],
        ),
      ),
    );
  }
}
