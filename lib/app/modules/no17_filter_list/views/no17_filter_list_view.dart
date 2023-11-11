import 'package:zenazon/app/utility/consts.dart';
import 'package:zenazon/widgets/17-Fiters_lists/filters_lists_search_bar.dart';
import 'package:zenazon/widgets/17-Fiters_lists/no17_filter_list_builder.dart';

import '../../../../widgets/16-Filters/filters_bottom_sheet.dart';

import '../controllers/no17_filter_list_controller.dart';

// ignore: must_be_immutable
class No17FilterListView extends GetView<No17FilterListController> {
  No17FilterListView({Key? key}) : super(key: key);
  FiltersBottomSheet filtersBottomSheet = const FiltersBottomSheet();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldbg,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldbg,
        title: const Text('Brand'),
        actions: [
          IconButton(
            onPressed: () {
              filtersBottomSheet.showSortOptions(
                  context); //---Custom Bottom Sheet is called here
            },
            icon: const Icon(Icons.sort),
          ),
        ],
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            children: [
              CustomSearchBar(),
              No17_FilterListsBuilter(),
            ],
          ),
        ),
      ),
    );
  }
}
