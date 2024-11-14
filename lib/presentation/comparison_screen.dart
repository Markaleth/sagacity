import 'package:flutter/material.dart';
import 'package:sagacity/data/models/product_model.dart';

import '../dimensions.dart';
import '../mocks/product_mocks.dart';
import 'widgets/product_tile_widget.dart';
import 'widgets/text_input_widget.dart';

class ComparisonScreen extends StatefulWidget {
  const ComparisonScreen({super.key});

  @override
  State<ComparisonScreen> createState() => _ComparisonScreenState();
}

class _ComparisonScreenState extends State<ComparisonScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Form(
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(spacingM),
            children: [
              TextInputWidget(
                onSaved: (value) {},
              ),
              const SizedBox(
                height: spacingXXL,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(spacingM),
                      child: DecoratedBox(
                        decoration: const BoxDecoration(
                          border: Border(
                            right: BorderSide(
                              color: Colors.black,
                              width: thicknessM,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text('Baseline'),
                            ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: productQueryMocks.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return ProductTileWidget(
                                      product: ProductModel.fromJson(
                                          productQueryMocks[index]));
                                }),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(spacingM),
                      child: DecoratedBox(
                        decoration: const BoxDecoration(
                          border: Border(
                            right: BorderSide(
                              color: Colors.black,
                              width: thicknessM,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text('Spark Results'),
                            GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: gridViewAspectRatio,
                                  crossAxisSpacing: spacingM,
                                  mainAxisSpacing: spacingM,
                                ),
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: productQueryMocks.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return ProductTileWidget(
                                      product: ProductModel.fromJson(
                                          productQueryMocks[index]));
                                }),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(spacingM),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text('RetailAPI results'),
                          GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: gridViewAspectRatio,
                                crossAxisSpacing: spacingM,
                                mainAxisSpacing: spacingM,
                              ),
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: productQueryMocks.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return ProductTileWidget(
                                    product: ProductModel.fromJson(
                                        productQueryMocks[index]));
                              }),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      );
}
