// ignore_for_file: null_check_on_nullable_type_parameter
// ignore_for_file: unnecessary_non_null_assertion

class DailyInformationModel {
  int dealsAmount;

  int closedDealsAmount;

  int moneyAmount;

  int earnedMoneyAmount;

  DailyInformationModel({required this.dealsAmount, required this.closedDealsAmount, required this.moneyAmount, required this.earnedMoneyAmount});

  factory DailyInformationModel.fromJson(dynamic json) => DailyInformationModel(
      dealsAmount: json['dealsAmount'] as int,
      closedDealsAmount: json['closedDealsAmount'] as int,
      moneyAmount: json['moneyAmount'] as int,
      earnedMoneyAmount: json['earnedMoneyAmount'] as int,
	);
  
  Map<String, dynamic> toJson() => <String, dynamic>{
	  'dealsAmount': dealsAmount,
	  'closedDealsAmount': closedDealsAmount,
	  'moneyAmount': moneyAmount,
	  'earnedMoneyAmount': earnedMoneyAmount,
	};
}
