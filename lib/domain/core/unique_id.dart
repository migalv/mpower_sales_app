/// Represents a unique identifier for an object
class UniqueId {
  final dynamic uid;

  const UniqueId._(this.uid);

  /// Used with strings we trust are unique, such as database IDs.
  factory UniqueId.fromUniqueString(String uniqueIdStr) {
    assert(uniqueIdStr != null);
    return UniqueId._(uniqueIdStr);
  }
}
