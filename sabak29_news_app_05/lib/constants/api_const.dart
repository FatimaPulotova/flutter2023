class ApiConst {
  static const apiKey = '1e7ee793d6564b70992204870ce49c2d';
  static String topNews([String? domain]) =>
      'https://newsapi.org/v2/top-headlines?country=${domain ?? 'us'}&apiKey=$apiKey';
  static const newsImage =
      'https://u2.9111s.ru/uploads/202302/27/b9ca5c0fcd4b42794c0f9a3f04ebac89.png';
}
