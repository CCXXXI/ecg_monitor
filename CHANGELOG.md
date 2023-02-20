# Changelog

## [0.11.1](https://github.com/CCXXXI/ecg_monitor/compare/v0.11.0...v0.11.1) (2023-02-19)

### Bug Fixes

- correct appName on web ([a6c7e2a](https://github.com/CCXXXI/ecg_monitor/commit/a6c7e2a99425c9798696742e12aaeeb69ce423fb))
- more fraction digits for y-axis titles ([c1edba7](https://github.com/CCXXXI/ecg_monitor/commit/c1edba7b1a821fa83fa32ee6c22ce1849170c718))
- more reserved size for y-axis titles ([9767fe4](https://github.com/CCXXXI/ecg_monitor/commit/9767fe4ed5ab41fc81780cfe77bff50a79fbf415))

### Code Refactoring

- dart fix --apply ([9d2a96d](https://github.com/CCXXXI/ecg_monitor/commit/9d2a96d40724517abf0b659ac29a5a9d0e863bb3))

## [0.11.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.10.0...v0.11.0) (2023-02-19)

### ⚠ BREAKING CHANGES

- **device:** correct setting key
- **monitor:** update keys of color settings
- **monitor:** update key of landscapeDuration
- **monitor:** update key of portraitDuration
- **mine:** update key of LoggerLevel
- **device:** update key of CurrentDevice

### Features

- add border for ColorIndicator ([fffc376](https://github.com/CCXXXI/ecg_monitor/commit/fffc376444a82c5a8d74d192e6ab7188844cf6ad))
- better icons for grids ([2bdefe7](https://github.com/CCXXXI/ecg_monitor/commit/2bdefe710173219600c4626a063a2516b607419e))
- dark theme ([dd21d8b](https://github.com/CCXXXI/ecg_monitor/commit/dd21d8b9b9ceae1eb56a6c329bbe3beaceccb643))
- **device:** connect & disconnect ([a8cae1d](https://github.com/CCXXXI/ecg_monitor/commit/a8cae1d41bc515b7bf328377ab18a931688d1462))
- material 3 settings UI ([f955992](https://github.com/CCXXXI/ecg_monitor/commit/f955992d886f6bc1225d96b16416c1665a4e2176))
- **mine:** show snackbar after model testing ([e3b0ed8](https://github.com/CCXXXI/ecg_monitor/commit/e3b0ed8849a10934d7f017bb135d3100c115e1ee))
- **mine:** simplify SnackBar after model test ([84509c4](https://github.com/CCXXXI/ecg_monitor/commit/84509c454623373d3fa7c7a6c26ae6fa16545bd5))
- monitor redirect to device manager if no device ([1a956ec](https://github.com/CCXXXI/ecg_monitor/commit/1a956ec091a133af7fc178e80dfdb001df876492))
- **monitor:** 0.1 mV padding for y-axis ([6e5ed08](https://github.com/CCXXXI/ecg_monitor/commit/6e5ed0877290ba44af8436ce26fa8941c9377161))
- **monitor:** better y-axis ([fd67283](https://github.com/CCXXXI/ecg_monitor/commit/fd6728351b9699358a1b544dda5aa908b90c6f3e))
- **monitor:** hide border ([799a3ff](https://github.com/CCXXXI/ecg_monitor/commit/799a3fff05c3aa859e7c69c8713358009371fe45))
- **monitor:** setting group ([5023d3d](https://github.com/CCXXXI/ecg_monitor/commit/5023d3dae2ce5c3ed8373589f0d3af365d01f03f))
- **monitor:** update lineTypes ([a52f14d](https://github.com/CCXXXI/ecg_monitor/commit/a52f14d25f4fb7457714d5ee1d3a2b2e32eb9f86))
- update lineColor icon ([67ea27c](https://github.com/CCXXXI/ecg_monitor/commit/67ea27c49bd6d7e0352d6af1ce2433261a89a7ec))

### Bug Fixes

- **device:** correct setting key ([6274e27](https://github.com/CCXXXI/ecg_monitor/commit/6274e2739a7f4954cf470e51e933d0772ad2e2d7))
- **monitor:** remove overlapping axis labels ([4f2ec9e](https://github.com/CCXXXI/ecg_monitor/commit/4f2ec9e0bbe0a6d09b04a5c65626f06dd075a702))
- **monitor:** remove overlapping y-axis labels ([1fd78dc](https://github.com/CCXXXI/ecg_monitor/commit/1fd78dcb61299d97d902f5904104f40af8229bf7))

### Tests

- **monitor:** msToTimeString ([6a4ff5d](https://github.com/CCXXXI/ecg_monitor/commit/6a4ff5df155d000c3f4a6c4f201e5c9faec65dc3))

### Miscellaneous Chores

- rerun build_runner ([cb83867](https://github.com/CCXXXI/ecg_monitor/commit/cb83867eb136ccb914ed625257d1e6a0bb331812))

### Build System

- add freezed ([f8a2e32](https://github.com/CCXXXI/ecg_monitor/commit/f8a2e325d21186731baf3bfd93ed3f6c2ece0fad))
- flutter pub remove settings_ui ([ec8f88c](https://github.com/CCXXXI/ecg_monitor/commit/ec8f88c52d9d9f59091c7b46e1e6e7f6b8121698))
- flutter pub upgrade ([ae25802](https://github.com/CCXXXI/ecg_monitor/commit/ae25802faa5ad13e6578f6d6143b78111c13abd4))

### Code Refactoring

- clean up strings ([6812d51](https://github.com/CCXXXI/ecg_monitor/commit/6812d51ec241f6ae0691d922e0dcae0c84b8d886))
- **device:** make private ([ed506e3](https://github.com/CCXXXI/ecg_monitor/commit/ed506e3bd70fb468b742d8dbe3eb72509dcebae0))
- **device:** more device infos ([aaafa3a](https://github.com/CCXXXI/ecg_monitor/commit/aaafa3a21b183586c5cb53cfa3ef9473da77b15f))
- **device:** simplify fake device ([b132691](https://github.com/CCXXXI/ecg_monitor/commit/b132691f273b96bf40f0d92361b51a0133e7303e))
- **device:** update key of CurrentDevice ([132f18a](https://github.com/CCXXXI/ecg_monitor/commit/132f18a08d52c4a4c354d2e88651f67f5b05e585))
- **mine:** make lineTypeSegments private ([969ef9b](https://github.com/CCXXXI/ecg_monitor/commit/969ef9b712383f6e12894c0535e244258ae95450))
- **mine:** make LoggerLevelIndex private ([af75155](https://github.com/CCXXXI/ecg_monitor/commit/af75155352daf9ea00da692fac0d9e7d0e255b04))
- **mine:** update key of LoggerLevel ([23235c9](https://github.com/CCXXXI/ecg_monitor/commit/23235c97184ff1f402a4c913141ffdc7f0111cde))
- **monitor:** combine settings ([5c458dd](https://github.com/CCXXXI/ecg_monitor/commit/5c458dd69fbafd834af295806b3c47179e65acc1))
- **monitor:** inline \_getTimeAxisTitles & rename to xTitles ([87f82d0](https://github.com/CCXXXI/ecg_monitor/commit/87f82d062273f69cfed027d65ccbe686a822038c))
- **monitor:** inline intervals ([5ff6fef](https://github.com/CCXXXI/ecg_monitor/commit/5ff6fef9914b9ec017a62e93f9fa7111b70e30a5))
- **monitor:** inlines ([0fca687](https://github.com/CCXXXI/ecg_monitor/commit/0fca68727365bb793ff6e285f00f364d1e905798))
- **monitor:** update color types ([9cb2181](https://github.com/CCXXXI/ecg_monitor/commit/9cb218198d791fd4dc92583d53b90fec59465d36))
- **monitor:** update key of landscapeDuration ([412f608](https://github.com/CCXXXI/ecg_monitor/commit/412f6088889e843b19a89646352d86f8722cbccf))
- **monitor:** update key of portraitDuration ([5d3427c](https://github.com/CCXXXI/ecg_monitor/commit/5d3427cae5c610eb51c5827186218783bf10936c))
- **monitor:** update keys of color settings ([271e28c](https://github.com/CCXXXI/ecg_monitor/commit/271e28c1b29aa8a7be0479ae1d1365e8aa7b09c3))
- **monitor:** update param names ([fe20005](https://github.com/CCXXXI/ecg_monitor/commit/fe20005b00e671aaf190d3424379b5614c064338))
- remove unnecessary paratheses ([d0f619a](https://github.com/CCXXXI/ecg_monitor/commit/d0f619a919cc1a76b605f62e3ace93b3a0ef64c8))
- rename bool providers ([c1b34e6](https://github.com/CCXXXI/ecg_monitor/commit/c1b34e693f9a03816516769c6017bced16cec65f))
- reorder classes ([f93a45b](https://github.com/CCXXXI/ecg_monitor/commit/f93a45b2c965ff06333548dda1e5149b16df863b))

### Documentation

- improve docstring ([829eb69](https://github.com/CCXXXI/ecg_monitor/commit/829eb6947b8da8eb51a2485134c6062379f06d68))

### Continuous Integration

- bump-minor-pre-major: true ([b10e85c](https://github.com/CCXXXI/ecg_monitor/commit/b10e85c32c6421d0fb1da85ae8bc60c99b09e408))
- disable styler for "\*\*/generated_plugin_registrant.cc" ([e494c4d](https://github.com/CCXXXI/ecg_monitor/commit/e494c4d4985f2f3aacc52f99b64ca7d710ab4c2e))

## [0.10.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.9.1...v0.10.0) (2023-02-18)

### Features

- init sentry ([d593b35](https://github.com/CCXXXI/ecg_monitor/commit/d593b35af759656cc1da8c8ab567d275756ba3d3))
- LoggingIntegration ([9754ad2](https://github.com/CCXXXI/ecg_monitor/commit/9754ad246699480644eae44de65cabf70bc70934))
- sentry record ip ([49d6efb](https://github.com/CCXXXI/ecg_monitor/commit/49d6efbd8cc84e0054174339d9dec80885fc3989))
- SentryNavigatorObserver ([070a1b8](https://github.com/CCXXXI/ecg_monitor/commit/070a1b888586b4e504e504f63006fa49d5624ddb))
- SentryScreenshotWidget ([37c46fa](https://github.com/CCXXXI/ecg_monitor/commit/37c46fafe6229f3e36e0b491576b4deaa3cb60ef))

### Bug Fixes

- add android.permission.INTERNET ([9a8c9f1](https://github.com/CCXXXI/ecg_monitor/commit/9a8c9f164b052b8259f17a08d86efc1ea574f2c9))

### Continuous Integration

- enable all lints ([6fc862a](https://github.com/CCXXXI/ecg_monitor/commit/6fc862a298c914ff9cc6896291aa698cdc482db1))
- enable stricter type checks ([18b14f7](https://github.com/CCXXXI/ecg_monitor/commit/18b14f7782a6766a1ae71d63ba3355df100435d5))
- remove always_specify_types ([2136a40](https://github.com/CCXXXI/ecg_monitor/commit/2136a40d3970bfb68945e40a4c21014abcf1a89e))
- remove always_use_package_imports ([1640708](https://github.com/CCXXXI/ecg_monitor/commit/1640708a9f3ceaf94f50198672ce9239ba644bcc))
- remove deprecated lints ([4c2c345](https://github.com/CCXXXI/ecg_monitor/commit/4c2c345628e135fe3608fa780ef6a93c4dfac0cd))
- remove invalid_case_patterns ([6ff7a56](https://github.com/CCXXXI/ecg_monitor/commit/6ff7a56ba36ab721420e4d0a683d745782c91bda))
- remove prefer_final_parameters ([4837722](https://github.com/CCXXXI/ecg_monitor/commit/4837722a25c343c4e5359d74bd3ff19dea9e5892))
- remove prefer_single_quotes ([fffac7b](https://github.com/CCXXXI/ecg_monitor/commit/fffac7be29cf745068140ec753080ac1609b26fc))
- remove public_member_api_docs ([f9d5e3e](https://github.com/CCXXXI/ecg_monitor/commit/f9d5e3ec273c239df59c02e23046220328bc8af7))
- remove unnecessary_breaks ([caedb2a](https://github.com/CCXXXI/ecg_monitor/commit/caedb2a0c2edcf5f18f2a24e09562cdc041b5e86))
- remove unnecessary_final ([6c36382](https://github.com/CCXXXI/ecg_monitor/commit/6c3638286f24b8a99f86744604dc06c84095317d))
- reorder needs & if ([947eede](https://github.com/CCXXXI/ecg_monitor/commit/947eedef2325b16e071bf75ac66505709bb4a32f))
- simplify lints with all_lint_rules_community ([bf5925d](https://github.com/CCXXXI/ecg_monitor/commit/bf5925d467e5314fe75e139a291af1a473d57ef4))

### Code Refactoring

- dart fix --apply ([cd2fbd7](https://github.com/CCXXXI/ecg_monitor/commit/cd2fbd71c8cf06dd70eec120d59750306cd55d7f))
- fix avoid_classes_with_only_static_members ([ad4194e](https://github.com/CCXXXI/ecg_monitor/commit/ad4194e9b967f76e1cbb7986c215a207a0f33dc4))
- fix avoid_positional_boolean_parameters ([eda12cf](https://github.com/CCXXXI/ecg_monitor/commit/eda12cfd1feec09fad7651712d16e63d0a9ee3a1))
- fix cascade_invocations ([db2a942](https://github.com/CCXXXI/ecg_monitor/commit/db2a9428d0034837a22b1dac2a78fd24c2c7eb94))
- fix dangling_library_doc_comments ([4569cd5](https://github.com/CCXXXI/ecg_monitor/commit/4569cd5ffb89a45f8b1d2e3c0f3c9b5f5b45e88b))
- fix discarded_futures & unawaited_futures ([0ef497e](https://github.com/CCXXXI/ecg_monitor/commit/0ef497e03a0dc209325abfd5947a477e18e682a9))
- fix omit_local_variable_types ([702008c](https://github.com/CCXXXI/ecg_monitor/commit/702008c110004423f2bd9be3185d7f11d99a381b))
- fix sort_pub_dependencies ([3db11c7](https://github.com/CCXXXI/ecg_monitor/commit/3db11c7148a036d4e500ebb3aba34d0145cc98f5))
- move ProviderScope to App ([e4febf9](https://github.com/CCXXXI/ecg_monitor/commit/e4febf9b697bbbb43ad0464b374a3fce7e9fc708))
- omit types ([b5c43e5](https://github.com/CCXXXI/ecg_monitor/commit/b5c43e56dfe086feb941c868c9b1d1168c3ccf1f))

### Build System

- flutter pub add dev:all_lint_rules_community ([9941b9a](https://github.com/CCXXXI/ecg_monitor/commit/9941b9a79d3114f890a6f1ae349a65c1fa1e3426))
- flutter pub add sentry_flutter ([d849a8d](https://github.com/CCXXXI/ecg_monitor/commit/d849a8d159430d0ad911319d93968b752f74d86a))
- flutter pub add sentry_logging ([d65609c](https://github.com/CCXXXI/ecg_monitor/commit/d65609c8f60ae699bb2344fdf0190886f254b662))
- flutter pub remove flutter_lints ([e527727](https://github.com/CCXXXI/ecg_monitor/commit/e5277278156ff9a22d8a756baa6b577e67666088))
- sdk: "&gt;=2.19.0 &lt;3.0.0" ([b920767](https://github.com/CCXXXI/ecg_monitor/commit/b9207674041399a14880431b76876b75c821267a))

### Styles

- reformat by astyle ([ae1ce4b](https://github.com/CCXXXI/ecg_monitor/commit/ae1ce4b676fe165a58a8c476d00fc766708d65c6))

## [0.9.1](https://github.com/CCXXXI/ecg_monitor/compare/v0.9.0...v0.9.1) (2023-02-18)

### Continuous Integration

- permissions for release-web only ([fe90208](https://github.com/CCXXXI/ecg_monitor/commit/fe90208e33bce06e8660cb60bc6eadc8ac7551c3))

## [0.9.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.8.1...v0.9.0) (2023-02-17)

### Features

- **analytics:** model_stub for web ([419c374](https://github.com/CCXXXI/ecg_monitor/commit/419c3748a5b0a152e923ceea64677093db2d4ce2))
- **analytics:** Placeholder ([6803231](https://github.com/CCXXXI/ecg_monitor/commit/68032312732522d0d98b52b8f7d962c0041cbc3c))
- **mine:** changelog in about ([b945a10](https://github.com/CCXXXI/ecg_monitor/commit/b945a100132e946a8847af7b430482c0d005a7d8))
- **mine:** feedback ([bf27d18](https://github.com/CCXXXI/ecg_monitor/commit/bf27d189d4fb8e99ccce96aa8a4115b1d1f1f0b5))
- update AboutListTile ([8220546](https://github.com/CCXXXI/ecg_monitor/commit/8220546fb7778380b63d9d189b88e04abfb1165b))

### Reverts

- Revert "fix: update base href" ([31143df](https://github.com/CCXXXI/ecg_monitor/commit/31143df37cd9a4241cc338b4373aaad1dec3a653))

### Tests

- update constants test ([77a8f22](https://github.com/CCXXXI/ecg_monitor/commit/77a8f22adf714d467653cb66ccea2b76fb250e07))

### Miscellaneous Chores

- update app icon ([600755a](https://github.com/CCXXXI/ecg_monitor/commit/600755a6544acf0a0374dffe707174a168934568))
- update app icon again ([138beed](https://github.com/CCXXXI/ecg_monitor/commit/138beeda6bd00bd9f9eb9b44e2744f3721579e8a))
- update app icon, again ([ef06eca](https://github.com/CCXXXI/ecg_monitor/commit/ef06eca536f5bbb2bbbd626fdf7ab6dac21d49b2))

### Build System

- flutter pub add --dev build_web_compilers ([ec67f32](https://github.com/CCXXXI/ecg_monitor/commit/ec67f3245489e305719992bffbc37a6477db9e99))
- flutter pub add --dev flutter_launcher_icons ([eb3d4d5](https://github.com/CCXXXI/ecg_monitor/commit/eb3d4d514f1aaad5229a6191241c8a11808ae3b1))
- flutter pub add --dev flutter_native_splash ([f736880](https://github.com/CCXXXI/ecg_monitor/commit/f736880a68d0caf3bc9c5c8e1188d596f92f0773))
- flutter pub add flutter_markdown ([d6ec7c3](https://github.com/CCXXXI/ecg_monitor/commit/d6ec7c362838a668c4182b5a32c2e6cc3261ffba))
- flutter pub add url_launcher ([b967819](https://github.com/CCXXXI/ecg_monitor/commit/b967819faf38ede2daed9c62d2018b437200fbe8))
- flutter pub remove flutter_native_splash ([0aabf33](https://github.com/CCXXXI/ecg_monitor/commit/0aabf339695ce2836f2432c53851c19cc6e18f79))

### Continuous Integration

- **build:** add permissions for deploy-pages ([0fb1a4f](https://github.com/CCXXXI/ecg_monitor/commit/0fb1a4f51a048b88aeadd9344c15f622915e80de))
- **build:** build web ([817520b](https://github.com/CCXXXI/ecg_monitor/commit/817520b8708c4c03697198fda85d8ab0720faf80))
- **build:** release artifacts ([c80cef0](https://github.com/CCXXXI/ecg_monitor/commit/c80cef0e4fdb158ebc92c945a7cced59b66e8ab2))
- **build:** release-web ([e5f42f8](https://github.com/CCXXXI/ecg_monitor/commit/e5f42f8322e936adc515fc8fdffeee54d3d2aef7))
- **build:** set base-href ([87cf500](https://github.com/CCXXXI/ecg_monitor/commit/87cf500ee46d4cf06bfee1e0d50e765fe3723f10))
- cache: true ([e0cf1d8](https://github.com/CCXXXI/ecg_monitor/commit/e0cf1d864f5344279028da5b3282942d6432a58a))

### Documentation

- remove todos ([d9383b5](https://github.com/CCXXXI/ecg_monitor/commit/d9383b5830de77d55f3b59c418329295db4ce5a2))

### Styles

- dart fix --apply ([2c467ec](https://github.com/CCXXXI/ecg_monitor/commit/2c467ec60130fd755021f3ffa20aeb874f96901e))
- reformat by astyle ([4cf2b55](https://github.com/CCXXXI/ecg_monitor/commit/4cf2b55c6da4f4c53b4f42cca91e0a445221b028))
- restyle by bot ([cfbd3b5](https://github.com/CCXXXI/ecg_monitor/commit/cfbd3b5969d5bccbda335fed4455484bca4efb58))

## [0.8.1](https://github.com/CCXXXI/ecg_monitor/compare/v0.8.0...v0.8.1) (2023-02-16)

### Documentation

- add todos ([8e670bf](https://github.com/CCXXXI/ecg_monitor/commit/8e670bf5173e2baa52c2c18a53a4fe34efe56454))

### Styles

- restyle release.yml ([d69a8b6](https://github.com/CCXXXI/ecg_monitor/commit/d69a8b6d1d5346b717807c9062db984cc8e75858))

### Miscellaneous Chores

- add build_runner files to git ([7255665](https://github.com/CCXXXI/ecg_monitor/commit/7255665fed3e90cc8740dcab38a655043a06625b))
- apply gitignore ([0fa40db](https://github.com/CCXXXI/ecg_monitor/commit/0fa40db6ab67295a04ebd73a36cac02bc204bc3f))
- gitignore generated files ([3b7103e](https://github.com/CCXXXI/ecg_monitor/commit/3b7103e45cd4df97f1ffa4526cee7d023469e80b))

### Build System

- downgrade gradle distribution ([ce9e73b](https://github.com/CCXXXI/ecg_monitor/commit/ce9e73b812c8a949484b5b95039214bdf0bdf7ad))
- flutter pub add cupertino_icons ([05ab0e8](https://github.com/CCXXXI/ecg_monitor/commit/05ab0e8aa4d32b84e9c1f9ee3d416e9522a215f3))
- flutter pub upgrade ([da81f22](https://github.com/CCXXXI/ecg_monitor/commit/da81f22e56b3547685712ef392884a554eca26e9))
- tasks.preBuild.dependsOn(extractAARForNativeBuild) ([3f9e5ba](https://github.com/CCXXXI/ecg_monitor/commit/3f9e5ba9f9ef30bc0ed6f40e615d1280b310dab8))

### Continuous Integration

- add Gradle Build Action ([020cb33](https://github.com/CCXXXI/ecg_monitor/commit/020cb33b179cb4d637b176968c1460da0cbd785e))
- arguments for Gradle Build Action ([e9baf7a](https://github.com/CCXXXI/ecg_monitor/commit/e9baf7a1280db37ec7b161ab42bbea6b5bc0004d))
- **build:** apk & appbundle ([2783442](https://github.com/CCXXXI/ecg_monitor/commit/27834424f7a7707c09965205552250b3300fd975))
- **build:** submodules: recursive ([4143982](https://github.com/CCXXXI/ecg_monitor/commit/4143982c5953ad10ed4e2fd9d35fb36bfd9df731))
- **check:** dependency_validator ignore cupertino_icons ([5401137](https://github.com/CCXXXI/ecg_monitor/commit/5401137c592ed03bb62980eb9aa98846d7eb4750))
- **check:** flutter pub run build_runner build ([3cbaad7](https://github.com/CCXXXI/ecg_monitor/commit/3cbaad7bf82087fe42932600bf8de85a8aaa3844))
- chmod +x android/gradlew ([d690b20](https://github.com/CCXXXI/ecg_monitor/commit/d690b20a02b9756606ec5f6426673cc2d5ce9489))
- continue-on-error ([0d1da95](https://github.com/CCXXXI/ecg_monitor/commit/0d1da95d6fd0e9297989447da58356d63da09977))
- correct action directory ([c134b21](https://github.com/CCXXXI/ecg_monitor/commit/c134b21504c7d00fa991f146faaa0201581a64b0))
- extract setup-flutter ([4439848](https://github.com/CCXXXI/ecg_monitor/commit/443984802d5821f4c56ca6f84ea046d98e35748a))
- gradle wrapper ([99dd90f](https://github.com/CCXXXI/ecg_monitor/commit/99dd90fa970666626708e5002d40c1fabe2ecb76))
- ls ([1a5d045](https://github.com/CCXXXI/ecg_monitor/commit/1a5d04551dc75c62f97238a45c7dfdd1d7d4917c))
- no need for package-name ([bb0a17d](https://github.com/CCXXXI/ecg_monitor/commit/bb0a17d4e800bc2a9961a727ac68325ae9be7857))
- no need to run build_runner ([691ff2e](https://github.com/CCXXXI/ecg_monitor/commit/691ff2e49c3aada3b283f0823d7598d035985a3d))
- simplify setup-android ([3c18861](https://github.com/CCXXXI/ecg_monitor/commit/3c18861f2b3109fdd1312fecaf7c14beb3012a45))

## [0.8.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.7.0...v0.8.0) (2023-02-15)

### Features

- **monitor:** grids settings ([8f557d3](https://github.com/CCXXXI/ecg_monitor/commit/8f557d35b0c6e51c1aa58d1bb38659d6e0f3f1f7))
- move showDots setting to devtools ([e17adba](https://github.com/CCXXXI/ecg_monitor/commit/e17adba347f59233924e88d582cb6e09d2a1ec52))
- outlined icons ([2a9ad4d](https://github.com/CCXXXI/ecg_monitor/commit/2a9ad4dfdd5a9c3e19fd06f2bc4c68809a619477))

### Code Refactoring

- **monitor:** simplify float literal ([4e4dc32](https://github.com/CCXXXI/ecg_monitor/commit/4e4dc3232b251f711e7e05a6bb3ee28e2cc25f59))
- **monitor:** visibleForTesting ([a72e5bc](https://github.com/CCXXXI/ecg_monitor/commit/a72e5bc9265b6dedaccc51671bd3baf923421504))
- static ([824491c](https://github.com/CCXXXI/ecg_monitor/commit/824491cce591602cb87934679596da2afe70f4f7))

## [0.7.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.6.0...v0.7.0) (2023-02-13)

### Features

- **mine:** better color picker ([603ba77](https://github.com/CCXXXI/ecg_monitor/commit/603ba77b3d41ee76de524cca505f3063550e3d10))
- **monitor:** background color ([4fac4df](https://github.com/CCXXXI/ecg_monitor/commit/4fac4df8fe10420ac8c713a232729f6b9ee2bf75))
- **monitor:** correct grids interval ([d32b1ee](https://github.com/CCXXXI/ecg_monitor/commit/d32b1ee92aad8c003bcfbf000646f0f9418d85ed))
- **monitor:** line color ([ecd133c](https://github.com/CCXXXI/ecg_monitor/commit/ecd133c742a7d4336a2f7d2659345a3db87cc328))
- **monitor:** show dots ([7b926ae](https://github.com/CCXXXI/ecg_monitor/commit/7b926aedc07daefaf380d7d8e21871013480b29a))
- **monitor:** show grids ([bae9322](https://github.com/CCXXXI/ecg_monitor/commit/bae932285d8a7cdc639a677fb3c8326d12130c51))
- **monitor:** vertical mode: more infos & adaptive y-axis ([27fe20c](https://github.com/CCXXXI/ecg_monitor/commit/27fe20c6fa3af77e7c267e215f853795c84dfd02))
- new logger ([d784765](https://github.com/CCXXXI/ecg_monitor/commit/d784765ac50a1f1e764e5f4ba8bddf0a32ef390b))

### Bug Fixes

- parentNavigatorKey ([4afe6d5](https://github.com/CCXXXI/ecg_monitor/commit/4afe6d57108aaae21f37f064a645d16b0bbf42b6))

### Performance Improvements

- **monitor:** clip data source ([4b75f94](https://github.com/CCXXXI/ecg_monitor/commit/4b75f94311176be999add26df06ab93b9a7b7e27))
- **monitor:** reuse titles widget ([dc9cdf2](https://github.com/CCXXXI/ecg_monitor/commit/dc9cdf2cef850cb43bdc9f83c4379afb39396658))

### Code Refactoring

- extends to implements ([5e4bf27](https://github.com/CCXXXI/ecg_monitor/commit/5e4bf27c0b9f9580b98fc20fb994c64b9e9dcea9))
- **home:** simplify index ([8841373](https://github.com/CCXXXI/ecg_monitor/commit/88413739d237f50be49bd57ca4b0146f1eb72297))
- **monitor:** Chart in Monitor ([2ff5dfd](https://github.com/CCXXXI/ecg_monitor/commit/2ff5dfdb7b37670d752127fb822aba36030bd960))
- **monitor:** Duration.zero ([51bdf2d](https://github.com/CCXXXI/ecg_monitor/commit/51bdf2d7dcc89b89f7c4f489b9c1c3a1d75276bb))
- **monitor:** make points private ([0264fe3](https://github.com/CCXXXI/ecg_monitor/commit/0264fe3b569f7277c5889045f43254a0f7bdb7c5))
- **monitor:** move monitor to subfolder ([eb23fb6](https://github.com/CCXXXI/ecg_monitor/commit/eb23fb6c6763d6f50b71d6065390dc0a43f2810a))
- **monitor:** null as default value instead of 0 ([75c116e](https://github.com/CCXXXI/ecg_monitor/commit/75c116eed90dc3c9b1a0aaab8d8b88cc383b9f6d))
- **monitor:** rename to chart ([6b68f43](https://github.com/CCXXXI/ecg_monitor/commit/6b68f43bebbcb63a4a76e386decfe363bfb7293d))
- move router to utils/ ([525d3e3](https://github.com/CCXXXI/ecg_monitor/commit/525d3e32ffdf83310771b62b27778ee796f86571))
- remove View suffix ([95a1d9c](https://github.com/CCXXXI/ecg_monitor/commit/95a1d9c7be9ece8f565428b403caa44ac881a658))
- ShellRoute ([fbabb23](https://github.com/CCXXXI/ecg_monitor/commit/fbabb234a6abc582cda479213d9ae6c2d38b18a9))

### Build System

- flutter pub add logging ([338898f](https://github.com/CCXXXI/ecg_monitor/commit/338898f12cef49278797f0e04100faf9905972d7))
- flutter pub remove logger_flutter_plus ([9f946cf](https://github.com/CCXXXI/ecg_monitor/commit/9f946cf8669ed311a33fc8cfb65192ae5de9f426))
- flutter pub upgrade ([0ea942d](https://github.com/CCXXXI/ecg_monitor/commit/0ea942d083a67a88e802c8fb970fbda17dc555f4))
- **monitor:** flutter pub add flex_color_picker ([03f0b87](https://github.com/CCXXXI/ecg_monitor/commit/03f0b87799161611a4b0d752164e2390016dca3b))
- rerun build_runner ([3beabb7](https://github.com/CCXXXI/ecg_monitor/commit/3beabb782b706e4c29529a9bef673aa319a2448c))

## [0.6.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.5.0...v0.6.0) (2023-02-09)

### Features

- **mine:** add auto-upload setting ([4579fe6](https://github.com/CCXXXI/ecg_monitor/commit/4579fe60f326d4f30523c05965bfa6f9fe717b32))
- **monitor:** dynamic interval ([c443ead](https://github.com/CCXXXI/ecg_monitor/commit/c443ead459d50b6b591910f8257d76cceedcc0bf))
- **monitor:** time as SideTitleWidget ([89c0c7b](https://github.com/CCXXXI/ecg_monitor/commit/89c0c7b90d402ddeb5fd87f97a480cc2383bb804))

### Build System

- flutter pub remove freezed_annotation freezed ([be22aee](https://github.com/CCXXXI/ecg_monitor/commit/be22aee1077ed9af77a45d924505266c8ce9aada))

### Code Refactoring

- **mine:** split setting providers ([8a8e8b5](https://github.com/CCXXXI/ecg_monitor/commit/8a8e8b52a0b553e72c2a868737e3cc6b0a8fec8e))
- **monitor:** getIntervalMs ([b8ea0c4](https://github.com/CCXXXI/ecg_monitor/commit/b8ea0c483b0343480a5a7b510fbaadb2f42f94bc))
- remove useless code ([69ef2a2](https://github.com/CCXXXI/ecg_monitor/commit/69ef2a21226c93f5b55e89be27d2a717a51f096d))

### Tests

- **monitor:** getIntervalMs ([c624804](https://github.com/CCXXXI/ecg_monitor/commit/c624804c83db3e95504d2bfb55eb307005e95602))

## [0.5.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.4.0...v0.5.0) (2023-02-07)

### Features

- Column to ListView ([0f13193](https://github.com/CCXXXI/ecg_monitor/commit/0f13193007ee48d28374e6dd21fa1659953261b7))
- device infos ([1bef541](https://github.com/CCXXXI/ecg_monitor/commit/1bef541cf6d7c682834b6ec0d34d49dcec71f8e2))
- **device:** fake device ([5957a31](https://github.com/CCXXXI/ecg_monitor/commit/5957a31142fb72719ac146216b61fa3269d97502))
- **mine:** better slider labels ([60ede45](https://github.com/CCXXXI/ecg_monitor/commit/60ede454543319227575c0fc2ecb646c39187ead))
- **mine:** fake device setting ([f4eb65d](https://github.com/CCXXXI/ecg_monitor/commit/f4eb65d3c9213460acc68a79063c76d0377b8d27))
- **mine:** isThreeLine for ListTile ([f8188de](https://github.com/CCXXXI/ecg_monitor/commit/f8188deb256397b21b141197504fe41c2aa2d76a))
- **monitor:** better y axis in landscape ([fcbe072](https://github.com/CCXXXI/ecg_monitor/commit/fcbe0726a9ccda6ad6e830da376a067de1a728b2))
- **monitor:** duration settings ([8ffa1ec](https://github.com/CCXXXI/ecg_monitor/commit/8ffa1ec8bd2c07cd3da23db794c86da55cb8367e))
- **monitor:** TimeAxisTitles ([45ceed4](https://github.com/CCXXXI/ecg_monitor/commit/45ceed4c9649bc0f3d566713c3606ef8131428d9))

### Build System

- add freezed ([d70ea8a](https://github.com/CCXXXI/ecg_monitor/commit/d70ea8ac32f02a4ddd637cddcf545792529877c9))
- flutter pub add quiver ([075b424](https://github.com/CCXXXI/ecg_monitor/commit/075b424bbc00bf45e550a74508551beca91e2f9f))
- flutter pub add shared_preferences ([773c3bd](https://github.com/CCXXXI/ecg_monitor/commit/773c3bd664625fa1e00090fc7f46a4cd4ecb1427))
- flutter pub upgrade ([fd88d21](https://github.com/CCXXXI/ecg_monitor/commit/fd88d210d94ed4a7c7e6eebe14cdd88566f9b329))

### Code Refactoring

- **home:** rename params ([81d875a](https://github.com/CCXXXI/ecg_monitor/commit/81d875ac124f777f218b5d065937f6f69b9e8a2d))
- **model:** simplify type annotation ([6e2d74e](https://github.com/CCXXXI/ecg_monitor/commit/6e2d74e4a28fe6ff2e9f01fc1186f29ad2d1ab2f))
- rename ([1084dc6](https://github.com/CCXXXI/ecg_monitor/commit/1084dc63751835e2e3c21416664067475a694f68))
- rename & move device.dart ([ba3d24f](https://github.com/CCXXXI/ecg_monitor/commit/ba3d24f9acdf599409b3c79fb662cc47eb51099d))
- rename models ([ddf03fc](https://github.com/CCXXXI/ecg_monitor/commit/ddf03fc9541e145d7cf4a52ed6da2cca91c5715c))
- shared preferences ([37548fb](https://github.com/CCXXXI/ecg_monitor/commit/37548fb4242c2d699f4cb0d14c7db0b086b69468))
- simplify ref.read ([2a7cbf4](https://github.com/CCXXXI/ecg_monitor/commit/2a7cbf4ffe8dba9aca944ef525c92475d8f474ee))

### Tests

- license string test ([c77ddaa](https://github.com/CCXXXI/ecg_monitor/commit/c77ddaad0281f04e0578c43cdde546d552122a36))

## [0.4.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.3.0...v0.4.0) (2023-01-31)

### Features

- basic monitor ([ce7fcef](https://github.com/CCXXXI/ecg_monitor/commit/ce7fcef659f8ac60d219b2fcffb3327372998b83))
- better monitor style ([219c54d](https://github.com/CCXXXI/ecg_monitor/commit/219c54deef3675994431bf1e14f819ffd5425001))
- **mine:** AboutListTile ([6c46e11](https://github.com/CCXXXI/ecg_monitor/commit/6c46e11599d2e86fdf39dd6f8a09685659de4f68))
- **monitor:** interval: 1 ([ad6bc7f](https://github.com/CCXXXI/ecg_monitor/commit/ad6bc7fac3e38543b2c1443be8a58f9016424777))
- **monitor:** roll right to left at beginning ([2c71348](https://github.com/CCXXXI/ecg_monitor/commit/2c713483942a60cd2076f2c3bd366177290844de))

### Bug Fixes

- **deps:** update dependency com.android.tools.build:gradle to v7.4.1 ([44b1d23](https://github.com/CCXXXI/ecg_monitor/commit/44b1d231eb5caac46c82b4339ffaa55e4f013a8a))
- **deps:** update dependency org.pytorch:pytorch_android to v1.13.0 ([c8b67af](https://github.com/CCXXXI/ecg_monitor/commit/c8b67af668963116a6958187ddd77a4f92032a1d))
- **deps:** update kotlin monorepo to v1.8.10 ([56c0bac](https://github.com/CCXXXI/ecg_monitor/commit/56c0bac41ef060eb069f3a0891c6fb597cbf7d8d))
- **monitor:** clear monitor while route changing ([be830fe](https://github.com/CCXXXI/ecg_monitor/commit/be830fe426614bfeceb58854a5b9d80280b1929d))

### Performance Improvements

- improve monitor performance ([4dbf91e](https://github.com/CCXXXI/ecg_monitor/commit/4dbf91ef01616d52a4b0a62fbbb066e819680bff))

### Code Refactoring

- make AppOutput private ([17585e3](https://github.com/CCXXXI/ecg_monitor/commit/17585e393f65f9256d3de2267cd82403efb7763b))
- reorder args ([5bb1d62](https://github.com/CCXXXI/ecg_monitor/commit/5bb1d6294f6bb670de7cd1b5a8e57bfa9ade5c2b))

### Build System

- flutter pub add fl_chart ([74f5f95](https://github.com/CCXXXI/ecg_monitor/commit/74f5f958bf0e79270665c6553c073dbc13cda356))
- flutter pub add package_info_plus ([1ccdf51](https://github.com/CCXXXI/ecg_monitor/commit/1ccdf51272fe61f0a4edd76e9d56791f5e99e39d))

### Miscellaneous Chores

- **deps:** update dependency gradle to v8 ([0142e39](https://github.com/CCXXXI/ecg_monitor/commit/0142e398050c278098ab34b2fb993128fe89a6eb))

## [0.3.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.2.0...v0.3.0) (2023-01-31)

### Features

- **home:** NavigationBar instead of SalomonBottomBar ([5559503](https://github.com/CCXXXI/ecg_monitor/commit/555950360d2c3a5a5dbb79d7b5ddca9c0f50d9d6))
- log ([51db36f](https://github.com/CCXXXI/ecg_monitor/commit/51db36ff89b6f639a7998ce9500320c64b1350a4))
- logging system ([fcf5a3c](https://github.com/CCXXXI/ecg_monitor/commit/fcf5a3c2cbbc3f2f8ab36660fa4544219583ab0f))
- **mine:** SettingsView ([19f1263](https://github.com/CCXXXI/ecg_monitor/commit/19f1263f0325ed16d838f1e075690b7d5b112348))
- model test ([fa8dc7c](https://github.com/CCXXXI/ecg_monitor/commit/fa8dc7c945f71b56f23867076b1fa4d03b33cc75))
- use material 3 UI design ([5ac628f](https://github.com/CCXXXI/ecg_monitor/commit/5ac628fa494c3daca3f7d4dbcc2c962e096217d7))

### Bug Fixes

- **deps:** update dependency com.android.tools.build:gradle to v7.4.0 ([f65a9cc](https://github.com/CCXXXI/ecg_monitor/commit/f65a9cc4fbf1d41f3deafd4870c60df39a550ba4))

### Miscellaneous Chores

- add debug assets ([e4e6508](https://github.com/CCXXXI/ecg_monitor/commit/e4e6508a99242f11997630e4566e65ea6653d905))
- add model as asset ([fc4d37a](https://github.com/CCXXXI/ecg_monitor/commit/fc4d37a2ed8250bbb1207fbf08f9eb2a71c07d42))
- add model as submodule ([0980ecf](https://github.com/CCXXXI/ecg_monitor/commit/0980ecf392d27c95f037ca3ea89222c765cdd5fd))
- update android gitignore ([58d38c4](https://github.com/CCXXXI/ecg_monitor/commit/58d38c494e8760997b10c76b7d464969f1f5b796))
- update submodule ([98e6a6b](https://github.com/CCXXXI/ecg_monitor/commit/98e6a6b4ff1c0e7342bfedebdcc9b0e90d74a508))
- update submodule ([7642272](https://github.com/CCXXXI/ecg_monitor/commit/7642272dde5bc5e88aba5fba5ff82781aa341ff4))
- update submodule ([a0daaf7](https://github.com/CCXXXI/ecg_monitor/commit/a0daaf756085e747a90e687a2ebfdb5d619f0640))

### Code Refactoring

- **analytics:** rename analysis to analytics ([c29cc4e](https://github.com/CCXXXI/ecg_monitor/commit/c29cc4e7f510d8d4b11588b9d4bf3ac74bb4acf3))
- **home:** inline pages ([7c3fc33](https://github.com/CCXXXI/ecg_monitor/commit/7c3fc331cb852cdd82d4ce59261f76313e227701))
- implement forward ([f1118ba](https://github.com/CCXXXI/ecg_monitor/commit/f1118ba94668594d32811aa893f43777a6e8eb48))
- load model ([a7e299b](https://github.com/CCXXXI/ecg_monitor/commit/a7e299beff58d4bb0dd214c71d5817c9d39a12e0))

### Styles

- {super.key} ([167d84b](https://github.com/CCXXXI/ecg_monitor/commit/167d84b824c5e9188416388040457197f2c707f5))

### Build System

- build cpp for android ([ed1f0e1](https://github.com/CCXXXI/ecg_monitor/commit/ed1f0e1753f07dd19a279d3dbb2e1b052fbc6ec3))
- disable sanitizer ([8bbf5fd](https://github.com/CCXXXI/ecg_monitor/commit/8bbf5fdaed86c890e10fe80d48450cfe3ea56ffa))
- fix linker error ([80cf641](https://github.com/CCXXXI/ecg_monitor/commit/80cf641eba4fd5286d27084e86fe8c2db99d05ab))
- flutter pub add ffi ([5f51a5e](https://github.com/CCXXXI/ecg_monitor/commit/5f51a5ec5515fb200473cb56ac55ccb354e5429c))
- flutter pub add go_router ([4ae2ca2](https://github.com/CCXXXI/ecg_monitor/commit/4ae2ca25727584f26f8bb15b9032dda08e9c45ec))
- flutter pub add logger logger_flutter_plus ([fc69e95](https://github.com/CCXXXI/ecg_monitor/commit/fc69e9543bec92e05ff9976a2eb552027562fdf6))
- flutter pub add path ([cd0a08a](https://github.com/CCXXXI/ecg_monitor/commit/cd0a08af3fc0898863b032110b05d965ec7335df))
- flutter pub add path_provider ([a6c295a](https://github.com/CCXXXI/ecg_monitor/commit/a6c295a6d0ee8eca760ffacced65d2d8733b4902))
- flutter pub add settings_ui ([7249517](https://github.com/CCXXXI/ecg_monitor/commit/724951711dbe9cfd87e1753c6ddd98d80111fd62))
- flutter pub remove logger ([7722084](https://github.com/CCXXXI/ecg_monitor/commit/7722084349696747b7ff6095ffcbe6b8032f3284))
- flutter pub remove salomon_bottom_bar ([4c472e0](https://github.com/CCXXXI/ecg_monitor/commit/4c472e00ca42c4d6d9dba9f0f879fa3354e2986e))
- flutter pub upgrade ([5cf4050](https://github.com/CCXXXI/ecg_monitor/commit/5cf4050b05c9df50d2ced3e5e4563bc20dd92076))
- hpp to cpp ([1916e7b](https://github.com/CCXXXI/ecg_monitor/commit/1916e7bad8edaee56ce478abe0238fa9fd0a58e3))
- no Werror ([01b7d9e](https://github.com/CCXXXI/ecg_monitor/commit/01b7d9e991c8ad1864c33f38a540d7f0e6769e8c))
- set(CMAKE_CXX_STANDARD 20) ([1480961](https://github.com/CCXXXI/ecg_monitor/commit/1480961253da6ce6f04fbc1b06a778f3f8e14495))
- upgrade flutter ([92585dd](https://github.com/CCXXXI/ecg_monitor/commit/92585dd9c2f7343e34ca404c0651cbd6484de772))

## [0.2.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.1.0...v0.2.0) (2022-12-26)

### Features

- **analysis:** AnalysisView ([7f02172](https://github.com/CCXXXI/ecg_monitor/commit/7f02172a14762c65172d4114bbca28c86c43648a))
- **device:** better DeviceView ([2a8ff3b](https://github.com/CCXXXI/ecg_monitor/commit/2a8ff3b30ce500e60792476913f2ad9e5fd3951b))

### Bug Fixes

- **deps:** update kotlin monorepo to v1.8.0 ([a173796](https://github.com/CCXXXI/ecg_monitor/commit/a173796668ff93d460371f2b7efa8ddc890a805c))

### Reverts

- Revert "ci: release-as: 0.1.0" ([e8b5473](https://github.com/CCXXXI/ecg_monitor/commit/e8b5473cd3cad6cab6c3f2c5abe665dce667d43a))

### Continuous Integration

- **build:** build web for every push ([9765b6b](https://github.com/CCXXXI/ecg_monitor/commit/9765b6b129ca1625fbdf1850eb4be8f48a167f0f))
- **build:** no web ([dcbfeb5](https://github.com/CCXXXI/ecg_monitor/commit/dcbfeb54a8d4d6341aa02ce482c08d3161fdc775))

### Miscellaneous Chores

- **deps:** upgrade ([612398c](https://github.com/CCXXXI/ecg_monitor/commit/612398c68fc3c79ee9c92dd4111b821f69a314bb))

## 0.1.0 (2022-12-06)

### Features

- **device:** DeviceView ([9e63c91](https://github.com/CCXXXI/ecg_monitor/commit/9e63c910b64cd054e843b6aea2fef9054b84a74a))
- **home:** SalomonBottomBar ([42e0d69](https://github.com/CCXXXI/ecg_monitor/commit/42e0d6902a728f9719855671d36e2287b54ff51e))
- **mine:** MineView ([6be4663](https://github.com/CCXXXI/ecg_monitor/commit/6be466337c5128cc3bde71380368a77b038a065f))
- **monitor:** MonitorView ([ceb59fb](https://github.com/CCXXXI/ecg_monitor/commit/ceb59fb75c8aaa5206ccdab43c8e55517c5e43e8))
- simplify app ([5f52ba6](https://github.com/CCXXXI/ecg_monitor/commit/5f52ba66cf3b8711751ae256b19e463a2f4b78a5))

### Bug Fixes

- update base href ([85d0282](https://github.com/CCXXXI/ecg_monitor/commit/85d0282877c649f20acbecd1ea290949134f0667))

### Documentation

- LICENSE ([567dcc0](https://github.com/CCXXXI/ecg_monitor/commit/567dcc080a43c0b058cefb369f6c04212a14aa60))
- README ([fc7a595](https://github.com/CCXXXI/ecg_monitor/commit/fc7a59567c972262b70b49cfc01acbaa9195ef24))

### Code Refactoring

- **home:** refactor with riverpod ([d7dfca1](https://github.com/CCXXXI/ecg_monitor/commit/d7dfca1929075195a624af33eda069e10887338d))
- split home.dart ([50df9b4](https://github.com/CCXXXI/ecg_monitor/commit/50df9b4589805f9455dcdea556cce9687f5260f9))

### Tests

- no test ([dd82368](https://github.com/CCXXXI/ecg_monitor/commit/dd82368e24fb741be8747c10ed5c071117c1f361))

### Build System

- **deps:** add salomon_bottom_bar ([b61b456](https://github.com/CCXXXI/ecg_monitor/commit/b61b45687e815db5c9f45d95607159cb06d0bfb1))
- remove cupertino_icons ([7e174f8](https://github.com/CCXXXI/ecg_monitor/commit/7e174f84e7fab7115f5318bf237812cb762936d3))

### Styles

- dart fix ([926017a](https://github.com/CCXXXI/ecg_monitor/commit/926017ace86a9ca3db3a86a269642ec2284d9e65))
- dart fix ([15f02dd](https://github.com/CCXXXI/ecg_monitor/commit/15f02dd8de500b1a99a69c402c165fb53f763ea7))
- reformat by prettier-yaml ([03163ce](https://github.com/CCXXXI/ecg_monitor/commit/03163ce732eb875abd65d9c8a36adb9a41ccde09))

### Miscellaneous Chores

- 0.1.0+1 ([d184dd6](https://github.com/CCXXXI/ecg_monitor/commit/d184dd6349f0f582477e211dce82167096c0c587))
- **deps:** add build_runner ([aaa8cca](https://github.com/CCXXXI/ecg_monitor/commit/aaa8cca098982b35b28048a9fd17678784398dcd))
- **deps:** add dependency_validator ([ac35930](https://github.com/CCXXXI/ecg_monitor/commit/ac35930cdf904c884af22f6e94ed2dc8c067fe40))
- **deps:** add flutter_riverpod ([6aad00e](https://github.com/CCXXXI/ecg_monitor/commit/6aad00ef085c539f6ecdbb9599ea4d46e34e8a5a))
- **deps:** add riverpod_annotation ([f2b7bce](https://github.com/CCXXXI/ecg_monitor/commit/f2b7bcea6973e6dbca9c47def180656dbf95706a))
- **deps:** add riverpod_generator ([74e28c5](https://github.com/CCXXXI/ecg_monitor/commit/74e28c55ea129f409516b7e3a03cb814c8578d23))
- **deps:** upgrade ([01b0c62](https://github.com/CCXXXI/ecg_monitor/commit/01b0c6225aac600d1df58be87570b3fe7a892f4b))

### Continuous Integration

- add release-please-action ([9803861](https://github.com/CCXXXI/ecg_monitor/commit/980386114a27688264de0327617f7ff2dc6442b5))
- analyzer exclude generated files ([ae1ab90](https://github.com/CCXXXI/ecg_monitor/commit/ae1ab90437905c5a20b58a19a8e9b7eeb45a7797))
- **build:** build web & release ([f2d3140](https://github.com/CCXXXI/ecg_monitor/commit/f2d314063c93670a3ebc3607cb9e9dfc63703fa5))
- **build:** remove bad ci ([11576a2](https://github.com/CCXXXI/ecg_monitor/commit/11576a296d4abb8b27391957367dd7ad69171656))
- **check:** analyze & coverage & dependency_validator ([44b61fd](https://github.com/CCXXXI/ecg_monitor/commit/44b61fd7ffd5f805ede4cdc44a441d44f097d89f))
- release-as: 0.1.0 ([59aeee6](https://github.com/CCXXXI/ecg_monitor/commit/59aeee63c2a96707ebefa081ef21ed6ac74ef9c8))
- renovate ([7c31502](https://github.com/CCXXXI/ecg_monitor/commit/7c3150260888d4d09a9dff02e5e01c2e1c0e2198))
- restyled ([f7c969e](https://github.com/CCXXXI/ecg_monitor/commit/f7c969ebb538fd950d0b3f58889fa6244f8f55a9))
- show all types in changelog ([7bd275f](https://github.com/CCXXXI/ecg_monitor/commit/7bd275fde665617faaa312237a95986f7a64bcf2))
- update linter rules ([388de58](https://github.com/CCXXXI/ecg_monitor/commit/388de58ca8daa88626a413726ffe6f0c7b4540f3))
