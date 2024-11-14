import 'package:flutter/material.dart';

import '../dimensions.dart';
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
              const IntrinsicHeight(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(spacingM),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Baseline'),
                            Placeholder(
                              child: Text('#1'),
                            ),
                            Placeholder(
                              child: Text('#2'),
                            ),
                            Placeholder(
                              child: Text('#3'),
                            ),
                            Placeholder(
                              child: Text('#4'),
                            ),
                            Placeholder(
                              child: Text('#5'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 6,
                      child: Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(spacingM),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Text('Double column'),
                                    Placeholder(
                                      child: Text('#1'),
                                    ),
                                    Placeholder(
                                      child: Text('#2'),
                                    ),
                                    Placeholder(
                                      child: Text('#3'),
                                    ),
                                    Placeholder(
                                      child: Text('#4'),
                                    ),
                                    Placeholder(
                                      child: Text('#5'),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('Double column'),
                                    Placeholder(
                                      child: Text('#1'),
                                    ),
                                    Placeholder(
                                      child: Text('#2'),
                                    ),
                                    Placeholder(
                                      child: Text('#3'),
                                    ),
                                    Placeholder(
                                      child: Text('#4'),
                                    ),
                                    Placeholder(
                                      child: Text('#5'),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(spacingM),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Score'),
                            Placeholder(
                              child: Text('#1'),
                            ),
                            Placeholder(
                              child: Text('#2'),
                            ),
                            Placeholder(
                              child: Text('#3'),
                            ),
                            Placeholder(
                              child: Text('#4'),
                            ),
                            Placeholder(
                              child: Text('#5'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
