import '/flutter_flow/flutter_flow_util.dart';
import 'store_widget.dart' show StoreWidget;
import 'package:flutter/material.dart';

class StoreModel extends FlutterFlowModel<StoreWidget> {
  ///  Local state fields for this page.

  List<String> tempList = [
    'Technology',
    'Marketing',
    'Business & Strategy',
    'Finance',
    'Design',
    'Operations & Logistics',
    'Education & Training',
    'Healthcare',
    'Legal & Compliance',
    'Human Resources',
    'Sustainability & Environment',
    'Art & Creativity',
    'Sales & Customer Service',
    'Personal Development',
    'Other'
  ];
  void addToTempList(String item) => tempList.add(item);
  void removeFromTempList(String item) => tempList.remove(item);
  void removeAtIndexFromTempList(int index) => tempList.removeAt(index);
  void insertAtIndexInTempList(int index, String item) =>
      tempList.insert(index, item);
  void updateTempListAtIndex(int index, Function(String) updateFn) =>
      tempList[index] = updateFn(tempList[index]);

  int? index = 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
