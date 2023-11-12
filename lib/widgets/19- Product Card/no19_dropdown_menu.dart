import 'package:zenazon/app/utility/consts.dart';

class No19DropdownMenu extends StatelessWidget {
  final List<String> items;
  final String initialValue;

  const No19DropdownMenu({
    Key? key,
    required this.items,
    this.initialValue = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Register the controller if not already registered
    final No19DropDownController controller = Get.put(
      No19DropDownController(),
      tag:
          initialValue, // Using initialValue as tag to support multiple instances
    );

    // Initialize the selected value with initialValue if not already set
    if (controller.selectedValue.value.isEmpty) {
      controller.setSelectedValue(initialValue);
    }

    return Obx(() {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            color: Colors.red.shade50,
            width: 1,
          ),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            isDense: false,
            value: controller.selectedValue.value.isNotEmpty
                ? controller.selectedValue.value
                : null,
            hint: const Text('Select an item'),
            items: items.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SmallText(value),
                ),
              );
            }).toList(),
            dropdownColor: Colors.red.shade50,
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            onChanged: (newValue) {
              controller.setSelectedValue(newValue!);
            },
          ),
        ),
      );
    });
  }
}

class No19DropDownController extends GetxController {
  var selectedValue = ''.obs;

  void setSelectedValue(String newValue) {
    selectedValue.value = newValue;
  }
}
