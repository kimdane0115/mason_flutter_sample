
import 'dart:async';

import '../../../../core/constants/index.dart';

Future<BuildContext> showLoadingIndicator(BuildContext context) {
    var dialogContext = Completer<BuildContext>();
    showDialog(
      context: context,
      builder: (_) {
        if (!dialogContext.isCompleted) dialogContext.complete(_);
        return Dialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            padding: EdgeInsets.zero,
            // width: context.mediaQuery.size.width * 0.75,
            width: MediaQuery.of(context).size.width * 0.75,
            child: const Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircularProgressIndicator(),
                ],
              ),
            ),
          ),
        );
      },
      barrierDismissible: false,
    );
    return dialogContext.future;
  }