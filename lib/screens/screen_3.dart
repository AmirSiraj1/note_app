// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:note_app/shared/widget/custom_container.dart';
import 'package:note_app/utils/constants/colors.dart';
import 'package:note_app/utils/constants/strings.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _transactionNumberController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: KColors.semiWhite,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.03,
            ),
            //Send payment and confirm
            CustumContainer(
              height: height,
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    alignment: AlignmentDirectional.centerStart,
                    padding: const EdgeInsets.all(0),
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.arrow_back,
                      color: KColors.black,
                      size: 24,
                    ),
                  ),
                  const Text(
                    KStrings.send_payment_confirm,
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            // awash bank logo
            CustumContainer(
              height: height,
              width: width,
              child: Row(children: [
                Image.asset(
                  KStrings.logo_awash1,
                )
              ]),
            ),
            // explanation
            Container(
              margin: EdgeInsets.only(
                  top: height * 0.03, left: width * 0.05, right: width * 0.05),
              padding: EdgeInsets.symmetric(
                  vertical: height * 0.02, horizontal: width * 0.07),
              decoration: const BoxDecoration(
                  color: KColors.gray,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: RichText(
                  textAlign: TextAlign.start,
                  text: const TextSpan(
                      style: TextStyle(fontSize: 17, color: KColors.black),
                      children: [
                        TextSpan(text: KStrings.explanation20),
                        TextSpan(
                            text: KStrings.explanation21,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: KStrings.explanation22),
                        TextSpan(
                            text: KStrings.explanation23,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: KStrings.explanation24),
                      ])),
            ),
            // attach a screen shot
            Container(
              margin: EdgeInsets.only(
                  top: height * 0.03, left: width * 0.05, right: width * 0.05),
              padding: EdgeInsets.symmetric(
                  vertical: height * 0.02, horizontal: width * 0.07),
              decoration: const BoxDecoration(
                  color: KColors.green,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.photo_library,
                    color: KColors.white,
                  ),
                  Text(
                    KStrings.attach_screenshot,
                    style: TextStyle(color: KColors.white, fontSize: 15),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            // Divider
            Row(children: [
              Expanded(
                  child: Divider(
                indent: width * 0.05,
                endIndent: width * 0.05,
                color: KColors.black,
              )),
              const Text(
                "or",
                style: TextStyle(fontSize: 15),
              ),
              Expanded(
                  child: Divider(
                indent: width * 0.05,
                endIndent: width * 0.05,
                color: KColors.black,
              )),
            ]),
            // account
            Container(
              margin: EdgeInsets.only(left: width * 0.05, top: height * 0.03),
              child: const Text(
                KStrings.account,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              ),
            ),
            // form container
            CustumContainer(
              height: height,
              width: width,
              child: Column(
                children: [
                  CustomTextField(
                    nameController: _nameController,
                    lable: KStrings.transferred_by,
                    hint: KStrings.full_name,
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  CustomTextField(
                    nameController: _transactionNumberController,
                    lable: KStrings.transaction_id,
                    hint: KStrings.transaction_number,
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  TextField(
                    onTap: () {
                      _selectDate();
                    },
                    readOnly: true,
                    controller: _dateController,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.calendar_today_rounded),
                        labelText: 'date',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        disabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: KColors.gray, width: 1)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: KColors.gray, width: 1)),
                        hintText: 'Date',
                        hintStyle: TextStyle(
                            color: KColors.black, fontWeight: FontWeight.w300)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyTextButton(
                  width: width,
                  height: height,
                  bg: KColors.white,
                  text: KStrings.cancel,
                ),
                MyTextButton(
                  width: width,
                  height: height,
                  bg: KColors.green,
                  text: KStrings.submit,
                ),
              ],
            ),
            SizedBox(
              height: height * 0.05,
            )
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));

    if (picked != null) {
      setState(() {
        _dateController.text = picked.toString().split(" ")[0];
      });
    }
  }
}

class MyTextButton extends StatelessWidget {
  const MyTextButton({
    Key? key,
    required this.width,
    required this.height,
    required this.bg,
    required this.text,
  }) : super(key: key);

  final double width;
  final double height;
  final Color bg;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.1, vertical: height * 0.02),
      margin: EdgeInsets.symmetric(horizontal: width * 0.05),
      decoration: BoxDecoration(
          color: bg,
          border: Border.all(color: KColors.gray, width: 1),
          borderRadius: BorderRadius.circular(15)),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required TextEditingController nameController,
      required this.lable,
      required this.hint})
      : _nameController = nameController;

  final TextEditingController _nameController;
  final String lable;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _nameController,
      decoration: InputDecoration(
          labelText: lable,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: KColors.gray, width: 1)),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: KColors.gray, width: 1)),
          hintText: hint,
          hintStyle: const TextStyle(
              color: KColors.black, fontWeight: FontWeight.w300)),
    );
  }
}
