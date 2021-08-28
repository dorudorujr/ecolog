import 'package:flutter/material.dart';

/// 日付入力Cell
class InputViewToDate extends StatelessWidget {
  const InputViewToDate({
    Key? key,
    required this.title,
    required this.inputDate,
    required this.onChanged,
  }) : super(key: key);

  final String title;
  final DateTime? inputDate;
  final Function(DateTime) onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showDatePicker(context);
      },
      child: Container(
        height: 44,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 16,),
                Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: Color(0XFF5A5D5D)
                  ),
                ),
                const SizedBox(width: 16,),
                Expanded(
                  child: Text(
                    (inputDate ?? DateTime.now()).toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Color(0XFF5A5D5D)
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
                const SizedBox(width: 16,),
              ],
            ),
            const Spacer(),
            const Divider(
              height: 1,
              indent: 16,
              thickness: 1,
              color: Color(0X4C3C3C43,),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showDatePicker(BuildContext context) async {
    final selectDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now().add(const Duration(days: 365) * -1),
        lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if(selectDate != null) onChanged(selectDate);
  }
}