import 'package:zenazon/app/utility/consts.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        width: double.infinity, // 90% of screen width
        height: 50.0,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: List.generate(
            10,
            (index) => BoxShadow(
              color: Colors.grey.withOpacity(0.01),
              spreadRadius: 2,
              blurRadius: 1,
              // offset: const Offset(0, 1), // changes position of shadow
            ),
          ),
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Row(
          children: [
            const Icon(Icons.search, color: Colors.grey),
            const SizedBox(width: 10.0),
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none, // No underline on the input field
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
