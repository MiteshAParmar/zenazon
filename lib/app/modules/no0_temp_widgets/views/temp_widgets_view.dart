import 'package:zenazon/app/utility/consts.dart';
import 'package:zenazon/widgets/16-Filters/filters_sizes_strip.dart';
// ignore: unnecessary_import
import '../controllers/temp_widgets_controller.dart';

class TempWidgetsView extends GetView<TempWidgetsController> {
  const TempWidgetsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Temp View",
            style: GoogleFonts.montserrat(
              fontSize: 20.dp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
        body: const FilterSizeStrip());
  }
}