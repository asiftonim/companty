import 'package:get/get.dart';
import 'package:flutter/material.dart';

class DateController extends GetxController {
  var selectedDate = Rxn<DateTime>();
  var selectedTimeText = RxnString();

  void pickDate(BuildContext context) async {
    final today = DateTime.now();
    DateTime? date = await showDatePicker(
      context: context,
      initialDate: selectedDate.value ?? today,
      firstDate: DateTime(today.year, today.month, today.day),
      lastDate: DateTime(2100),
    );

    if (date != null) {
      selectedDate.value = date;
      selectedTimeText.value = null;
    }
  }

  void pickTime(BuildContext context) async {
    if (selectedDate.value == null) {
      Get.snackbar("Error", "Please select a date first");
      return;
    }

    final now = TimeOfDay.now();
    TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (time != null) {
      if (isToday(selectedDate.value!)) {
        if (time.hour < now.hour ||
            (time.hour == now.hour && time.minute <= now.minute)) {
          Get.snackbar("Error", "Please select a future time");
          return;
        }
      }
      selectedTimeText.value =
      "${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}";
    }
  }

  bool isToday(DateTime date) {
    final now = DateTime.now();
    return date.year == now.year &&
        date.month == now.month &&
        date.day == now.day;
  }

  void selectTime(String time) {
    selectedTimeText.value = time;
  }
}
