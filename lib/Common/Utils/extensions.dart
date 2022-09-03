import 'package:flutter/cupertino.dart';

extension WidgetToSliverBox on Widget {
  SliverToBoxAdapter toSliverBoxAdapter() {
    return SliverToBoxAdapter(
      child: this,
    );
  }
}
