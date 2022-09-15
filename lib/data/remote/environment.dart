class Environments {
  static const String PRODUCTION = 'https://630469af0de3cd918b466245.mockapi.io/api/';
  static const String DEV = '';
}

class ConfigEnvironments {
  static const String _currentEnvironments = Environments.DEV;
  static const List<Map<String, String>> _availableEnvironments = [
    {
      'env': Environments.DEV,
      'url': 'https://630469af0de3cd918b466245.mockapi.io/api/',
    },
    {
      'env': Environments.PRODUCTION,
      'url': '',
    },
  ];

  static String? getEnvironments() {
    return _availableEnvironments
        .firstWhere(
          (d) => d['env'] == _currentEnvironments,
        )
        .values
        .last
        .toString();
  }
}
