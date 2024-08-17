import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:full_learn_flutter/product/extension/string_extension.dart';
import 'package:provider/provider.dart';

import '../../../202/a11_1_image_learn_202.dart';
import '../../../product/global/resource_context.dart';
import '../../../product/global/theme_notifer.dart';
import '../../../product/service/project_dio.dart';
import '../model/resource_model.dart';
import '../service/reqress_service.dart';
import '../viewModel/a15_2_req_res_provider.dart';

// 43 dk view provider kullanim
class ReqResViewProvider extends StatefulWidget {
  const ReqResViewProvider({super.key});

  @override
  State<ReqResViewProvider> createState() => _ReqResViewProviderState();
}

// class _ReqResViewState extends ReqresViewModel {
class _ReqResViewProviderState extends State<ReqResViewProvider>
    with ProjectDioMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ReqResProvider>(
      create: (context) => ReqResProvider(ReqresService(service)),
      builder: (context, child) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.read<ThemeNotifer>().changeTheme();
            },
          ),
          appBar: AppBar(
              actions: const [_SaveAndNavigate()],
              title: context.watch<ReqResProvider>().isLoading
                  ? const CircularProgressIndicator(color: Colors.white)
                  : null),
          body: Column(
            children: [
              const _TempPlaceHolder(),
              Expanded(
                  child: _resourceListview(
                      context,
                      context
                          .watch<ReqResProvider>()
                          .resources)), //wacht surekli dinleme yapiyor
            ],
          ),
        );
      },
    );
  }

  ListView _resourceListview(BuildContext context, List<Data> items) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
            color: Color(items[index].color?.colorValue ?? 0),
            child: Text(items[index].name ?? ''));
      },
    );
  }
}

class _SaveAndNavigate extends StatelessWidget {
  const _SaveAndNavigate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          context.read<ReqResProvider>().saveToLocale(
              context.read<ResourceContext>(),
              context.read<ReqResProvider>().resources);
          Navigator.of(context).push(MaterialPageRoute(builder: (_) {
            return const ImageLearn202();
          }));
        },
        child: const Icon(Icons.ac_unit));
  }
}

class _TempPlaceHolder extends StatelessWidget {
  const _TempPlaceHolder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // kosula gore state degistirme
    return Selector<ReqResProvider, bool>(builder: (context, value, child) {
      return value ? const Placeholder() : const Text('data');
    }, selector: (context, provider) {
      return provider.isLoading;
    });
  }
}
