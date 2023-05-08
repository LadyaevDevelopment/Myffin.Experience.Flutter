enum AgeCategory {
  kid,

  adult
}

extension AgeCategoryExtensions on AgeCategory {
  String get stringValue {
    switch (this) {
      case AgeCategory.kid:
        return 'Kid';
      case AgeCategory.adult:
        return 'Adult';
    }
  }

 static AgeCategory fromString(String value) {
    switch (value) {
      case 'Kid':
        return AgeCategory.kid;
      case 'Adult':
        return AgeCategory.adult;
      default:
	    throw Exception("$value is not a valid value of enumeration GoalStatus");
    }
  }
}
