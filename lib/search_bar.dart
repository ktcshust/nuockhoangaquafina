import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 293,
          height: 50,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 36,
                padding: const EdgeInsets.all(8),
                decoration: ShapeDecoration(
                  color: Color(0xFFF4F7F9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 28,
                      height: 28,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 28,
                            height: 28,
                            child: Text(
                              '􀊫',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF646E77),
                                fontSize: 18,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500,
                                height: 2.78,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        child: Text(
                          'Search',
                          style: TextStyle(
                            color: Color(0xFF646E77),
                            fontSize: 17,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            height: 1.29,
                            letterSpacing: -0.41,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}