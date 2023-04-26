// To parse this JSON data, do
//
//     final welcome = welcomeFromMap(jsonString);

import 'dart:convert';

Welcome welcomeFromMap(String str) => Welcome.fromMap(json.decode(str));

String welcomeToMap(Welcome data) => json.encode(data.toMap());

class Welcome {
  List<ProgressDatum>? progressData;

  Welcome({
    this.progressData,
  });

  factory Welcome.fromMap(Map<String, dynamic> json) => Welcome(
        progressData: json["progress_data"] == null
            ? []
            : List<ProgressDatum>.from(
                json["progress_data"]!.map((x) => ProgressDatum.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "progress_data": progressData == null
            ? []
            : List<dynamic>.from(progressData!.map((x) => x.toMap())),
      };
}

class ProgressDatum {
  String? hedging;
  String? secondName;
  String? rupay;
  String? pay;

  ProgressDatum({
    this.hedging,
    this.secondName,
    this.rupay,
    this.pay,
  });

  factory ProgressDatum.fromMap(Map<String, dynamic> json) => ProgressDatum(
        hedging: json["hedging"],
        secondName: json["secondName"],
        rupay: json["rupay"],
        pay: json["pay"],
      );

  Map<String, dynamic> toMap() => {
        "hedging": hedging,
        "secondName": secondName,
        "rupay": rupay,
        "pay": pay,
      };
}
