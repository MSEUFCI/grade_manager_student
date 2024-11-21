import 'package:shared_preferences/shared_preferences.dart';

class Savetocache {
  const Savetocache();

  sharedPrefInstance() async {
    final SharedPreferencesWithCache prefsWithCache =
        await SharedPreferencesWithCache.create(
      cacheOptions: const SharedPreferencesWithCacheOptions(
          // When an allowlist is included, any keys that aren't included cannot be used.
          // allowList: <String>{'repeat', 'action'},
          ),
    );

    return prefsWithCache;
  }

  void save(String name, dynamic data) async {
    // final SharedPreferencesWithCache prefsWithCache =
    //     await SharedPreferencesWithCache.create(
    //   cacheOptions: const SharedPreferencesWithCacheOptions(
    //       // When an allowlist is included, any keys that aren't included cannot be used.
    //       // allowList: <String>{'repeat', 'action'},
    //       ),
    // );
    dynamic prefsWithCache = this.sharedPrefInstance();

    if (data is int) {
      await prefsWithCache.setInt(name, data);
    } else if (data is String) {
      await prefsWithCache.setString(name, data);
    }
    // Add other data types
  }

  dynamic get(String name) {
    dynamic prefsWithCache = this.sharedPrefInstance();

    return prefsWithCache.getInt(name);
  }
}
