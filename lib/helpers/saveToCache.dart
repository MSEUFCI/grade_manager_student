import 'package:shared_preferences/shared_preferences.dart';

class Savetocache {
  const Savetocache();

  Future<SharedPreferencesWithCache> sharedPrefInstance() async {
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
    // Future<SharedPreferencesWithCache> prefsWithCache =
    //     this.sharedPrefInstance();

    final SharedPreferencesWithCache prefsWithCache =
        await SharedPreferencesWithCache.create(
      cacheOptions: const SharedPreferencesWithCacheOptions(
          // When an allowlist is included, any keys that aren't included cannot be used.
          // allowList: <String>{'repeat', 'action'},
          ),
    );

    var pref = await prefsWithCache;

    // prefsWithCache.then((pref) async {
    //   if (data is int) {
    //     await pref.setInt(name, data);
    //   } else if (data is String) {
    //     await pref.setString(name, data);
    //   }
    //   // Add other data types
    // }, onError: (e) {
    //   print(e);
    // });

    if (data is int) {
      await pref.setInt(name, data);
    } else if (data is String) {
      await pref.setString(name, data);
    }
    // Add other data types
  }

  dynamic get(String name) async {
    // Future<SharedPreferencesWithCache> prefsWithCache =
    //     this.sharedPrefInstance();

    final SharedPreferencesWithCache prefsWithCache =
        await SharedPreferencesWithCache.create(
      cacheOptions: const SharedPreferencesWithCacheOptions(
          // When an allowlist is included, any keys that aren't included cannot be used.
          // allowList: <String>{'repeat', 'action'},
          ),
    );

    prefsWithCache.getInt(name);

    // prefsWithCache.then((pref) {
    //   return pref.getInt(name);
    // }, onError: (e) {
    //   print(e);
    // });
  }
}
