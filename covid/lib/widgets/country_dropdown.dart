import 'package:flutter/material.dart';

class CountryDropdown extends StatelessWidget {
  final List<String> countries;
  final String country;
  final Function onChanged;

  const CountryDropdown(
      {Key key,
      @required this.countries,
      @required this.country,
      @required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: 40.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: this.country,
          items: this.countries
              .map(
                (e) => DropdownMenuItem(
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 12.0,
                        child: Image.asset(
                            'assets/images/${e.toLowerCase()}_flag.png'),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        e,
                        style: const TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  value: e,
                ),
              )
              .toList(),
              onChanged: this.onChanged,
        ),
      ),
    );
  }
}
