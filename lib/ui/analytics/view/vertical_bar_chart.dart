import 'package:charts_flutter_new/flutter.dart';
import 'package:charts_common/common.dart' as common;
String? selctedBarValue;


class CustomCommonDomainHighlighter<D> extends common.DomainHighlighter<D> {
  late final common.SelectionModelType selectionModelType;

  late common.BaseChart<D> _chart;

  late common.LifecycleListener<D> _lifecycleListener;

  CustomCommonDomainHighlighter([this.selectionModelType = common.SelectionModelType.info]) {
    _lifecycleListener =
        common.LifecycleListener<D>(onPostprocess: _updateColorFunctions);
  }

  void _selectionChanged(SelectionModel<D> selectionModel) {
    _chart.redraw(skipLayout: true, skipAnimation: false);
  }

  void _updateColorFunctions(List<common.MutableSeries<D>> seriesList) {
    SelectionModel<D> selectionModel =
    _chart.getSelectionModel(selectionModelType);
   

      seriesList.forEach((common.MutableSeries<D> series) {
        final origColorFn = series.colorFn;

        if (origColorFn != null) {
           
          series.colorFn = (int? index) {
            final origColor = origColorFn(index);
            if (selectionModel.isDatumSelected(series, index)) {
            
              return origColor;
            } else {
              return Color(r: origColor.r, g: origColor.g, b: origColor.b, a: 110);
            }
          };
        }
      });
  
  }

  @override
  void attachTo(common.BaseChart<D> chart) {
    _chart = chart;
    chart.addLifecycleListener(_lifecycleListener);
    chart
        .getSelectionModel(selectionModelType)
        .addSelectionChangedListener(_selectionChanged);
  }

  @override
  void removeFrom(common.BaseChart<D> chart) {
    chart
        .getSelectionModel(selectionModelType)
        .removeSelectionChangedListener(_selectionChanged);
    chart.removeLifecycleListener(_lifecycleListener);
  }

  @override
  String get role => 'domainHighlight-$selectionModelType';
}





