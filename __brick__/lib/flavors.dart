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
        return '플러터샘플(dev)';
      case Flavor.staging:
        return '플러터샘플(staging)';
      case Flavor.prod:
        return '플러터샘플';
      default:
        return 'title';
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
