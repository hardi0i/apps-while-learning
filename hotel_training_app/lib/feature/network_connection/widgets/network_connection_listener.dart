import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_app_for_sobes/config/theme/theme_extensions.dart';

import 'package:hotel_app_for_sobes/feature/network_connection/cubit/network_connection_cubit.dart';
import 'package:hotel_app_for_sobes/feature/network_connection/cubit/network_connection_state.dart';

class NetworkConnectionListener extends StatelessWidget {
  const NetworkConnectionListener({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    final bookInPalette = context.palette;
    final bookInTypography = context.typography;

    return BlocListener<NetworkConnectionCubit, NetworkConnectionState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        state.status.whenOrNull(
          invalid: () {
            showGeneralDialog(
              barrierLabel: 'label',
              barrierDismissible: true,
              barrierColor: Colors.black.withOpacity(
                0.5,
              ),
              transitionDuration: const Duration(
                milliseconds: 700,
              ),
              context: context,
              pageBuilder: (context, anim1, anim2) {
                return Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 275,
                    padding: const EdgeInsets.all(
                      16.0,
                    ),
                    margin: const EdgeInsets.only(
                      bottom: 10,
                      left: 12,
                      right: 12,
                    ),
                    decoration: BoxDecoration(
                      color: bookInPalette.foregroundSecondaryColor,
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 68,
                          width: 68,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            color: bookInPalette.foregroundColor,
                          ),
                          child: Icon(
                            Icons.wifi_off_sharp,
                            size: 37,
                            color: bookInPalette.highlightedColor,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        DefaultTextStyle(
                          style: bookInTypography.headline3,
                          child: Text(
                            localizations.houstonWeDontSeeYou,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        DefaultTextStyle(
                          style: bookInTypography.label3,
                          child: Text(
                            localizations.problemsWithMobileInternetOrWiFi,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith(
                              (state) => bookInPalette.foregroundColor,
                            ),
                            elevation: MaterialStateProperty.resolveWith(
                              (state) => 0,
                            ),
                            fixedSize: MaterialStateProperty.resolveWith(
                              (state) => Size(
                                275.w,
                                45.h,
                              ),
                            ),
                          ),
                          onPressed: () {
                            AutoRouter.of(context).pop();
                          },
                          child: Text(
                            localizations.close,
                            textAlign: TextAlign.center,
                            style: bookInTypography.headline3,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              transitionBuilder: (context, animation1, animation2, child) {
                return SlideTransition(
                  position: Tween(
                    begin: const Offset(
                      0,
                      1,
                    ),
                    end: const Offset(
                      0,
                      0,
                    ),
                  ).animate(animation1),
                  child: child,
                );
              },
            );
          },
        );
      },
      child: child,
    );
  }
}
