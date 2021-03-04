import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_range_slider/flutter_range_slider.dart' as frs;

class FilterForm extends HookWidget {
  FilterForm({
    Key key,
    @required ValueNotifier<double> lowPrice,
    @required ValueNotifier<double> upperPrice,
  })  : _lowPrice = lowPrice,
        _upperPrice = upperPrice,
        super(key: key);

  final ValueNotifier<double> _lowPrice;
  final ValueNotifier<double> _upperPrice;
  final _filterFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final pricingSelected = useState(PricingType.RENT);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _filterFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Filter",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: Colors.black87,
                    fontFamily: "ProductSans",
                  ),
                ),
                TextButton(
                  onPressed: () {
                    print("filters cleared");
                  },
                  child: Text(
                    "Clear filters",
                    style: TextStyle(
                      color: Colors.red[400],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text("Property Type"),
            ),
            DropdownButtonFormField(
              elevation: 0,
              isExpanded: true,
              isDense: true,
              items: ["Any", "Apartment", "Business Stall", "Office Space"]
                  .map(
                    (e) => DropdownMenuItem(
                      child: Text(e),
                      value: e,
                    ),
                  )
                  .toList(),
              onChanged: (v) {
                print("changed to $v");
              },
              value: "Any",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text("Pricing type"),
            ),
            Row(children: [
              ButtonTheme(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 48,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                minWidth: (MediaQuery.of(context).size.width * 0.5) - 22,
                child: RaisedButton(
                    color: pricingSelected.value == PricingType.RENT
                        ? Theme.of(context).accentColor
                        : Colors.white,
                    onPressed: () {
                      if (pricingSelected.value != PricingType.RENT) {
                        pricingSelected.value = PricingType.RENT;
                      }
                      print("rent");
                    },
                    elevation: 0.0,
                    child: Text("Rent",
                        style: TextStyle(
                          color: pricingSelected.value == PricingType.RENT
                              ? Colors.white
                              : Theme.of(context).accentColor,
                        ))),
              ),
              const SizedBox(width: 10),
              ButtonTheme(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 48,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                minWidth: (MediaQuery.of(context).size.width * 0.5) - 22,
                child: RaisedButton(
                  onPressed: () {
                    if (pricingSelected.value != PricingType.BUY) {
                      pricingSelected.value = PricingType.BUY;
                    }
                  },
                  elevation: 0,
                  color: pricingSelected.value == PricingType.BUY
                      ? Theme.of(context).accentColor
                      : Colors.white,
                  child: Text(
                    "Buy",
                    style: TextStyle(
                      color: pricingSelected.value == PricingType.BUY
                          ? Colors.white
                          : Theme.of(context).accentColor,
                    ),
                  ),
                ),
              )
            ]),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 16, 0, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Price range"),
                  Text("KSH ${_lowPrice.value} - ${_upperPrice.value}",
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ))
                ],
              ),
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: Theme.of(context).accentColor,
                overlayColor: Theme.of(context).primaryColor,
                valueIndicatorColor: Theme.of(context).primaryColor,
                thumbColor: Theme.of(context).accentColor,
              ),
              child: frs.RangeSlider(
                min: 2500.0,
                max: 50000.0,
                divisions: 10,
                lowerValue: _lowPrice.value,
                upperValue: _upperPrice.value,
                showValueIndicator: true,
                valueIndicatorMaxDecimals: 1,
                onChanged: (double newLowerValue, double newUpperValue) {
                  _lowPrice.value = newLowerValue;
                  _upperPrice.value = newUpperValue;
                },
                onChangeStart:
                    (double startLowerValue, double startUpperValue) {
                  print(
                      'Started with values: $startLowerValue and $startUpperValue');
                },
                onChangeEnd: (double newLowerValue, double newUpperValue) {
                  _lowPrice.value = newLowerValue;
                  _upperPrice.value = newUpperValue;
                  print('Ended with values: $newLowerValue and $newUpperValue');
                },
              ),
            ),
            const Spacer(),
            RaisedButton(
              onPressed: () {
                print("search properties");
              },
              color: Colors.black87,
              child: Text(
                "Search Property",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              elevation: 0,
            ),
          ],
        ),
      ),
    );
  }
}

enum PricingType { RENT, BUY }
