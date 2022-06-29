class Endpoints {
  static String _v1PublicPrefix = '/v1/public/';

  // Characters
  static String characters() => _v1PublicPrefix + 'characters'; // Fetches lists of characters
  static String characterById(String characterId) =>
      _v1PublicPrefix + 'characters/$characterId'; // Fetches a single character by id.

  // Comics
  static String comics() => _v1PublicPrefix + 'comics';
  static String comicsByCharacterId(String characterId) =>
      _v1PublicPrefix + 'characters/$characterId/comics'; // Fetches lists of comics filtered by a character id.

  // Creators
  static String creators() => _v1PublicPrefix + 'creators';

  // Events
  static String events() => _v1PublicPrefix + 'events';

  // Series
  static String series() => _v1PublicPrefix + 'series';

  // Stories
  static String stories() => _v1PublicPrefix + 'stories';
}
