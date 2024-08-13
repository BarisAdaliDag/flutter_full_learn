import 'package:flutter/material.dart';
import 'a12_1_shared_learn_cache.dart';
import 'a12_1c_shared_manager.dart';
import 'a12_2c_user_model.dart';
import 'user_cache/a12_2_user_cache_manager.dart';

class SharedListCache extends StatefulWidget {
  const SharedListCache({super.key});

  @override
  State<SharedListCache> createState() => _SharedListCacheState();
}

class _SharedListCacheState extends LoadingStatefull<SharedListCache> {
  //LoadingStatefull cagiriyor bu sayede change loading her yerde yazamak zorunda olmuyor
  late final UserCacheManager userCacheManager;
  User deneme = User('adam', 'velo', 'https://google.com');
  List<User> _users = [];
  @override
  void initState() {
    super.initState();
    initalazeAndSave();
  }

  Future<void> initalazeAndSave() async {
    changeLoading();
    final SharedManager manager = SharedManager();

    await manager.init();
    userCacheManager = UserCacheManager(manager);
    _users = userCacheManager.getItems() ?? [];
    changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: isLoading
            ? CircularProgressIndicator(
                color: Theme.of(context).scaffoldBackgroundColor)
            : null,
        actions: isLoading
            ? null
            : [
                IconButton(
                    onPressed: () async {
                      changeLoading();
                      _users.add(deneme);
                      await userCacheManager.saveItems(_users);
                      changeLoading();
                    },
                    icon: const Icon(Icons.download_for_offline_outlined)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.remove_circle_outline)),
              ],
      ),
      body: _UserListView(users: _users),
    );
  }
}

class _UserListView extends StatelessWidget {
  const _UserListView({
    super.key,
    required this.users,
  });

  final List<User> users;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            title: Text(users[index].name ?? ''),
            subtitle: Text(users[index].description ?? ''),
            trailing: Text(users[index].url ?? '',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(decoration: TextDecoration.underline)),
          ),
        );
      },
    );
  }
}
