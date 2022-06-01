import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:image_picker/image_picker.dart';
import 'package:licenta_georgebardas/main.dart';
import 'package:licenta_georgebardas/models/category.dart';
import 'package:licenta_georgebardas/router.gr.dart';
import 'package:licenta_georgebardas/screens/admin_screen/admin_add_product_screen/admin_add_product_cubit.dart';
import 'package:licenta_georgebardas/utils/input_validation.dart';
import 'package:licenta_georgebardas/widgets/primary_button.dart';

class AdminAddProductScreen extends StatelessWidget {
  const AdminAddProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _imageController = TextEditingController();
    final TextEditingController _categoryController = TextEditingController();
    return BlocProvider(
      create: (_) => AdminAddProductCubit(),
      child: BlocBuilder<AdminAddProductCubit, AdminAddProductState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text(
                AppLocalizations.of(context)?.add_product ?? "",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              foregroundColor: Colors.black,
            ),
            body: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          TextFormField(
                            readOnly: true,
                            controller: _imageController,
                            decoration: InputDecoration(
                              label: Text(
                                AppLocalizations.of(context)
                                        ?.add_product_image ??
                                    "",
                              ),
                            ),
                            onTap: () async {
                              final image = await ImagePicker().pickImage(
                                source: ImageSource.gallery,
                              );
                              if (image != null) {
                                _imageController.text = image.name;
                                context
                                    .read<AdminAddProductCubit>()
                                    .onImageSelected(image);
                              }
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              label: Text(
                                AppLocalizations.of(context)
                                        ?.add_product_name ??
                                    "",
                              ),
                            ),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (category) {
                              if (!InputValidation()
                                  .validateCategory(category ?? "")) {
                                return AppLocalizations.of(context)
                                        ?.add_category_length_error ??
                                    "";
                              }
                            },
                            onChanged: context
                                .read<AdminAddProductCubit>()
                                .onTitleChange,
                          ),
                          TextFormField(
                            readOnly: true,
                            controller: _categoryController,
                            onTap: () async {
                              final result = await appRouter.push(
                                  AdminProductSelectCategoryScreenRoute());
                              if (result != null && result is Category) {
                                context
                                    .read<AdminAddProductCubit>()
                                    .selectCategory(result);
                                _categoryController.text = result.title;
                              }
                            },
                            decoration: InputDecoration(
                              label: Text(
                                AppLocalizations.of(context)
                                        ?.add_product_select_category ??
                                    "",
                              ),
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              label: Text(
                                AppLocalizations.of(context)
                                        ?.add_product_price ??
                                    "",
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (category) {
                              if (!InputValidation()
                                  .validatePrice(category ?? "")) {
                                return "Pret invalid";
                              }
                            },
                            onChanged: context
                                .read<AdminAddProductCubit>()
                                .onPriceChange,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              label: Text(
                                AppLocalizations.of(context)
                                        ?.add_product_description ??
                                    "",
                              ),
                            ),
                            maxLines: 10,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (category) {
                              if (!InputValidation()
                                  .validateCategory(category ?? "")) {
                                return AppLocalizations.of(context)
                                        ?.add_category_length_error ??
                                    "";
                              }
                            },
                            onChanged: context
                                .read<AdminAddProductCubit>()
                                .onDescriptionChange,
                          )
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    visible: state.isLoading,
                    child: CircularProgressIndicator(),
                  ),
                  SizedBox(height: 30),
                  PrimaryButton(
                    text: AppLocalizations.of(context)?.add ?? "",
                    onPressed: state.isFormFieldValid
                        ? () =>
                            context.read<AdminAddProductCubit>().addProduct()
                        : null,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
