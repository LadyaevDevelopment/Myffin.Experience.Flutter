enum ClientFamilyRole {
  mother,

  father,

  grandmother,

  grandfather
}

extension ClientFamilyRoleExtensions on ClientFamilyRole {
  String get stringValue {
    switch (this) {
      case ClientFamilyRole.mother:
        return 'Mother';
      case ClientFamilyRole.father:
        return 'Father';
      case ClientFamilyRole.grandmother:
        return 'Grandmother';
      case ClientFamilyRole.grandfather:
        return 'Grandfather';
    }
  }

 static ClientFamilyRole fromString(String value) {
    switch (value) {
      case 'Mother':
        return ClientFamilyRole.mother;
      case 'Father':
        return ClientFamilyRole.father;
      case 'Grandmother':
        return ClientFamilyRole.grandmother;
      case 'Grandfather':
        return ClientFamilyRole.grandfather;
      default:
	    throw Exception("$value is not a valid value of enumeration GoalStatus");
    }
  }
}
