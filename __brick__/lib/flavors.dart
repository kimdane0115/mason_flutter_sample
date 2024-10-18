enum Flavor {
  dev,
  staging,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return '{{appname}}(dev)';
      case Flavor.staging:
        return '{{appname}}(staging)';
      case Flavor.prod:
        return '{{appname}}';
      default:
        return 'title';
    }
  }

  static String get supabaseUrl {
    switch (appFlavor) {
      case Flavor.dev:
        return 'https://mccoypiqwvukvcgvxlvi.supabase.co';
      case Flavor.staging:
        return 'https://mccoypiqwvukvcgvxlvi.supabase.co';
      case Flavor.prod:
        return 'https://mccoypiqwvukvcgvxlvi.supabase.co';
      default:
        return 'https://mccoypiqwvukvcgvxlvi.supabase.co';
    }
  }

  static String get supabaseAnonKey {
    switch (appFlavor) {
      case Flavor.dev:
        return 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1jY295cGlxd3Z1a3ZjZ3Z4bHZpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA5MTkwMTUsImV4cCI6MjAyNjQ5NTAxNX0.TszKb82LR3At1YCQk4rUZgkkfkHuid0vUzEjZAVGTZ0';
      case Flavor.staging:
        return 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1jY295cGlxd3Z1a3ZjZ3Z4bHZpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA5MTkwMTUsImV4cCI6MjAyNjQ5NTAxNX0.TszKb82LR3At1YCQk4rUZgkkfkHuid0vUzEjZAVGTZ0';
      case Flavor.prod:
        return 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1jY295cGlxd3Z1a3ZjZ3Z4bHZpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA5MTkwMTUsImV4cCI6MjAyNjQ5NTAxNX0.TszKb82LR3At1YCQk4rUZgkkfkHuid0vUzEjZAVGTZ0';
      default:
        return 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1jY295cGlxd3Z1a3ZjZ3Z4bHZpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA5MTkwMTUsImV4cCI6MjAyNjQ5NTAxNX0.TszKb82LR3At1YCQk4rUZgkkfkHuid0vUzEjZAVGTZ0';
    }
  }

}
