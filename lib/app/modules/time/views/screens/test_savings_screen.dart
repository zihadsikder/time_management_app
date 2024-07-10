import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:softbd_task/app/core/config/app_text_style.dart';
import 'package:softbd_task/app/modules/time/views/widgets/text_field_widgets.dart';

class TestSavingsScreen extends StatelessWidget {
  const TestSavingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('নতুন যোগ করুন', style: AppTextStyles.headLineStyle())),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TestFieldWidget(
                hintText: 'অনুচ্ছেদ লিখুন',
                headTitle: 'অনুচ্ছেদ',
                title: '৪৫ শব্দ',
                suffixIcon: null,
                onTapSuffix: () {},
                icon: null,
                maxLines: 1,
                maxLength: 45,
              ),
              const SizedBox(
                height: 4.0,
              ),
              //TextFieldContainer(headline: 'ssssss'),
              TestFieldWidget(
                hintText: 'অনুচ্ছেদের বিভাগ নির্বাচন করুন',
                headTitle: 'অনুচ্ছেদের বিভাগ',
                title: '',
                icon: null,
                suffixIcon: Icons.arrow_forward_ios_outlined,
                onTapSuffix: () {},
                maxLines: 1,
              ),
              const SizedBox(
                height: 20.0,
              ),
              TestFieldWidget(
                hintText: 'নির্বাচন করুন',
                headTitle: 'তারিখ ও সময়',
                title: '',
                icon: Icons.date_range_outlined,
                suffixIcon: Icons.arrow_forward_ios_outlined,
                onTapSuffix:  () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1950),
                    lastDate: DateTime(2050),
                  );
                  if (pickedDate != null) {
                    String formattedDate =
                    DateFormat('yyyy-MM-dd').format(pickedDate);
                    //controller.dobController.text = formattedDate;
                  }
                },
                maxLines: 1,
              ),
              const SizedBox(
                height: 20.0,
              ),
              TestFieldWidget(
                hintText: 'নির্বাচন করুন',
                headTitle: 'স্থান',
                title: '',
                icon: Icons.location_on_rounded,
                suffixIcon: Icons.arrow_forward_ios_outlined,
                onTapSuffix: () {},
                maxLines: 1,
              ),
              const SizedBox(
                height: 20.0,
              ),
              TestFieldWidget(
                hintText: 'কার্যক্রমের বিবরণ লিখুন',
                headTitle: 'অনুচ্ছেদের বিবরণ',
                title: '১২০ শব্দ',
                icon: null,
                suffixIcon: null,
                onTapSuffix: () {},
                maxLines: 6,
                maxLength: 120,
              ),
              SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('সংরক্ষণ করুণ')))
            ],
          ),
        ),
      ),
    );
  }
}