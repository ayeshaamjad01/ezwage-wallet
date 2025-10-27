import 'package:charts_flutter_new/flutter.dart';
import 'package:ezwage/ui/analytics/view/vertical_bar_chart.dart';
import 'package:charts_common/common.dart' as common;

class CustomDomainHighlighter<D> extends DomainHighlighter<D> {
  @override
  common.DomainHighlighter<D> createCommonBehavior() =>
      CustomCommonDomainHighlighter<D>(selectionModelType);
}
