/// A class representing the Cloud9 package.

class Cloud9 {
  // Private constructor to prevent direct instantiation of the class.
  Cloud9._();

  // Private instance of the class.
  static final Cloud9 _instance = Cloud9._();

  // Public getter to access the instance of the class.
  static Cloud9 get instance {
    return _instance;
  }
}
