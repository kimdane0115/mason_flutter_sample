enum Flavor {
  dev,
  staging,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  // static String get title {
  //   switch (appFlavor) {
  //     case Flavor.dev:
  //       return '{{appname}}(dev)';
  //     case Flavor.staging:
  //       return '{{appname}}(staging)';
  //     case Flavor.prod:
  //       return '{{appname}}';
  //     default:
  //       return 'title';
  //   }
  // }

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return '플러터모바일(dev)';
      case Flavor.staging:
        return '플러터모바일(staging)';
      case Flavor.prod:
        return '플러터모바일';
      default:
        return 'title';
    }
  }

  static String get iosClientId {
    switch (appFlavor) {
      case Flavor.dev:
        return '753175679683-v555dtqrpdui9mfh943ie7v92ats9c1k.apps.googleusercontent.com';
      case Flavor.staging:
        return '753175679683-v555dtqrpdui9mfh943ie7v92ats9c1k.apps.googleusercontent.com';
      case Flavor.prod:
        return '753175679683-v555dtqrpdui9mfh943ie7v92ats9c1k.apps.googleusercontent.com';
      default:
        return '753175679683-v555dtqrpdui9mfh943ie7v92ats9c1k.apps.googleusercontent.com';
    }
  }

  static String get webServerClientId {
    switch (appFlavor) {
      case Flavor.dev:
        return '753175679683-6svf5t8tnnbh5793akrir07nhqnhoh9l.apps.googleusercontent.com';
      case Flavor.staging:
        return '753175679683-6svf5t8tnnbh5793akrir07nhqnhoh9l.apps.googleusercontent.com';
      case Flavor.prod:
        return '753175679683-6svf5t8tnnbh5793akrir07nhqnhoh9l.apps.googleusercontent.com';
      default:
        return '753175679683-6svf5t8tnnbh5793akrir07nhqnhoh9l.apps.googleusercontent.com';
    }
  }

  static String get supabaseUrl {
    switch (appFlavor) {
      case Flavor.dev:
        return 'https://ifvjqydakinvpgwxktqv.supabase.co';
      case Flavor.staging:
        return 'https://ifvjqydakinvpgwxktqv.supabase.co';
      case Flavor.prod:
        return 'https://ifvjqydakinvpgwxktqv.supabase.co';
      default:
        return 'https://ifvjqydakinvpgwxktqv.supabase.co';
    }
  }

  static String get supabaseAnonKey {
    switch (appFlavor) {
      case Flavor.dev:
        return 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImlmdmpxeWRha2ludnBnd3hrdHF2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjkzNzYxMjUsImV4cCI6MjA0NDk1MjEyNX0.oD0uk01p6FsXA0u0rXn4uJhC9DZwBonKhsj-m2bFOns';
      case Flavor.staging:
        return 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImlmdmpxeWRha2ludnBnd3hrdHF2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjkzNzYxMjUsImV4cCI6MjA0NDk1MjEyNX0.oD0uk01p6FsXA0u0rXn4uJhC9DZwBonKhsj-m2bFOns';
      case Flavor.prod:
        return 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImlmdmpxeWRha2ludnBnd3hrdHF2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjkzNzYxMjUsImV4cCI6MjA0NDk1MjEyNX0.oD0uk01p6FsXA0u0rXn4uJhC9DZwBonKhsj-m2bFOns';
      default:
        return 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImlmdmpxeWRha2ludnBnd3hrdHF2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjkzNzYxMjUsImV4cCI6MjA0NDk1MjEyNX0.oD0uk01p6FsXA0u0rXn4uJhC9DZwBonKhsj-m2bFOns';
    }
  }

}
