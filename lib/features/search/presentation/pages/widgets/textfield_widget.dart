import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qanony/core/utils/assets.dart';
import 'package:qanony/core/utils/colors.dart';
import 'package:qanony/features/search/presentation/bloc/search_bloc.dart';
import 'package:qanony/features/search/presentation/pages/widgets/text_widget.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
      return TextField(
        controller: controller,
        decoration: InputDecoration(
            suffixIcon: SizedBox(
              width: 110,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextWidget(
                      text: context.read<SearchBloc>().dropdownvalue,
                      size: 14,
                      color: AppColor.textColor),
                  IconButton(
                      onPressed: () {
                        context
                            .read<SearchBloc>()
                            .add(const DropDownMenuEvent());
                      },
                      icon: const ImageIcon(
                        AssetImage(AppAssets.downArrow),
                        color: AppColor.textColor,
                      ))
                ],
              ),
            ),
            filled: true,
            hintText:
                controller.text.isEmpty ? tr("writeHere") : controller.text,
            hintStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColor.borderColor.withOpacity(.5)),
            border: buildBorder(),
            focusedBorder: buildBorder(),
            fillColor: AppColor.whiteColor,
            disabledBorder: buildBorder()),
      );
    });
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColor.borderColor.withOpacity(.31),
          width: 1,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)));
  }
}


// DropdownButtonHideUnderline(
//                 child: DropdownButton(
//               elevation: 0,
//               borderRadius: BorderRadius.circular(10),
//               dropdownColor: AppColor.whiteColor,
//               padding: const EdgeInsets.only(left: 10),
//               icon: const ImageIcon(
//                 AssetImage(AppAssets.downArrow),
//                 color: AppColor.textColor,
//               ),
//               iconSize: 18,
//               style: const TextStyle(
//                 color: AppColor.textColor,
//                 fontFamily: "Noor",
//                 fontSize: 16,
//               ),
//               items: context.read<SearchBloc>().items.map((String items) {
//                 return DropdownMenuItem(
//                   value: items,
//                   child: Text(items),
//                 );
//               }).toList(),
//               value: context.read<SearchBloc>().dropdownvalue,
//               onChanged: (value) {
//                 context
//                     .read<SearchBloc>()
//                     .add(SelectConsultTypeEvent(value: value));
//               },
//             )),