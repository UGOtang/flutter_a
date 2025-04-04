import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class BasicResizable extends StatelessWidget {
  const BasicResizable({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        return DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: theme.radius,
            border: Border.all(
              color: theme.colorScheme.border,
            ),
          ),
          child: ClipRRect(
            borderRadius: theme.radius,
            child: ShadResizablePanelGroup(
              children: [
                ShadResizablePanel(
                  id: 0,
                  defaultSize: .2,
                  minSize: .1,
                  maxSize: .8,
                  child: Center(
                    child: Text('One', style: theme.textTheme.large),
                  ),
                ),
                ShadResizablePanel(
                  id: 1,
                  defaultSize: .5,
                  child: ShadResizablePanelGroup(
                    axis: Axis.vertical,
                    children: [
                      ShadResizablePanel(
                        id: 0,
                        defaultSize: .2,
                        child: Center(
                            child: Text('Two', style: theme.textTheme.large)),
                      ),
                      ShadResizablePanel(
                        id: 1,
                        defaultSize: .7,
                        child: Align(
                            child: Text('Three', style: theme.textTheme.large)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}