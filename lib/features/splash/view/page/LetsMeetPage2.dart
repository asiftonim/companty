import 'package:company/features/splash/view/page/pending_meeting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constans/colors.dart';
import '../../controller/lets_meet_page2_controller.dart';



class LetsMeetPage2 extends StatelessWidget {
  LetsMeetPage2({Key? key}) : super(key: key);

  final DateController controller = Get.put(DateController());

  final List<String> timeSlots = [
    "07:00", "08:00", "09:00", "10:00",
    "11:00", "12:00", "13:00", "14:00",
    "15:00", "16:00", "17:00", "18:00",
    "19:00", "20:00", "21:00", "22:00",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UColors.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        leading: SizedBox(
          child: GestureDetector(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                        color:Color(0x2F353314)
                    ),
                    color: Colors.white
                ),
                child: Center(child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Icon(Icons.arrow_back_ios,size: 15,),
                ))),
          ),
        ),
        backgroundColor: UColors.backgroundColor,
        title: Text("Let's Meet",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
          
                ),
          
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Meeting Date",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),SizedBox(height: 16,),
                      GestureDetector(
                        onTap: () => controller.pickDate(context),
                        child: Obx(() {
                          String dateText = controller.selectedDate.value == null
                              ? "Select Meeting Date"
                              : controller.selectedDate.value!.toLocal().toString().split(' ')[0];
                          return Container(
                            height: 40,
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            alignment: Alignment.centerLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(dateText,
                                    style: TextStyle(
                                      color: controller.selectedDate.value == null
                                          ? Colors.grey.withOpacity(0.9)
                                          : Colors.grey.withOpacity(0.9),
                                      fontWeight: FontWeight.w500,
                                    )),
                                Image.asset("assets/icon/Frame.png")
                              ],
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
               width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text("Select Availability",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                                 height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                      ),
                      child: Obx(() {
                        final selectedTime = controller.selectedTimeText.value;
                        final now = TimeOfDay.now();
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: GridView.builder(
                            itemCount: timeSlots.length,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              childAspectRatio: 2.5,
                            ),
                            itemBuilder: (context, index) {
                              final time = timeSlots[index];
                              final isSelected = time == selectedTime;
                              // Parse time string to TimeOfDay
                              final parts = time.split(":");
                              final slotTime = TimeOfDay(
                                hour: int.parse(parts[0]),
                                minute: int.parse(parts[1]),
                              );

                              bool isToday = controller.selectedDate.value != null &&
                                  controller.selectedDate.value!.year == DateTime.now().year &&
                                  controller.selectedDate.value!.month == DateTime.now().month &&
                                  controller.selectedDate.value!.day == DateTime.now().day;
                              bool isPast = isToday &&
                                  (slotTime.hour < now.hour ||
                                      (slotTime.hour == now.hour && slotTime.minute <= now.minute));

                              return GestureDetector(
                                onTap: isPast
                                    ? null
                                    : () {
                                  controller.selectTime(time);
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: isPast
                                        ? Colors.grey.withOpacity(0.1) // Past times dim করে দিচ্ছি
                                        : (isSelected
                                        ? const Color(0xFFEBF5EE)
                                        : Colors.grey.withOpacity(0.2)),
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: isSelected ? Colors.teal : Colors.transparent,
                                    ),
                                  ),
                                  child: Text(
                                    time,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: isPast
                                          ? Colors.grey // Past slot text grey
                                          : (isSelected ? Colors.teal : Colors.black87),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),SizedBox(height: 332,),
          
              GestureDetector(
                onTap: (){
                  if (controller.selectedDate.value == null || controller.selectedTimeText.value == null) {
                    Get.snackbar("Error", "Please select date and time first");
                    return;
                  }
                  Get.to(() =>PendingMeeting  ());
                },
                child: Container(
                  height: 56,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: UColors.primaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),child: Center(
                    child: Text("Next",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                      ),
                    )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
