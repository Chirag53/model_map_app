import 'package:flutter/material.dart';

class EarningCommon extends StatelessWidget {
  final String? hedging;
  final String? secondName;
  final String? rupay;
  final String? pay;
  const EarningCommon(
      {Key? key, this.hedging, this.secondName, this.rupay, this.pay})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128,
      width: 125,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(children: [
        const SizedBox(
          height: 5,
        ),
        Text(
          hedging ?? 'Total Earnings',
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          secondName ?? "Today",
          style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          rupay ?? 'RS: 2800',
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          pay ?? "Payout >",
          style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xff30D158)),
        ),
      ]),
    );
  }
}
