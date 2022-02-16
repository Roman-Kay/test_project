import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_prj/providers/base_items_provider.dart';

import '../constant/colors.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  static const routeName = '/screen_2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 25),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: SvgPicture.asset(
                'icons/close.svg',
                height: 40,
                width: 40,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Section 1 (2)',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  fontSize: 24),
            ),
          ),
          SizedBox(
            height: 150 + 32,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemExtent: 350,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(left: 16, top: 16, bottom: 16),
                  child: _Items(
                    title: 'Horisonal items 1',
                  ),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, bottom: 16),
            child: Text(
              'Section 2 (4)',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  fontSize: 24),
            ),
          ),
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                itemCount: 10,
                itemExtent: 150,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: _Items(
                      title: 'Vertical items 1',
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Items extends StatelessWidget {
  const _Items({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) => Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: ProjectColor.black.withOpacity(0.25),
          blurRadius: 16,
        ),
      ], color: ProjectColor.white, borderRadius: BorderRadius.circular(16)),
      child: Center(
          child: Text(
        title,
        style: const TextStyle(
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
          fontSize: 24,
        ),
      )));
}
