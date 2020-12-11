/// Interface for a Unique ID Generator
abstract class IUniqueIdGenerator {
  /// Initializes the generator
  ///
  /// A list of reserved strings can be provided
  GeneratorStatus initialize({List<String> reservedIds = const []});

  /// This will create a new unique ID and return it
  ///
  /// Can **throw** [UninitializedGeneratorException]
  String get uniqueId;

  /// This will generate a new unique ID using the given String as seed
  ///
  /// Can **throw** [UninitializedGeneratorException]
  String getUniqueIdFromSeed(String seed);

  /// Returns the status of the Generator
  GeneratorStatus get currentStatus;

  /// Will add the given ids to the set of reserved ids
  void addAsReserved(List<String> ids);
}

/// Generator not initialized. Please initialize your generator using `generator.initialize()`
class UninitializedGeneratorException implements Exception {
  final String message;
  UninitializedGeneratorException({
    this.message =
        "Generator not initialized. Please initialize your generator using generator.initialize()",
  });

  @override
  String toString() {
    return "UninitializedGeneratorException: $message";
  }
}

enum GeneratorStatus {
  uninitialized,
  initialized,
}
