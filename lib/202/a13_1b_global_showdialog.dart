// ben olusturdum show dılogu globalda kullanabılıyor muyum dıye
//show dıalog bu yapı sayesınde tum fılelarda calısacak
// 38 dk
import 'package:flutter/material.dart';

mixin ProductSheetMixin {
  // gobobal yapıda her fıle calıstırmak ıcın mıxın cevırdı
  Future<T?> showCustomSheet<T>(BuildContext context, Widget child) async {
    return showModalBottomSheet<T>(
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        builder: (context) {
          return _CustomMainSheet(child: child);
        });
  }
}

class _CustomMainSheet extends StatelessWidget {
  const _CustomMainSheet({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [const _BaseSheetHeader(), Expanded(child: child)],
      ),
    );
  }
}

class _BaseSheetHeader extends StatelessWidget {
  const _BaseSheetHeader({
    super.key,
  }) : _gripHeight = 30;

  final double _gripHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _gripHeight,
      child: Stack(
        // kullanma sebebi close buton solda cizgi orta dursun diye
        alignment: Alignment.topCenter,
        children: [
          Divider(
            color: Theme.of(context).colorScheme.onSurface,
            thickness: 3,
            indent: MediaQuery.of(context).size.width * 0.45,
            endIndent: MediaQuery.of(context).size.width * 0.45,
          ),
          Positioned(
              right: MediaQuery.of(context).size.width * 0.01,
              top: 0,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Padding(
                  padding: PAddingManager.paddingLowAll,
                  child: Icon(Icons.close),
                ),
              ))
        ],
      ),
    );
  }
}

class PAddingManager {
  static const paddingLowAll = EdgeInsets.all(8.0);
}
