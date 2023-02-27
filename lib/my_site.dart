import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:portafolios/core/configs/connection/bloc/connected_bloc.dart';
import 'package:portafolios/core/configs/connection/network_check.dart';
import 'package:portafolios/core/providers/drawer_provider.dart';
import 'package:portafolios/core/providers/scroll_provider.dart';
import 'package:portafolios/core/theme/app_theme.dart';
import 'package:portafolios/core/theme/cubit/theme_cubit.dart';
import 'package:portafolios/src/presentation/l10n/app_localizations.dart';
import 'package:portafolios/src/presentation/l10n/support_locale.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'src/presentation/l10n/locale_provider.dart';

class MySite extends StatelessWidget {
  const MySite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(create: (_) => ThemeCubit()),
        BlocProvider<ConnectedBloc>(create: (context) => ConnectedBloc()),
      ],
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => DrawerProvider()),
          ChangeNotifierProvider(create: (_) => ScrollProvider()),
        ],
        child: BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
          return Sizer(builder: (context, orientation, deviceType) {
            return ChangeNotifierProvider(
                create: (context) => LocaleProvider(),
                builder: (context, child) {
                  return Consumer<LocaleProvider>(
                      builder: (context, provider, child) {
                    return MaterialApp(
                      localizationsDelegates: const [
                        GlobalMaterialLocalizations.delegate,
                        GlobalWidgetsLocalizations.delegate,
                        GlobalCupertinoLocalizations.delegate,
                      ],
                      locale: provider.locale,
                      supportedLocales: L10n.support,
                      debugShowCheckedModeBanner: false,
                      title: AppLocalizations.of(context).companyName,
                      theme: AppTheme.themeData(state.isDarkThemeOn, context),
                      initialRoute: "/",
                      routes: {"/": (context) => const NChecking()},
                    );
                  });
                }

);
          });
        }),
      ),
    );
  }
}



