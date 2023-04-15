# Changelog

## [0.35.4](https://github.com/CCXXXI/ecg_monitor/compare/v0.35.3...v0.35.4) (2023-04-15)

### Bug Fixes

- **deps:** update dependency fl_chart to ^0.62.0 ([#309](https://github.com/CCXXXI/ecg_monitor/issues/309)) ([8e71896](https://github.com/CCXXXI/ecg_monitor/commit/8e71896fe61effb54c656a726ec47e2e8db1b082))

### Code Refactoring

- **label-card:** `void Function()` -&gt; `VoidCallback` ([#306](https://github.com/CCXXXI/ecg_monitor/issues/306)) ([6aae7f3](https://github.com/CCXXXI/ecg_monitor/commit/6aae7f3d93c261c3962a5da44e0cfb9f2a63cd88))

## [0.35.3](https://github.com/CCXXXI/ecg_monitor/compare/v0.35.2...v0.35.3) (2023-04-07)

### Miscellaneous Chores

- **deps:** update dependency flutter_launcher_icons to ^0.13.0 ([#304](https://github.com/CCXXXI/ecg_monitor/issues/304)) ([3dde9ff](https://github.com/CCXXXI/ecg_monitor/commit/3dde9ffb90465965af14923ac7195a45a2688d4c))

## [0.35.2](https://github.com/CCXXXI/ecg_monitor/compare/v0.35.1...v0.35.2) (2023-04-07)

### Bug Fixes

- **heart-rate:** no heart rate for iOS yet ([44d1051](https://github.com/CCXXXI/ecg_monitor/commit/44d1051e960de7576ad9ac872c3af8559961a43d))

### Reverts

- Revert "ci(build): correct setup" ([000d8e1](https://github.com/CCXXXI/ecg_monitor/commit/000d8e1ac26d3b7fe5594549ab2aaaeeb67103b4))
- Revert "ci(build): move setup to matrix" ([16b355b](https://github.com/CCXXXI/ecg_monitor/commit/16b355bb5859892472f7b2ec12b737de262712f7))

### Miscellaneous Chores

- save IDEA config ([b9f4f83](https://github.com/CCXXXI/ecg_monitor/commit/b9f4f834b346d2d2769977ba6b06607f25eeb5dc))

### Continuous Integration

- **build:** build ios ([c5329b5](https://github.com/CCXXXI/ecg_monitor/commit/c5329b58b04d000e9cfa5403ed3e3a60b048c57f))
- **build:** correct command ([0a815f8](https://github.com/CCXXXI/ecg_monitor/commit/0a815f830b5dfc7fd34c9e581781c833c959676a))
- **build:** correct files ([660b5e1](https://github.com/CCXXXI/ecg_monitor/commit/660b5e1f93aa481a99aef45e21c1bf942fcedf8d))
- **build:** correct setup ([95570fd](https://github.com/CCXXXI/ecg_monitor/commit/95570fdc241e8c1b4a81b3aa8d928a328089b535))
- **build:** fix input ([cbd4a58](https://github.com/CCXXXI/ecg_monitor/commit/cbd4a586f5e2ab7bd1fb6eedce490616bc8a7b35))
- **build:** more matrix ([f27a02d](https://github.com/CCXXXI/ecg_monitor/commit/f27a02dee2b6b06566561f063be5759103131728))
- **build:** move setup to matrix ([a6adee4](https://github.com/CCXXXI/ecg_monitor/commit/a6adee49f352e49419e1ab5c0cff0c0aa46ecf96))
- **build:** no aab ([6709410](https://github.com/CCXXXI/ecg_monitor/commit/67094105ee748b795c5c2a2bb35b462602b8a515))
- **build:** no artifacts ([abe4e1f](https://github.com/CCXXXI/ecg_monitor/commit/abe4e1fd1b01138d65a06bd8b3864a770d4269f1))
- **build:** no debug build ([01c15d7](https://github.com/CCXXXI/ecg_monitor/commit/01c15d714e148279167a3defdb69014e9607a49f))
- **build:** simplify glob ([a22c275](https://github.com/CCXXXI/ecg_monitor/commit/a22c27516e2e9c249b93d0081b7c5ffdd7c83dc7))
- **build:** simplify jobs with matrix ([d3d4a59](https://github.com/CCXXXI/ecg_monitor/commit/d3d4a598407d236569c7436f5e66043cb771cbda))
- **build:** simplify matrix ([2dfa5df](https://github.com/CCXXXI/ecg_monitor/commit/2dfa5df27fae8016bdf053e3d17600663cba7849))
- **build:** simplify upload ([3f42693](https://github.com/CCXXXI/ecg_monitor/commit/3f42693d6df976c10cbd030dc287e7e5f3bcad3f))
- **build:** upload less files ([100909d](https://github.com/CCXXXI/ecg_monitor/commit/100909de25bedad2b399fa9bb5bcadf9775bf04d))
- **build:** zip Runner.app ([c5e63de](https://github.com/CCXXXI/ecg_monitor/commit/c5e63dec2a7669aa685cafb0acb93139ee5a5180))
- separate sentry ([849975d](https://github.com/CCXXXI/ecg_monitor/commit/849975d233f2c9d4b29931768ee6270f95face40))

## [0.35.1](https://github.com/CCXXXI/ecg_monitor/compare/v0.35.0...v0.35.1) (2023-04-05)

### Bug Fixes

- **deps:** update kotlin monorepo to v1.8.20 ([#296](https://github.com/CCXXXI/ecg_monitor/issues/296)) ([7813cfb](https://github.com/CCXXXI/ecg_monitor/commit/7813cfbb4d42782b4a6f9a92a85921514829c23e))

## [0.35.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.34.0...v0.35.0) (2023-03-30)

### Features

- **analytics:** improve label widgets ([d3df707](https://github.com/CCXXXI/ecg_monitor/commit/d3df707ca9e3ef34a598df6c16cc1e094fb1fe64))

### Bug Fixes

- **analytics:** FilledButton.tonal for AnalyticsController ([3f1fb77](https://github.com/CCXXXI/ecg_monitor/commit/3f1fb777895744ac01003b2f5cfde7d8ece5d117))

### Code Refactoring

- **analytics:** extract label_card.dart ([286a34a](https://github.com/CCXXXI/ecg_monitor/commit/286a34a05b9e01ecad83ebd005e2165e82a4797d))
- **analytics:** make widget function private ([87c3886](https://github.com/CCXXXI/ecg_monitor/commit/87c3886f7b545d95e2615d2b91d4d8fc67c84d39))

### Tests

- **analytics:** set window size ([cf08430](https://github.com/CCXXXI/ecg_monitor/commit/cf084303c2ed77f1bb27b5506a743c472651586e))

## [0.34.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.33.1...v0.34.0) (2023-03-30)

### Features

- **label-details:** add description ([#294](https://github.com/CCXXXI/ecg_monitor/issues/294)) ([97d1d13](https://github.com/CCXXXI/ecg_monitor/commit/97d1d132643a170e09c82692355c83748985b7ab))

## [0.33.1](https://github.com/CCXXXI/ecg_monitor/compare/v0.33.0...v0.33.1) (2023-03-29)

### Bug Fixes

- **analytics:** progress as a group ([#292](https://github.com/CCXXXI/ecg_monitor/issues/292)) ([5b996cb](https://github.com/CCXXXI/ecg_monitor/commit/5b996cb701b4381d7a56b64fc8b888482b9ccd91))

## [0.33.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.32.0...v0.33.0) (2023-03-29)

### Features

- **analytics:** add range controller ([74a1cd3](https://github.com/CCXXXI/ecg_monitor/commit/74a1cd36e5477ebf22c49296f4ae161cdbb04165))
- **analytics:** better controller ([3359b5c](https://github.com/CCXXXI/ecg_monitor/commit/3359b5cf326de53ffbca0ed579ef7c38b9a427bd))

### Continuous Integration

- **release-please:** update job name ([#289](https://github.com/CCXXXI/ecg_monitor/issues/289)) ([f52c45d](https://github.com/CCXXXI/ecg_monitor/commit/f52c45d8ebda13d24cd832fc5def77d1a281def1))

### Miscellaneous Chores

- save IDEA configs ([d01f22d](https://github.com/CCXXXI/ecg_monitor/commit/d01f22d073fd1061aba1703edbe6dd43510d356e))

### Build System

- flutter pub add time_range_picker ([d92b5b1](https://github.com/CCXXXI/ecg_monitor/commit/d92b5b101d05492a598266c9f16a9681855ebbcb))

### Code Refactoring

- **analytics:** align to minute ([f1cbf12](https://github.com/CCXXXI/ecg_monitor/commit/f1cbf1203fd7bbc06680e3ec8bd045af4af20884))
- **analytics:** extract controller.dart ([5258386](https://github.com/CCXXXI/ecg_monitor/commit/525838622a674923262f00c05cf392a7ab229537))
- **analytics:** range filter ([857b866](https://github.com/CCXXXI/ecg_monitor/commit/857b86612dec006f0f0da03cdebc764e2dae6ffb))
- **database:** beat time range ([38704ce](https://github.com/CCXXXI/ecg_monitor/commit/38704cec7dc30e64ca466d104046025ee8a9b6c9))
- **time:** toDateTimeBefore ([0865c4f](https://github.com/CCXXXI/ecg_monitor/commit/0865c4f44284c7ef99b79faf99181d03004b14a1))

### Tests

- **analytics:** correct l10n ([baf3ea4](https://github.com/CCXXXI/ecg_monitor/commit/baf3ea49b31330dbd70175480fa99701aa972d3d))
- **analytics:** correct skipOffstage ([7b4bdb4](https://github.com/CCXXXI/ecg_monitor/commit/7b4bdb44c330b375bcaf250a48ddae764c318d8c))

## [0.32.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.31.1...v0.32.0) (2023-03-29)

### Features

- **history:** go to prev / next beat ([fdde9d5](https://github.com/CCXXXI/ecg_monitor/commit/fdde9d5e506ae37824e22cc4503bb05efb7abf1c))

### Code Refactoring

- **database:** add beatTimeBefore & beatTimeAfter ([bb0cf14](https://github.com/CCXXXI/ecg_monitor/commit/bb0cf14715748b8f51646b46cc0a34c153e66b73))
- **history:** simplify controller ([cfee7ec](https://github.com/CCXXXI/ecg_monitor/commit/cfee7ec53c452731ed5d99c7cb037d0aea8baa30))

## [0.31.1](https://github.com/CCXXXI/ecg_monitor/compare/v0.31.0...v0.31.1) (2023-03-29)

### Performance Improvements

- **database:** add ecgDataBuffer ([#285](https://github.com/CCXXXI/ecg_monitor/issues/285)) ([8c6d1c6](https://github.com/CCXXXI/ecg_monitor/commit/8c6d1c6812b387c7d091c86d84cfff3d23adedd9))

## [0.31.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.30.0...v0.31.0) (2023-03-28)

### Features

- **heart-rate:** keep-alive ([8b3509b](https://github.com/CCXXXI/ecg_monitor/commit/8b3509b1b04031cebff8786e456b941e00d8c740))
- **heart-rate:** save beat to database ([e174f45](https://github.com/CCXXXI/ecg_monitor/commit/e174f45b1777f27a0a510b5610be998b9f4ddc9f))

## [0.30.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.29.3...v0.30.0) (2023-03-28)

### Features

- **dev-tools:** add loadFakeSamplePoints ([84af190](https://github.com/CCXXXI/ecg_monitor/commit/84af190cb3aaaa71ff5fdd53b5ef582f32b86db1))
- **dev-tools:** show progress indicator & restart notification ([53ed6c4](https://github.com/CCXXXI/ecg_monitor/commit/53ed6c42d509e98498716c12468accb53d28e76c))

### Bug Fixes

- **database:** clear old fake data before writing ([524c317](https://github.com/CCXXXI/ecg_monitor/commit/524c317de9fc9676a102ae000251c0383fd56d5a))
- **dev-tools:** disallow multiple loading at same time ([c884c39](https://github.com/CCXXXI/ecg_monitor/commit/c884c39f58633641bce448661ad2169e0b3996fb))

### Performance Improvements

- **fake-device:** read all fake data to memory ([c1b197e](https://github.com/CCXXXI/ecg_monitor/commit/c1b197e2108fbbd4019ebee7537d11981748e69c))

### Continuous Integration

- ignore generated files ([9c1e9eb](https://github.com/CCXXXI/ecg_monitor/commit/9c1e9eb3633ee5903e1182f2840f37cb9262eb38))

### Tests

- **database:** add test for FakeSamplePoint ([8287c4b](https://github.com/CCXXXI/ecg_monitor/commit/8287c4bfb3bbe0d1d113824ceff2cc824a8d3f34))

### Build System

- flutter pub add file_picker ([a31c44d](https://github.com/CCXXXI/ecg_monitor/commit/a31c44da4fe71f87817a096bea8055257d2dcef2))
- flutter pub add json_annotation dev:json_serializable ([8f660c1](https://github.com/CCXXXI/ecg_monitor/commit/8f660c1f8a6820527f0badce8d085ee1b3af2bfa))
- flutter pub remove json_annotation ([8313d98](https://github.com/CCXXXI/ecg_monitor/commit/8313d982a9480eeb403a446fe76cbea58e692ec4))

### Styles

- **settings:** prefer relative imports ([4dd7635](https://github.com/CCXXXI/ecg_monitor/commit/4dd76355be216ba61a3eb5f0d7b58daefd21a271))

### Code Refactoring

- **chart:** simplify provider ([4a52ddf](https://github.com/CCXXXI/ecg_monitor/commit/4a52ddf47de23b22ceed38d73941be7a8f442552))
- **database:** add FakeSamplePoint ([235b47e](https://github.com/CCXXXI/ecg_monitor/commit/235b47ea12bbfd040f7f299486a6c9d3bfa9cfd4))
- **database:** rename ms to milliseconds ([8afb4da](https://github.com/CCXXXI/ecg_monitor/commit/8afb4dae73b5b7ad973bb1c277b05939f6fa5597))
- **database:** reorder ([f620c2a](https://github.com/CCXXXI/ecg_monitor/commit/f620c2af82ee72f4ecfa85976c4d2a87fa8a46d4))
- **database:** update log ([5010947](https://github.com/CCXXXI/ecg_monitor/commit/50109477b02978367917280bd60c2dc0cdcb2d0b))
- **dev-tools:** simplify provider ([21f4ebc](https://github.com/CCXXXI/ecg_monitor/commit/21f4ebce2cab7b696458ccec5171534ac763a751))
- **fake-device:** align to data source ([ba761e9](https://github.com/CCXXXI/ecg_monitor/commit/ba761e93ba45f3d855223c996db15698cf20f81f))
- **fake-device:** read data from database ([902cecf](https://github.com/CCXXXI/ecg_monitor/commit/902cecf2f5f0b0ccd2f3412e4ef679a91e8447e9))
- **fake-device:** rename data type ([4b3a53e](https://github.com/CCXXXI/ecg_monitor/commit/4b3a53e7fbbd9ae77f7c93ce77f38f37a34a2e65))
- **l10n:** add new messages ([57ffea6](https://github.com/CCXXXI/ecg_monitor/commit/57ffea64fc7df2e16dba6bb100ed6342dff84cd7))
- **l10n:** fix typo ([a4c71cb](https://github.com/CCXXXI/ecg_monitor/commit/a4c71cbe8e5402937536b1ac17313c1655d001f8))
- read fake data from json ([055ad1b](https://github.com/CCXXXI/ecg_monitor/commit/055ad1b7f2adeaab9c45eb5461aef458e042d626))
- **settings:** extract chart_settings.dart ([37a91dc](https://github.com/CCXXXI/ecg_monitor/commit/37a91dc9ab68832873433a00aff2a6550ae18fc1))
- **settings:** extract dev_tools.dart ([fd2e8d2](https://github.com/CCXXXI/ecg_monitor/commit/fd2e8d2acde79703ac37e2d3aae86a7f01ff9ab9))
- **settings:** extract restart_snack_bar.dart ([ec880d6](https://github.com/CCXXXI/ecg_monitor/commit/ec880d6168e670e5bd282de24611089cad68d85f))
- **settings:** extract section_title.dart ([cb2602e](https://github.com/CCXXXI/ecg_monitor/commit/cb2602ec73def04aeedd6de56225cdc3f2b37c57))

### Miscellaneous Chores

- add data.json to assets ([8ebca58](https://github.com/CCXXXI/ecg_monitor/commit/8ebca588e0a082b34dfe74eb6701c2acfaef13d5))
- empty commit to trigger CI again ([5c1eecf](https://github.com/CCXXXI/ecg_monitor/commit/5c1eecff88baefaac6a7b3873e416316827bc670))
- remove fake data from assets ([4f0d928](https://github.com/CCXXXI/ecg_monitor/commit/4f0d928f2e95c9d092fca4137d8eedc79f9410c0))
- remove images from assets ([32ccaf2](https://github.com/CCXXXI/ecg_monitor/commit/32ccaf2dfa33f2ec99a3644b494cdf869aaffc92))
- update submodules ([ee018bf](https://github.com/CCXXXI/ecg_monitor/commit/ee018bf5ef0ca4d58011812f1bdcd7117a66c503))

## [0.29.3](https://github.com/CCXXXI/ecg_monitor/compare/v0.29.2...v0.29.3) (2023-03-26)

### Performance Improvements

- **database:** make all database operations async ([6c9546e](https://github.com/CCXXXI/ecg_monitor/commit/6c9546ec296df3941c751044a43f910888d79a5d))

### Reverts

- Revert "feat(history): add SharedAxisTransition" ([0b4b0ee](https://github.com/CCXXXI/ecg_monitor/commit/0b4b0ee7a31eeae617fc11fd86bf532ebbd52e72))

### Code Refactoring

- **database:** add logs ([37d819b](https://github.com/CCXXXI/ecg_monitor/commit/37d819b10690d16149ecaa190c1b4ca1fc6ec405))

### Tests

- **analytics:** add ProviderScope ([b42b73d](https://github.com/CCXXXI/ecg_monitor/commit/b42b73d8719cb58fac9bd9f203540e6a04c31a36))
- **database:** await ([4edd099](https://github.com/CCXXXI/ecg_monitor/commit/4edd0999490d9ff8b8e6001c1d125cb2e350ec1f))

## [0.29.2](https://github.com/CCXXXI/ecg_monitor/compare/v0.29.1...v0.29.2) (2023-03-26)

### Performance Improvements

- toList(growable: false) ([#275](https://github.com/CCXXXI/ecg_monitor/issues/275)) ([9d42b47](https://github.com/CCXXXI/ecg_monitor/commit/9d42b47583eaf5039e600961cb6acfac98382db7))

## [0.29.1](https://github.com/CCXXXI/ecg_monitor/compare/v0.29.0...v0.29.1) (2023-03-26)

### Performance Improvements

- **database:** use property query ([4e184ba](https://github.com/CCXXXI/ecg_monitor/commit/4e184ba0d99abc9aff6b1d1eec667d8a5a907f66))

### Miscellaneous Chores

- save generated files ([b35cff9](https://github.com/CCXXXI/ecg_monitor/commit/b35cff92f22a19a6f190a8eeaef12e0f6ac9af9a))

### Documentation

- **database:** add regions ([27ab73a](https://github.com/CCXXXI/ecg_monitor/commit/27ab73ab40e5d76b470ca04d46cc54ee60f5cdf4))

### Code Refactoring

- **database:** add writeBeatData ([16b6b74](https://github.com/CCXXXI/ecg_monitor/commit/16b6b74b8fd16dd79ae5a38faff88e5f0dffcbdb))
- **database:** make collections visible only for testing ([518bc2b](https://github.com/CCXXXI/ecg_monitor/commit/518bc2b1181f2cadce7af43f94c20443b2d78708))
- **database:** make isar instance private ([339bb7b](https://github.com/CCXXXI/ecg_monitor/commit/339bb7bca8ff147569ca20c5a96c6a8e9887c948))
- **database:** move beatDataBetween to database.dart ([19e20fa](https://github.com/CCXXXI/ecg_monitor/commit/19e20fa34fb8ae6373cf84aab29f1bea6621be52))
- **database:** move ecgDataBetween to database.dart ([9724929](https://github.com/CCXXXI/ecg_monitor/commit/9724929f6959eeeff9800eba5ca76b4c67b323e2))
- **database:** move labelCount to database.dart ([851ee8f](https://github.com/CCXXXI/ecg_monitor/commit/851ee8fbe090f73953cf0a17bc1140185c8835ae))
- **database:** move labelTimes to database.dart ([f1a5bd5](https://github.com/CCXXXI/ecg_monitor/commit/f1a5bd5f9b13bc6f9ffddcd0afe21ec40074e371))
- **database:** move writeEcgData to database.dart ([c9401be](https://github.com/CCXXXI/ecg_monitor/commit/c9401bec1c1a15e1f0b6ff1f1504d39abb8dcd52))
- **database:** reorder functions ([1a06727](https://github.com/CCXXXI/ecg_monitor/commit/1a0672706d3452c5f8b6f41ac80b8df4253d8461))

### Tests

- **database:** test for database operations ([4509905](https://github.com/CCXXXI/ecg_monitor/commit/4509905c6cd6c9089084c6078cbf13b68a54496f))

## [0.29.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.28.0...v0.29.0) (2023-03-26)

### Features

- **history:** center the selected time ([#270](https://github.com/CCXXXI/ecg_monitor/issues/270)) ([8e1ca65](https://github.com/CCXXXI/ecg_monitor/commit/8e1ca65bde16859d75e1da4ff4fc1d3b018daf0d))
- **settings:** improve duration pickers ([b0ae380](https://github.com/CCXXXI/ecg_monitor/commit/b0ae380d5fb7962bbd3caaeb225d4f54f6c228c7))

### Build System

- flutter pub add duration_picker ([72951d6](https://github.com/CCXXXI/ecg_monitor/commit/72951d6594d5a3137d61cf9ada02dc57213d0663))

### Tests

- **settings:** "showDevTools": true ([1921f5f](https://github.com/CCXXXI/ecg_monitor/commit/1921f5fcbb9d3e23eb790d4debb26a1fdc3f82ba))
- **settings:** add test for Settings ([ac9238e](https://github.com/CCXXXI/ecg_monitor/commit/ac9238e79e066b36cf725ea67f26a61146cd09b4))
- **settings:** avoid magic value ([7785d9a](https://github.com/CCXXXI/ecg_monitor/commit/7785d9a8bc85b80f89e18db87cc4d426832eb6d6))

## [0.28.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.27.0...v0.28.0) (2023-03-26)

### Features

- **analytics:** use OpenContainer for LabelDetails ([d1fe890](https://github.com/CCXXXI/ecg_monitor/commit/d1fe890fa4fc86f4020ef1155908e4a580d4afd7))
- **history:** add SharedAxisTransition ([c41b7ab](https://github.com/CCXXXI/ecg_monitor/commit/c41b7ab52d77b746f50fa371993fd13a82e88893))
- **home:** FadeThroughTransitionPage ([08fad17](https://github.com/CCXXXI/ecg_monitor/commit/08fad170abb569f8f2b1a73be51fb65fdb29fd7b))

### Bug Fixes

- **analytics:** use background color instead of transparent ([f6e7664](https://github.com/CCXXXI/ecg_monitor/commit/f6e76647d72b0a1aae63162dbd35a29465463243))
- **label-details:** pop before go to history ([a29eb71](https://github.com/CCXXXI/ecg_monitor/commit/a29eb71261c8d8f6434c08fecee9c6857050ef66))

### Build System

- flutter pub add animations ([d37a14b](https://github.com/CCXXXI/ecg_monitor/commit/d37a14baaa80a14666c1de552d732b38c4b8239b))

### Code Refactoring

- **router:** rename unused param to \_ ([58d1399](https://github.com/CCXXXI/ecg_monitor/commit/58d13998822605b78f3c361e1cbc1441f7bc1e28))

### Tests

- **chart:** add tear down ([5b363c5](https://github.com/CCXXXI/ecg_monitor/commit/5b363c59873bcf927a869adb5531f41a9cdc81bf))
- **chart:** add test for Chart3Lead ([bffbcc6](https://github.com/CCXXXI/ecg_monitor/commit/bffbcc624f611320351c96ed034a4faae4214ba6))
- **chart:** show grids ([766d9f5](https://github.com/CCXXXI/ecg_monitor/commit/766d9f57cc338272688db281eec1df48f2280c79))
- **chart:** test for orientation ([aad245a](https://github.com/CCXXXI/ecg_monitor/commit/aad245a32a8433847013dd7c826f810ab0fed748))

### Continuous Integration

- **build:** simplify tag check ([963a608](https://github.com/CCXXXI/ecg_monitor/commit/963a6087656d887965e6b0d37df1ab30af63271a))
- **coverage:** ignore generated files ([85c7d7c](https://github.com/CCXXXI/ecg_monitor/commit/85c7d7c35b6e6b2bb71036816016a22912b5a1a7))

## [0.27.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.26.1...v0.27.0) (2023-03-26)

### Features

- **history:** show 3 seconds ago by default ([12ea8bd](https://github.com/CCXXXI/ecg_monitor/commit/12ea8bdf54c5dcce4cc08f6e71ffc0ea293a3da7))

### Miscellaneous Chores

- **deps:** update dependency all_lint_rules_community to ^0.0.29 ([#263](https://github.com/CCXXXI/ecg_monitor/issues/263)) ([7406d41](https://github.com/CCXXXI/ecg_monitor/commit/7406d414288bfc04606442d8ec16fd0937ddf19d))

### Tests

- **time:** add test for TimeOfDay.toLastPastDateTime ([e1e00cf](https://github.com/CCXXXI/ecg_monitor/commit/e1e00cfb09af0c40b33b9582e96d8b19132581a7))

### Code Refactoring

- **history:** make history stateless ([a93434e](https://github.com/CCXXXI/ecg_monitor/commit/a93434ea2cc94e7c58d2b0bd6ec28f91b76d1852))
- **history:** make swidget function private ([61c2642](https://github.com/CCXXXI/ecg_monitor/commit/61c264210023651f115a0f2be7ebd170305489bf))
- **history:** remove unused imports ([83a5164](https://github.com/CCXXXI/ecg_monitor/commit/83a5164c778ee88d839a94b7d528e85a2578da36))
- move DateTimeToTimeString to utils/time.dart ([b1cba80](https://github.com/CCXXXI/ecg_monitor/commit/b1cba80ad054232d4ee893d40b6c968fa287d91a))
- **router:** pass DateTime as extra instead of params ([bc0ba94](https://github.com/CCXXXI/ecg_monitor/commit/bc0ba945f287e4bd02314c4443cb5c47118fb314))
- **router:** pass Label as extra instead of params ([894a14d](https://github.com/CCXXXI/ecg_monitor/commit/894a14dcd410e745aa2eef757f3489e7af9f787f))
- **router:** path params to query params ([def7ec1](https://github.com/CCXXXI/ecg_monitor/commit/def7ec1bce93cadfabfb59f835b95ca6b2d2dea5))
- **router:** remove unused name ([62e13b7](https://github.com/CCXXXI/ecg_monitor/commit/62e13b7b84e6f337ef343035431550cedd46916c))

## [0.26.1](https://github.com/CCXXXI/ecg_monitor/compare/v0.26.0...v0.26.1) (2023-03-24)

### Bug Fixes

- **chart:** show x label iff exact second ([2e5cf53](https://github.com/CCXXXI/ecg_monitor/commit/2e5cf53ec91b7d038347f36ec5e07952e2bf45b7))

### Code Refactoring

- **home:** simplify route location check ([#250](https://github.com/CCXXXI/ecg_monitor/issues/250)) ([4bc14ba](https://github.com/CCXXXI/ecg_monitor/commit/4bc14ba60b9fe0b3d234513b17876f5ffd65766c))

### Tests

- **chart:** correct test of DateTimeToTimeString ([2b2b53c](https://github.com/CCXXXI/ecg_monitor/commit/2b2b53c0ddead5efc32a89c7cf6b50324033235f))

## [0.26.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.25.0...v0.26.0) (2023-03-24)

### Features

- **analytics:** read counts from database ([725e80e](https://github.com/CCXXXI/ecg_monitor/commit/725e80e42a1cb72ce8d6a5d317faf6154b2dd0b2))
- **analytics:** show counts ([ec39eea](https://github.com/CCXXXI/ecg_monitor/commit/ec39eea873338625b2a3609b21e692fa759c10e9))
- **analytics:** show label details ([8f54e6d](https://github.com/CCXXXI/ecg_monitor/commit/8f54e6d03d7c37c96927df68e99f84b5fdae207e))
- **history:** show labels ([b627576](https://github.com/CCXXXI/ecg_monitor/commit/b6275764ea1964f4bbfbfd4db347a6a72eec8574))

### Performance Improvements

- **database:** index label ([31cbebe](https://github.com/CCXXXI/ecg_monitor/commit/31cbebe023ba8d55b45049689050a9f1c6127096))

### Miscellaneous Chores

- **deps:** update dependency all_lint_rules_community to ^0.0.28 ([#243](https://github.com/CCXXXI/ecg_monitor/issues/243)) ([6202e78](https://github.com/CCXXXI/ecg_monitor/commit/6202e784e78be2ec0b17b9893a744a8998bb08dc))

### Styles

- **label-details:** remove comma ([58ca8e3](https://github.com/CCXXXI/ecg_monitor/commit/58ca8e3247d5b2bfb78ae57e10166bbe0988f792))
- **router:** add comma ([1cbddb4](https://github.com/CCXXXI/ecg_monitor/commit/1cbddb4f29d555d70ccc265844e48f63aa2ec2ca))

### Code Refactoring

- **analytics:** add BeatData type ([d4ccd35](https://github.com/CCXXXI/ecg_monitor/commit/d4ccd35b35c9ca3f1b082d5a42cf51e5c3f5a93f))
- **analytics:** add Label type ([0e9731f](https://github.com/CCXXXI/ecg_monitor/commit/0e9731f26c76acfd07cb12668f91b735a9a76b0e))
- **analytics:** simplify l10n ([329d696](https://github.com/CCXXXI/ecg_monitor/commit/329d696b60345cebc48ce7b9dfe9c3417d81f021))
- **analytics:** simplify label strings ([b1b96cf](https://github.com/CCXXXI/ecg_monitor/commit/b1b96cf7e6577acf43a0f4d1c5e84aa096cfe1f2))
- **analytics:** toS -&gt; name ([a5f3f4e](https://github.com/CCXXXI/ecg_monitor/commit/a5f3f4e080e21b97e8f5ec82c7ca25993cd34b89))
- **database:** add Beat collection ([6ea7f5e](https://github.com/CCXXXI/ecg_monitor/commit/6ea7f5edb6b4bdc1251ad56841556d1b95101c8e))
- **history:** remove unused method ([8837cf3](https://github.com/CCXXXI/ecg_monitor/commit/8837cf3d99e30f4a33f3f6402461fac8260b802a))
- **router:** /label_details -&gt; /analytics/label_details ([ba274c7](https://github.com/CCXXXI/ecg_monitor/commit/ba274c7692240ad20a14f2321ec5317cdb95b64a))

### Tests

- **analytics:** add widget test ([eb67da1](https://github.com/CCXXXI/ecg_monitor/commit/eb67da1e5757bf54b67843417cc92c1fa8fa828d))
- correct setup_isar ([384d43b](https://github.com/CCXXXI/ecg_monitor/commit/384d43b4018738653de740ed5edaf9de08c13c19))
- setup isar ([ee53206](https://github.com/CCXXXI/ecg_monitor/commit/ee532069194a54043eec61d4c77be23bcc4167c9))

### Continuous Integration

- **coverage:** add cache ([f8d7beb](https://github.com/CCXXXI/ecg_monitor/commit/f8d7beb9fc973eded24f4356308fe6b65dc39a36))
- **coverage:** add cache key ([d024ecd](https://github.com/CCXXXI/ecg_monitor/commit/d024ecd238f6705fc75e7cf311516038e0e4b5c7))

## [0.25.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.24.0...v0.25.0) (2023-03-22)

### Features

- **chart:** fullscreen when landscape ([f73b3c4](https://github.com/CCXXXI/ecg_monitor/commit/f73b3c4d7bbc034573827dc1adf792633f95445d))
- **chart:** only one lead for landscape ([9bed933](https://github.com/CCXXXI/ecg_monitor/commit/9bed93313823f8b9f52705f37ffaeb12050be516))

### Tests

- **main:** correct test ([3988f5c](https://github.com/CCXXXI/ecg_monitor/commit/3988f5c429dacfd4aeade1adae1f0bee078c1c4e))

## [0.24.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.23.0...v0.24.0) (2023-03-22)

### Features

- **chart:** better lines ([64ee6df](https://github.com/CCXXXI/ecg_monitor/commit/64ee6df5fbadade021d308714fa13db597fa5cae))
- **settings:** update default durations ([22b019a](https://github.com/CCXXXI/ecg_monitor/commit/22b019ae7f6a14e2fa0cfb7ffa4e4f171d77ab62))

### Tests

- **settings:** add test for DurationToSecondsString ([42f3508](https://github.com/CCXXXI/ecg_monitor/commit/42f35086a1e469883e6942ca69516a591d928e6c))

## [0.23.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.22.4...v0.23.0) (2023-03-22)

### ⚠ BREAKING CHANGES

- **settings:** Duration settings are stored as int (ms) instead of double (s) now. Old settings must be cleared manually.

### Features

- **history:** align time to seconds ([363e724](https://github.com/CCXXXI/ecg_monitor/commit/363e72421d901e473746053cf554095080ff201f))
- **history:** show 10s instead of 1min ago by default ([38ddddc](https://github.com/CCXXXI/ecg_monitor/commit/38ddddcda26595d37225e862d75e317ea9287639))
- **history:** show 1min ago as default ([dd1e25c](https://github.com/CCXXXI/ecg_monitor/commit/dd1e25c3b5a6f9490e3429b838e4fa19334a38d5))
- **history:** show controller on landscape ([1a31ce3](https://github.com/CCXXXI/ecg_monitor/commit/1a31ce346d961973e2a987a845efc2f117835741))
- **history:** show history data ([d7462de](https://github.com/CCXXXI/ecg_monitor/commit/d7462deeab1847f5f37db4df8fb2d59954412327))
- **history:** show notification if no data ([1cf990e](https://github.com/CCXXXI/ecg_monitor/commit/1cf990ee72e6996e94e06b7f69df363a1664808a))
- **real-time:** add padding to deviceNotConnected message ([88f69aa](https://github.com/CCXXXI/ecg_monitor/commit/88f69aa6edfda6a0d9bfa08fd8444d09ecb1558a))
- **real-time:** more space between widgets ([258ee4b](https://github.com/CCXXXI/ecg_monitor/commit/258ee4b73f054a574422f9842b2d52f71f77db7d))

### Code Refactoring

- **chart:** double -&gt; Duration ([c1d5551](https://github.com/CCXXXI/ecg_monitor/commit/c1d5551f6cc643b6e44ed4654ff077d44838f92b))
- **chart:** extract DateTimeToTimeString ([2ca8479](https://github.com/CCXXXI/ecg_monitor/commit/2ca8479f098934952437c23d37e67fd01991197a))
- **real-time:** extract device_not_available.dart ([0e671c5](https://github.com/CCXXXI/ecg_monitor/commit/0e671c56b9163aaa5c2b4a78e2c35df097c5a37d))
- **real-time:** extract DeviceNotAvailable ([171d9ac](https://github.com/CCXXXI/ecg_monitor/commit/171d9ac0e69511de754ae978ab2a4aca22481ada))
- **real-time:** move real_time_chart.dart to real_time/chart.dart ([710eae8](https://github.com/CCXXXI/ecg_monitor/commit/710eae81a0fa069c2cfe28ef37bb6e7e27d439d5))
- **settings:** double duration -&gt; Duration duration ([daedbc0](https://github.com/CCXXXI/ecg_monitor/commit/daedbc0454b98a8468f71cf9da3804526a89cbce))

## [0.22.4](https://github.com/CCXXXI/ecg_monitor/compare/v0.22.3...v0.22.4) (2023-03-21)

### Continuous Integration

- **sentry:** correct version string ([#233](https://github.com/CCXXXI/ecg_monitor/issues/233)) ([0d7153d](https://github.com/CCXXXI/ecg_monitor/commit/0d7153d641236e23e0544d8b17bd273af6e2cdb4))

## [0.22.3](https://github.com/CCXXXI/ecg_monitor/compare/v0.22.2...v0.22.3) (2023-03-21)

### Bug Fixes

- **deps:** update dependency org.pytorch:pytorch_android to v1.13.1 ([#230](https://github.com/CCXXXI/ecg_monitor/issues/230)) ([e36d321](https://github.com/CCXXXI/ecg_monitor/commit/e36d321f122baa0548c449b9fbd04dc6a29353b4))
- **real-time:** close subscription on dispose ([#232](https://github.com/CCXXXI/ecg_monitor/issues/232)) ([42b43ff](https://github.com/CCXXXI/ecg_monitor/commit/42b43ffbbbd110597f86128a9f946ad6f069e156))

### Build System

- add isar ([9ad6ce2](https://github.com/CCXXXI/ecg_monitor/commit/9ad6ce23b03da81f5c2c9693918139f511174e97))

### Tests

- **database:** add test for EcgData &lt;-&gt; SamplePoint ([6be576a](https://github.com/CCXXXI/ecg_monitor/commit/6be576a3d7040ce8c08de068f87ced5ca7a71c61))

### Miscellaneous Chores

- save generated files ([e833fe9](https://github.com/CCXXXI/ecg_monitor/commit/e833fe94a8bba90292dadd4cb022bac58c2d8638))
- update gitignore ([998394f](https://github.com/CCXXXI/ecg_monitor/commit/998394fe5e469306135d05262ca2ae801054b496))

### Code Refactoring

- **database:** add SamplePoint collection ([bbf3429](https://github.com/CCXXXI/ecg_monitor/commit/bbf3429ebb2990de10f13a1afd167508e8d395fa))
- **database:** add SamplePoint.toEcgData ([5ffbc9b](https://github.com/CCXXXI/ecg_monitor/commit/5ffbc9b8d8efd6e1ffc3f6adb842b663b42894df))
- **database:** make SamplePoint const ([fc1b473](https://github.com/CCXXXI/ecg_monitor/commit/fc1b473e0a427e04009c9489deb67745b625c35f))
- **database:** save sample points ([d11f5cf](https://github.com/CCXXXI/ecg_monitor/commit/d11f5cf63fc16d88bcd73bb1bbf65f80d6cbc9df))
- debug_data.dart to debug/data.dart ([62881ce](https://github.com/CCXXXI/ecg_monitor/commit/62881cee472c36cdf5b7583165a88e61ad85f2c3))
- **home:** make Home swidget ([d5aaf5a](https://github.com/CCXXXI/ecg_monitor/commit/d5aaf5a0c8134f9162a6cde8fef58c8377d83f7a))
- move database.dart to utils/ ([f86d291](https://github.com/CCXXXI/ecg_monitor/commit/f86d291c7170e4e54a4f6dea3560ba91fd3127b1))
- move logger.dart to debug/ ([6ae597f](https://github.com/CCXXXI/ecg_monitor/commit/6ae597faed9ce26a3dc8cfca68ea30f02c9c59a6))
- move ume.dart to debug/ ([7173523](https://github.com/CCXXXI/ecg_monitor/commit/7173523643f2ee902a987960d4461e4bae55c775))
- rename ecg_data to debug_data ([7b4f1f1](https://github.com/CCXXXI/ecg_monitor/commit/7b4f1f1fa36453a448dff65ba58f660319798c5c))

### Continuous Integration

- **check:** ignore isar_flutter_libs dependency ([9508f02](https://github.com/CCXXXI/ecg_monitor/commit/9508f0210249b421a4d5be40ea59091460bafaf6))

## [0.22.2](https://github.com/CCXXXI/ecg_monitor/compare/v0.22.1...v0.22.2) (2023-03-21)

### Continuous Integration

- **build:** no web ([d5de724](https://github.com/CCXXXI/ecg_monitor/commit/d5de7240bb8678531ef8d2347d89f259477c8cb0))

### Code Refactoring

- dart:io instead of universal_io ([47b00e3](https://github.com/CCXXXI/ecg_monitor/commit/47b00e3bb1b81892f58a67b1e55f11358c830238))
- remove web related code ([386ed2f](https://github.com/CCXXXI/ecg_monitor/commit/386ed2fd892b9dbccdf442f528a365d94230dbc9))

### Build System

- flutter pub remove build_web_compilers ([2228036](https://github.com/CCXXXI/ecg_monitor/commit/2228036b935d3f6e8eee170e2d97ac95bb5a39bb))
- flutter pub remove universal_io ([09883b9](https://github.com/CCXXXI/ecg_monitor/commit/09883b948aa52e9dfdcdd11cacc15e60260e488c))

### Miscellaneous Chores

- simplify flutter_icons config ([48fd366](https://github.com/CCXXXI/ecg_monitor/commit/48fd366aaa647d62f10e4a5a2729a2b01e9d3f73))

## [0.22.1](https://github.com/CCXXXI/ecg_monitor/compare/v0.22.0...v0.22.1) (2023-03-20)

### Bug Fixes

- correct ecg stream watchers ([91bed2f](https://github.com/CCXXXI/ecg_monitor/commit/91bed2f50805eb7d5d86ed391b6b6548f607f7f8))
- **deps:** update dependency riverpod_annotation to v2 ([#165](https://github.com/CCXXXI/ecg_monitor/issues/165)) ([ad1edce](https://github.com/CCXXXI/ecg_monitor/commit/ad1edce349f33b527f354890bac32ab90bfd2e69))
- **fake-device:** do not yield data if the fake device is off ([cc58190](https://github.com/CCXXXI/ecg_monitor/commit/cc58190591cb3e63591d54adb8af18595a5c6f5e))

### Performance Improvements

- **fake-device:** boot up faster ([9b56e58](https://github.com/CCXXXI/ecg_monitor/commit/9b56e58dfad6d432384406e68750e1d02f98d23c))
- **heart-rate:** less waiting time ([4b05903](https://github.com/CCXXXI/ecg_monitor/commit/4b059032a1ac30a0431fb4a11ac00b713eb7e461))

### Build System

- flutter pub get ([eebeb4c](https://github.com/CCXXXI/ecg_monitor/commit/eebeb4c2cb637faec8fe29437630e1cbc4810780))

### Miscellaneous Chores

- **deps:** update dependency riverpod_generator to v2 ([#218](https://github.com/CCXXXI/ecg_monitor/issues/218)) ([6213e58](https://github.com/CCXXXI/ecg_monitor/commit/6213e58a29e9629c8fe8522b8542cf44a164badb))
- save generated files ([49fd45d](https://github.com/CCXXXI/ecg_monitor/commit/49fd45dbd8c00b36dabd1b783d8a8a4442dedfe0))
- save generated files again ([778e521](https://github.com/CCXXXI/ecg_monitor/commit/778e52157520a8242389a9edf5e960faff70d4ad))

### Code Refactoring

- **device:** remove unused import ([2ae2320](https://github.com/CCXXXI/ecg_monitor/commit/2ae232032b76842f84678a6f3380d9aa5e12f79c))
- **device:** simplify battery ([344ab67](https://github.com/CCXXXI/ecg_monitor/commit/344ab67abd95a4b28ce1af296265e0a5962966c7))
- **device:** simplify connected ([392fd6f](https://github.com/CCXXXI/ecg_monitor/commit/392fd6ff9872dcae77dcc2d5417da1a56a7e1cda))
- **device:** simplify ecg stream ([88adcbf](https://github.com/CCXXXI/ecg_monitor/commit/88adcbf9c63587b019a2284f0357216fbd47710a))
- **device:** simplify rssi ([3779e8a](https://github.com/CCXXXI/ecg_monitor/commit/3779e8ab3ce6bfbed7b348153d59ba695fb57e46))
- **fake-device:** add logger ([042edc2](https://github.com/CCXXXI/ecg_monitor/commit/042edc22901359e9fd8bcb297193b79bd2febda6))
- **real-time:** better logger ([b1dc51a](https://github.com/CCXXXI/ecg_monitor/commit/b1dc51a5079f307498335c129cdb08e827e693fb))
- stream -&gt; future ([bdef837](https://github.com/CCXXXI/ecg_monitor/commit/bdef837e1aa40100101fc0c393fe8c3ffb7c176a))

## [0.22.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.21.0...v0.22.0) (2023-03-20)

### Features

- **heart-rate:** smoother progress ([568bd27](https://github.com/CCXXXI/ecg_monitor/commit/568bd27c3d7ddb25f9a67b1fa25e67914d1e27d1))

### Bug Fixes

- **heart-rate:** correct device check ([a8145d1](https://github.com/CCXXXI/ecg_monitor/commit/a8145d1cdda72d5e58ed381d344e27c537600c1e))

### Performance Improvements

- **heart-rate:** shorten learning phase ([7d08f57](https://github.com/CCXXXI/ecg_monitor/commit/7d08f57a1d56c1bb8ee3cf8eaa886bb512fd2200))

### Miscellaneous Chores

- update PanTompkinsQRS submodule ([0899689](https://github.com/CCXXXI/ecg_monitor/commit/0899689a2349f410b6910f35b38294ae994dbcb9))

## [0.21.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.20.2...v0.21.0) (2023-03-20)

### Features

- full l10n support ([3ef13b8](https://github.com/CCXXXI/ecg_monitor/commit/3ef13b853d4d503f827a14b7aac13dcd6abd1e5e))
- l10n for appName ([2db6545](https://github.com/CCXXXI/ecg_monitor/commit/2db65454f3c3efb47b02cfd6d06b2ce3e143fc23))
- l10n for zh-Hans-CN ([fecbd2a](https://github.com/CCXXXI/ecg_monitor/commit/fecbd2aa16ef1f62021f51f4e68494c7563d8b93))
- partial l10n for en-Latn-US ([e1a391e](https://github.com/CCXXXI/ecg_monitor/commit/e1a391e3ba56ce2de36e02d6d08511272a996ac2))
- **real-time:** larger font ([885b76b](https://github.com/CCXXXI/ecg_monitor/commit/885b76b7a309f453411c3ca73cbe76d024c62427))
- **real-time:** show device manger button if device not available ([fc08cc4](https://github.com/CCXXXI/ecg_monitor/commit/fc08cc4bf42204ee03527d03b0e3eb95791c1735))

### Bug Fixes

- **me:** l10n app name ([42b4f84](https://github.com/CCXXXI/ecg_monitor/commit/42b4f843325fb7864c8350b826659e9f43863b40))
- **real-time:** correct connected device check ([fd1fd22](https://github.com/CCXXXI/ecg_monitor/commit/fd1fd22071120dcd30f4311b15e71d629e5f873e))
- rerun build_runner ([55b38cb](https://github.com/CCXXXI/ecg_monitor/commit/55b38cb4505cb62f7fe95e2a299e53c0aa21be40))
- shorten en strings ([67f7336](https://github.com/CCXXXI/ecg_monitor/commit/67f7336f69b6f49c8497c6e7cdc2a7d497cb1393))

### Build System

- flutter pub add flutter_localizations --sdk=flutter ([9dbb972](https://github.com/CCXXXI/ecg_monitor/commit/9dbb97275336176cbf80cf2559063b661dfcb583))
- flutter pub add intl ([1018c5f](https://github.com/CCXXXI/ecg_monitor/commit/1018c5fd65e6570cd002d4a153adbf181f440ca5))

### Continuous Integration

- **check:** ignore generated files ([f9a5d7d](https://github.com/CCXXXI/ecg_monitor/commit/f9a5d7db81d6117bcc333877d3966836eacb7d5a))

### Miscellaneous Chores

- add en arb ([6ba0f72](https://github.com/CCXXXI/ecg_monitor/commit/6ba0f72fef591c733c5478243f728d605995fa43))
- add zh arb ([fd6c6d5](https://github.com/CCXXXI/ecg_monitor/commit/fd6c6d59d0e6f0f1e01ea9ab256fe2b9c7805094))
- **deps:** update actions/deploy-pages action to v2 ([#216](https://github.com/CCXXXI/ecg_monitor/issues/216)) ([a41cd76](https://github.com/CCXXXI/ecg_monitor/commit/a41cd76c5be494cb4becb129ef1b153b0e89142c))
- initialize Flutter Intl ([78f09d8](https://github.com/CCXXXI/ecg_monitor/commit/78f09d8def0a2a1f9691a9d1b551fb135363a3f7))
- save IDEA setting ([8fdcf90](https://github.com/CCXXXI/ecg_monitor/commit/8fdcf901792bd8f841751b919412516ae4f3d1a0))
- update IDEA config ([7a14b53](https://github.com/CCXXXI/ecg_monitor/commit/7a14b53b421a6e7596113578f28c2b071bca6361))
- update l10n ([f040902](https://github.com/CCXXXI/ecg_monitor/commit/f040902e84021463369fa3582d868960506a2a6d))

### Code Refactoring

- **main:** simplify l10n ([56f956e](https://github.com/CCXXXI/ecg_monitor/commit/56f956e49de7656ecc52ea56525bf04ef435238b))
- merge keys.dart to strings.dart ([7a1317c](https://github.com/CCXXXI/ecg_monitor/commit/7a1317cb7da77d033620f70ef83ea1befc02ab1e))
- move data.dart ([8b93233](https://github.com/CCXXXI/ecg_monitor/commit/8b93233f308cb91e92d6de5c0b3418b0093912e3))
- move utils/constants/ to utils/ ([42171e2](https://github.com/CCXXXI/ecg_monitor/commit/42171e268dab258286855d8d40e9782ab52c8cc9))
- simplify urls ([e960d5d](https://github.com/CCXXXI/ecg_monitor/commit/e960d5dfbf1235a9e04cbf3668de80caa4d3be13))

### Styles

- dart fix --apply ([ec68485](https://github.com/CCXXXI/ecg_monitor/commit/ec6848525380b1801e70c3b31ad2a12f49a5218d))

### Tests

- **main:** fix test ([e2ca98b](https://github.com/CCXXXI/ecg_monitor/commit/e2ca98bf52366bb82469ce8580af686d71d16fd0))

## [0.20.2](https://github.com/CCXXXI/ecg_monitor/compare/v0.20.1...v0.20.2) (2023-03-17)

### Bug Fixes

- **home:** import foundation ([5be1281](https://github.com/CCXXXI/ecg_monitor/commit/5be1281d91931ff5453cfbaf22a32c3a70d4ff07))

### Reverts

- Revert "refactor(device): move device.dart to device/" ([f9a7c9b](https://github.com/CCXXXI/ecg_monitor/commit/f9a7c9b05835b5926b45ff0cf030d893b8603860))

### Miscellaneous Chores

- **deps:** update dependency all_lint_rules_community to ^0.0.27 ([#213](https://github.com/CCXXXI/ecg_monitor/issues/213)) ([0d45998](https://github.com/CCXXXI/ecg_monitor/commit/0d45998a0066d30caaf0a5bf5efa066001c0b644))

### Build System

- add functional_widget ([2466780](https://github.com/CCXXXI/ecg_monitor/commit/2466780bca7d87350b817c9dcb879f5ae5193d14))
- flutter pub upgrade ([1813592](https://github.com/CCXXXI/ecg_monitor/commit/1813592efdf6ae708528b808b32932d895810f0c))

### Code Refactoring

- **analytics:** make Analytics swidget ([687483c](https://github.com/CCXXXI/ecg_monitor/commit/687483c8462aa3c09595ef7534b2d4c0a1da8a0b))
- **chart:** make Chart swidget ([d9d33ad](https://github.com/CCXXXI/ecg_monitor/commit/d9d33ad5015a8c37872c6c08779e43d0a89d2b07))
- **chart:** make Chart3Lead swidget ([fa29ed5](https://github.com/CCXXXI/ecg_monitor/commit/fa29ed5b1600224db02bf647f88ef0fa245f1366))
- **device:** make DeviceList cwidget ([8fa144d](https://github.com/CCXXXI/ecg_monitor/commit/8fa144dd5a96380fb0c0b5d23386e774579673d0))
- **device:** make DeviceManager cwidget ([24123d2](https://github.com/CCXXXI/ecg_monitor/commit/24123d2be894d25605a1bd88dcf56c0abc4dce00))
- **device:** make DeviceNew cwidget ([9237485](https://github.com/CCXXXI/ecg_monitor/commit/9237485b66dc9cfae0fa59f6f7c2407f3a7e702f))
- **device:** make NoDevice swidget ([6a128cf](https://github.com/CCXXXI/ecg_monitor/commit/6a128cfd205042be4dace138ee16167b9b1691cc))
- **device:** move device.dart to device/ ([e99b8a1](https://github.com/CCXXXI/ecg_monitor/commit/e99b8a19d767d8eb2bd58c36dd7dedc89aeb5250))
- enable debugFillProperties for functional_widget ([b81662a](https://github.com/CCXXXI/ecg_monitor/commit/b81662a090672394ab36a5faeb341e964db33b32))
- **heart-rate:** make HeartRateWidget (stub ver) swidget ([8af1fd4](https://github.com/CCXXXI/ecg_monitor/commit/8af1fd4dd6124844a55fa7020b0a244984bba39c))
- **heart-rate:** make HeartRateWidget cwidget ([3319f1c](https://github.com/CCXXXI/ecg_monitor/commit/3319f1c529c1210cb2f905529ffba291613a4dba))
- **heart-rate:** remove unused context param ([f5d88b2](https://github.com/CCXXXI/ecg_monitor/commit/f5d88b27374af59cfd10bbca6e9202a2c24ac47c))
- **history:** make History swidget ([eed1b05](https://github.com/CCXXXI/ecg_monitor/commit/eed1b059c9fb34c2af42608ac80bea53d1fe0d67))
- **home:** make Home cwidget ([712b4e3](https://github.com/CCXXXI/ecg_monitor/commit/712b4e3a782d3d439869aabe2aaa1d71e17d5beb))
- **main:** make App swidget ([3a1f804](https://github.com/CCXXXI/ecg_monitor/commit/3a1f804f2f758d9e3dd635c90f4f7f0591b9e1a1))
- **main:** make AppCore swidget ([98636ea](https://github.com/CCXXXI/ecg_monitor/commit/98636eaad1fe6895ef6eee6c640314766c14464b))
- **main:** reorder ([969ff06](https://github.com/CCXXXI/ecg_monitor/commit/969ff065eb19915684eeada2fe7f958fd90701af))
- **me:** make Me swidget ([3f506bd](https://github.com/CCXXXI/ecg_monitor/commit/3f506bdc726374e2e5a6b41dd5e07ba0d5daf606))
- **real-time:** make RealTime swidget ([a2a4a7a](https://github.com/CCXXXI/ecg_monitor/commit/a2a4a7a568cf9f96994c11fe37bde720c942c9df))
- **real-time:** make RealTimeChart cwidget ([ba07dc0](https://github.com/CCXXXI/ecg_monitor/commit/ba07dc06755dd3b9557e3c3bac333cdd92239ab0))
- **settings:** make ChartSettings swidget ([617b8c9](https://github.com/CCXXXI/ecg_monitor/commit/617b8c9bdd18d412f706a1c15a280e68b23947e4))
- **settings:** make SectionTitle swidget ([def213d](https://github.com/CCXXXI/ecg_monitor/commit/def213d6648ca8c0e0091000a29922172bb53b2c))
- **settings:** make Settings cwidget ([b197d68](https://github.com/CCXXXI/ecg_monitor/commit/b197d68fcebb96386616e5878f24c44403e5f7f1))

## [0.20.1](https://github.com/CCXXXI/ecg_monitor/compare/v0.20.0...v0.20.1) (2023-03-16)

### Continuous Integration

- **build:** also build debug version ([#210](https://github.com/CCXXXI/ecg_monitor/issues/210)) ([fd488f0](https://github.com/CCXXXI/ecg_monitor/commit/fd488f0d6befbf12dea70ea05480e13066462baf))

## [0.20.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.19.0...v0.20.0) (2023-03-16)

### Features

- **chart:** less barWidth ([ea1470f](https://github.com/CCXXXI/ecg_monitor/commit/ea1470f7863385d9f70e8736e3f7ad790b464a23))
- **dio:** addSentry ([65a4b0d](https://github.com/CCXXXI/ecg_monitor/commit/65a4b0dee81bba5be07cf5bfb7534657f33b9f43))
- **heart-rate:** 10s -&gt; 5 QRSs ([25fd505](https://github.com/CCXXXI/ecg_monitor/commit/25fd5055f5ba3caf0ea87b148d58869a8cd3f374))
- **heart-rate:** show progress ([9f44033](https://github.com/CCXXXI/ecg_monitor/commit/9f440331aa46eb41b727f1d81ac1683ca8e4f206)), closes [#199](https://github.com/CCXXXI/ecg_monitor/issues/199)

### Bug Fixes

- **deps:** update dependency sentry_flutter to v7 ([#206](https://github.com/CCXXXI/ecg_monitor/issues/206)) ([c460f33](https://github.com/CCXXXI/ecg_monitor/commit/c460f334f3b06af73832033f4d2fd7d0f924385b))
- **deps:** update dependency sentry_logging to v7 ([#207](https://github.com/CCXXXI/ecg_monitor/issues/207)) ([de73885](https://github.com/CCXXXI/ecg_monitor/commit/de73885d44e1ff933d4843bafa8cb95ae8225cb7))
- **heart-rate:** 4s learning & 1 beat ([b6bf0cf](https://github.com/CCXXXI/ecg_monitor/commit/b6bf0cff7cf78ffd30ea89f1679c22a74b58731e))
- **heart-rate:** reset start time & buffer when rebuild ([12e75cf](https://github.com/CCXXXI/ecg_monitor/commit/12e75cfb0aaf19d25a337b3c94be15c267f97538))
- **heart-rate:** update PanTompkinsQRS ([91c80eb](https://github.com/CCXXXI/ecg_monitor/commit/91c80ebdfb5f30be39a41f9f5c39d60f4ad76852))

### Reverts

- make HeartRateData public again ([6e2c8b9](https://github.com/CCXXXI/ecg_monitor/commit/6e2c8b9a0948a2e036ec576a28624b3e1c07a792))

### Miscellaneous Chores

- **deps:** update dependency all_lint_rules_community to ^0.0.26 ([#205](https://github.com/CCXXXI/ecg_monitor/issues/205)) ([5063487](https://github.com/CCXXXI/ecg_monitor/commit/5063487ae55ff3742537d31c7681dfd04fa8cc38))

### Code Refactoring

- **heart-rate:** make HeartRateData private ([3b7d055](https://github.com/CCXXXI/ecg_monitor/commit/3b7d0555b567188fc968cfc2210549200afa1b55))
- **heart-rate:** make HeartRateData visible for testing ([a4f9286](https://github.com/CCXXXI/ecg_monitor/commit/a4f9286b06e2b2ad826e05e06901356d580d2734))
- **heart-rate:** rename HeartRate to HeartRateWidget ([6595ccb](https://github.com/CCXXXI/ecg_monitor/commit/6595ccbc3dc4265f08f0dc60e42ca25cb1939c17))
- **heart-rate:** rename heartRateUnit to bpm ([5ff4d2a](https://github.com/CCXXXI/ecg_monitor/commit/5ff4d2aaad8a89e732799e5390ec4482a83b41e0))
- **heart-rate:** rename rate to data ([19024b9](https://github.com/CCXXXI/ecg_monitor/commit/19024b989b895033f39ccf325fc35c6b1a44bb44))
- use DateTime instead of double for EcgData.time ([#202](https://github.com/CCXXXI/ecg_monitor/issues/202)) ([843d723](https://github.com/CCXXXI/ecg_monitor/commit/843d72341a9371af0c2d7f4d5fc3a00630b7c88f))

### Tests

- **heart-rate:** add test for HeartRateData ([98b1eff](https://github.com/CCXXXI/ecg_monitor/commit/98b1eff7ad8385d9c1296d85773b7958ca92d600))

### Build System

- flutter pub add sentry_dio ([11fe38c](https://github.com/CCXXXI/ecg_monitor/commit/11fe38c422f274e719658f979a671339f9e8da3b))

## [0.19.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.18.0...v0.19.0) (2023-03-15)

### Features

- **dio:** add PrettyDioLogger ([1dc73f0](https://github.com/CCXXXI/ecg_monitor/commit/1dc73f01207c40da9bad5dafaaa2ce4166aa74ed))
- **settings:** add network test ([91500f8](https://github.com/CCXXXI/ecg_monitor/commit/91500f84c8bbaeb4a121ddba365ff38b6e06da6d))
- **settings:** update test url ([e58634f](https://github.com/CCXXXI/ecg_monitor/commit/e58634fee35eee68c6d132b0c173986ac1d67ba1))
- **ume:** add DataCleanPanel ([9c64d61](https://github.com/CCXXXI/ecg_monitor/commit/9c64d612920cfeb8891e0b38490fb72ca701ada2))
- **ume:** add DesignerCheck ([d4d720e](https://github.com/CCXXXI/ecg_monitor/commit/d4d720e024ef8095dda8059dc2d50de874a682e8))
- **ume:** add DioInspector ([570993b](https://github.com/CCXXXI/ecg_monitor/commit/570993bda803edf3911332c94233699255c4b4bf))
- **ume:** add SharedPreferencesInspector ([fc35af6](https://github.com/CCXXXI/ecg_monitor/commit/fc35af60c5eab10d08a7a688ed73d9b23998c852))
- **ume:** add SlowAnimation ([a61f65c](https://github.com/CCXXXI/ecg_monitor/commit/a61f65ccd45a4bf88716367e2b6be5a5668526de))

### Code Refactoring

- **settings:** reorder classes ([5aa2fed](https://github.com/CCXXXI/ecg_monitor/commit/5aa2fed791e1df2b1d2839d1096ea1458ebec1f0))

### Documentation

- **ume:** remove useless comment ([2e6541f](https://github.com/CCXXXI/ecg_monitor/commit/2e6541fb1d166fa7202ce83dd594e69595ebcedc))

### Build System

- add & override flutter_ume_kit_clean_local_data ([d797b5d](https://github.com/CCXXXI/ecg_monitor/commit/d797b5def260faabb593e158509bfac2c82a6121))
- add & override flutter_ume_kit_designer_check ([7148a92](https://github.com/CCXXXI/ecg_monitor/commit/7148a920373acbdf34687ce35fc15ed3c383ba6c))
- add & override flutter_ume_kit_shared_preferences ([e5930a3](https://github.com/CCXXXI/ecg_monitor/commit/e5930a37ebd62ae6d76e5790c17b19db7cfb1f50))
- add & override flutter_ume_kit_slow_animation ([b3100dd](https://github.com/CCXXXI/ecg_monitor/commit/b3100ddf3b15143d1ef8b85d2e00eb84dd4117e5))
- flutter pub add dio ([9b68334](https://github.com/CCXXXI/ecg_monitor/commit/9b68334f948eb1807775ee209058567c50b6cbe5))
- flutter pub add flutter_ume_kit_dio ([e06044a](https://github.com/CCXXXI/ecg_monitor/commit/e06044a49cc3740cf598f1430c6d7274f6c481cc))
- flutter pub add pretty_dio_logger ([3c0d85b](https://github.com/CCXXXI/ecg_monitor/commit/3c0d85b4b9af6bfe59d54e7094434a2bc458b763))
- override flutter_ume_kit_dio ([b58ca0b](https://github.com/CCXXXI/ecg_monitor/commit/b58ca0bf85ec7667439da8e79ffff5761f11194f))
- override flutter_ume_kit_perf & flutter_ume_kit_show_code ([fb026a1](https://github.com/CCXXXI/ecg_monitor/commit/fb026a113e0bd9cd14e9cdb8b7960761599936a9))
- remove git ref in overrides ([30a136d](https://github.com/CCXXXI/ecg_monitor/commit/30a136dd8a7df8009670a711f507205d62fb68f9))
- upgrade dependencies ([9d93c50](https://github.com/CCXXXI/ecg_monitor/commit/9d93c506cf95fd0500543df0c1891e2562cdbab5))

## [0.18.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.17.1...v0.18.0) (2023-03-14)

### ⚠ BREAKING CHANGES

- **settings:** landscapeDuration cannot be larger than 10.

### Features

- add PanTompkinsQRS license to about ([6d5c825](https://github.com/CCXXXI/ecg_monitor/commit/6d5c825ed5fd5a047e48e54c28e7e96e40232ce1))
- **chart:** add title ([2362194](https://github.com/CCXXXI/ecg_monitor/commit/2362194cb4fed84e442817c800cbd1af6fcc93f1))
- **real_time:** show fake heart rate ([349905d](https://github.com/CCXXXI/ecg_monitor/commit/349905dfc5d50309f4967a9fb32b620c7368466a))
- **realtime:** 3-lead data ([46f673b](https://github.com/CCXXXI/ecg_monitor/commit/46f673bc11859cdb1035198892c8beb7af69b934))
- **realtime:** 3-lead UI ([d185ecc](https://github.com/CCXXXI/ecg_monitor/commit/d185ecc1dbe0709ed6e494aa7defe3c61a4fde60))
- **realtime:** show heart rate ([3a97223](https://github.com/CCXXXI/ecg_monitor/commit/3a972235ec7704cbca4812d855f385f9fb5cf21a))
- **realtime:** show heartRateDetecting notice ([b034b9b](https://github.com/CCXXXI/ecg_monitor/commit/b034b9b4743ce4222778896149d1d137be07c66c))
- **settings:** landscapeDuration is 1~10 now ([0ee66fb](https://github.com/CCXXXI/ecg_monitor/commit/0ee66fbc2eed69e8a7b498af59077cc7dfa6e0f0))
- **settings:** set default landscapeDuration to 2 ([5bd98ff](https://github.com/CCXXXI/ecg_monitor/commit/5bd98ff9939caeb1a242661f9b4b2f0246a23874))

### Bug Fixes

- disable heart rate on web ([75bde8e](https://github.com/CCXXXI/ecg_monitor/commit/75bde8e2efe0968901b3ece99eebc2da4b1a91b1))

### Documentation

- **readme:** Submodules -&gt; Related Repositories ([521e858](https://github.com/CCXXXI/ecg_monitor/commit/521e858bf5db67611c1165d8372f7685584c2344))
- **readme:** update submodules desc ([3b7197e](https://github.com/CCXXXI/ecg_monitor/commit/3b7197ee9162b0a1ecda1e0b1f552b70a24843bd))

### Build System

- add PanTompkinsQRS to CMakeLists.txt ([6f7acb3](https://github.com/CCXXXI/ecg_monitor/commit/6f7acb3ee5f942f2a5343e5f7dff089ff855f0ae))
- correct CMakeLists.txt ([09e6aba](https://github.com/CCXXXI/ecg_monitor/commit/09e6aba79a17cf31a1329d8a459612aa03102a89))
- flutter pub add dev:ffigen ffi ([4cb1da0](https://github.com/CCXXXI/ecg_monitor/commit/4cb1da03eb35bc24fa990e20731022f088d60a6a))

### Miscellaneous Chores

- save IDEA config ([cc6ad35](https://github.com/CCXXXI/ecg_monitor/commit/cc6ad35dd7d001410ecb09a96c943c0727805fec))
- update IDEA config ([1b2d034](https://github.com/CCXXXI/ecg_monitor/commit/1b2d034f29be180f2eb283f959c63b8d20fea2bc))
- update input data ([0834783](https://github.com/CCXXXI/ecg_monitor/commit/0834783fb2c0ca0c67b1891cee36015a05afae3a))
- update PanTompkinsQRS ([7f58f27](https://github.com/CCXXXI/ecg_monitor/commit/7f58f27b45cb28714d52ea287cfb5ae0f26c29fb))
- update PanTompkinsQRS ([20b5b12](https://github.com/CCXXXI/ecg_monitor/commit/20b5b1250936d1e2c939a3920419a6df89c09d6d))
- update submodule ([c4210a6](https://github.com/CCXXXI/ecg_monitor/commit/c4210a622e71bb563710ed49a86777412f13fbbf))
- update submodules again ([#196](https://github.com/CCXXXI/ecg_monitor/issues/196)) ([c3826d9](https://github.com/CCXXXI/ecg_monitor/commit/c3826d9b109fcf7d3121d61cd729194637af7fa3))

### Tests

- add test for license ([403ec37](https://github.com/CCXXXI/ecg_monitor/commit/403ec37d00eeeea05165e4827e0ab2fbdf092ae6))
- **device:** initData before tests ([e34c602](https://github.com/CCXXXI/ecg_monitor/commit/e34c6028edc25c8b7739f03062dc8ad177e54e99))

### Styles

- restyle by prettier-yaml ([28e0dfe](https://github.com/CCXXXI/ecg_monitor/commit/28e0dfe5f1e53b3d1589a2ec5a330b7163c55407))

### Continuous Integration

- **build:** checkout submodules ([395a951](https://github.com/CCXXXI/ecg_monitor/commit/395a951d59ca981540adc307b72f11d15521d230))
- **check:** checkout submodules ([f9984bf](https://github.com/CCXXXI/ecg_monitor/commit/f9984bfc72a37615fbd505eaa0e83dc9cfb384c0))
- **check:** ignore generated_bindings ([f68e86b](https://github.com/CCXXXI/ecg_monitor/commit/f68e86b1c673a1bfebb855ce61684c00d004c9c5))
- **coverage:** add codecov token ([#197](https://github.com/CCXXXI/ecg_monitor/issues/197)) ([8d96f8a](https://github.com/CCXXXI/ecg_monitor/commit/8d96f8a787949317c808b0bcde8b6c87e29cda20))
- **restyled:** update restyled config ([#192](https://github.com/CCXXXI/ecg_monitor/issues/192)) ([e9bb6ec](https://github.com/CCXXXI/ecg_monitor/commit/e9bb6ec1b98445d782eecff512ad31156b43b1c6))
- update renovate.json ([afc71f1](https://github.com/CCXXXI/ecg_monitor/commit/afc71f1f87d4d99f35cd28356c2c6bdf898446ae))

### Code Refactoring

- 3-leads ([c0d2966](https://github.com/CCXXXI/ecg_monitor/commit/c0d29667f8c31288254bc0e5b313b8faa2598ee1))
- add EcgData ([01cd7b5](https://github.com/CCXXXI/ecg_monitor/commit/01cd7b5f7481b333f795fbe446d0b115b7df8169))
- correct import ([37a9da8](https://github.com/CCXXXI/ecg_monitor/commit/37a9da85f76f54012bbc4ec75f1e00ffa52272a8))
- flutter pub run ffigen ([a60378c](https://github.com/CCXXXI/ecg_monitor/commit/a60378c30282cc9b491f0d8a5fc5ba8e70071ce8)), closes [#178](https://github.com/CCXXXI/ecg_monitor/issues/178)
- **heart-rate:** improve ffigen config ([26ca85a](https://github.com/CCXXXI/ecg_monitor/commit/26ca85a5a7c80e43135bbbecaae00dd99e06c2a5))
- move & add submodules ([394403e](https://github.com/CCXXXI/ecg_monitor/commit/394403e7c6f151daaa24d7637f900fc258c174f3))
- move heart rate to subfolder ([ef802b8](https://github.com/CCXXXI/ecg_monitor/commit/ef802b820409824e749041768889b2a64d714d33))
- move real time chart to subfolder ([1d3e086](https://github.com/CCXXXI/ecg_monitor/commit/1d3e08654f6f5aee4fdf328f9b576a4180491771))
- **real_time:** HeartRate widget ([e820a5f](https://github.com/CCXXXI/ecg_monitor/commit/e820a5fecad0c5be409384786246f8ef9c12f31b))
- **realtime:** extract add & addPoint ([9afb48e](https://github.com/CCXXXI/ecg_monitor/commit/9afb48e01413a5e286317b849a6035d2a95f6e16))

## [0.17.1](https://github.com/CCXXXI/ecg_monitor/compare/v0.17.0...v0.17.1) (2023-03-07)

### Bug Fixes

- **device:** correct FakeDevice.ecgStream ([79f1248](https://github.com/CCXXXI/ecg_monitor/commit/79f1248a29c3eb99989c12122d11966f2155ae09))

### Documentation

- **realtime:** improve docstring ([4435386](https://github.com/CCXXXI/ecg_monitor/commit/4435386ccd5c953592681de80cf4b3055547b54e))

### Code Refactoring

- **device:** reorder fields ([fef0669](https://github.com/CCXXXI/ecg_monitor/commit/fef0669526e7d97e09f5b66189fd2c5216de4f09))
- **device:** separate fakeDevice ([fadebb1](https://github.com/CCXXXI/ecg_monitor/commit/fadebb199fee08318b608672c3acab890516adf6))
- **realtime:** extract & rename distance ([c1cffa7](https://github.com/CCXXXI/ecg_monitor/commit/c1cffa7c40f5d5e1683a4309d2413bbe9be5ff75))
- **realtime:** log for Points.add ([ef51501](https://github.com/CCXXXI/ecg_monitor/commit/ef5150195190980563cff9934d5a1488524000c7))

### Tests

- **device:** add test for fake device ([ff4bcdd](https://github.com/CCXXXI/ecg_monitor/commit/ff4bcdd5ec633eaca24c7052c61379f425c32216))

## [0.17.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.16.0...v0.17.0) (2023-03-07)

### Features

- **settings:** add analytics.autoGenerate setting ([094c940](https://github.com/CCXXXI/ecg_monitor/commit/094c94020a3ffd72ba721823c99b508c13d32ecf))
- **settings:** reorder settings ([cd02420](https://github.com/CCXXXI/ecg_monitor/commit/cd02420f20ec74c47d971d8150cd489b15f20864))
- **settings:** update strings ([9ba26c6](https://github.com/CCXXXI/ecg_monitor/commit/9ba26c61e0250b0e74bf0a6e5bb2129156ab5987))

### Code Refactoring

- **settings:** move Divider out of \_ChartSettings ([8ec58fe](https://github.com/CCXXXI/ecg_monitor/commit/8ec58fed2f6305ece8319a225bfebe5c5be980dd))

## [0.16.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.15.2...v0.16.0) (2023-03-07)

### Features

- add restart action ([1b94e8d](https://github.com/CCXXXI/ecg_monitor/commit/1b94e8d82d8df1473d6460f1d08d1dcf30e2278b))
- add ume plugins ([eb3efaf](https://github.com/CCXXXI/ecg_monitor/commit/eb3efaf035f10a302ebf13c5037f6a083ceabd56))
- **me:** add build type to about ([4d4b127](https://github.com/CCXXXI/ecg_monitor/commit/4d4b127737c9047f9641abc032fe4df707af18dc))
- **settings:** add desc for devTools ([eede45b](https://github.com/CCXXXI/ecg_monitor/commit/eede45badbf995661df922b993b8990d9c351ad9))
- **settings:** enable ume iff show dev tools ([e2f36a5](https://github.com/CCXXXI/ecg_monitor/commit/e2f36a5136fc5c5b02c1c3fe1e02606b27d19da3))
- **ume:** log to console ([4870b7a](https://github.com/CCXXXI/ecg_monitor/commit/4870b7aa6babfbba5eb37068c78fa8233d1d67da))

### Bug Fixes

- **ume:** disable some plugins in release mode ([9058450](https://github.com/CCXXXI/ecg_monitor/commit/905845082fbc3876a3d2c0fd40c12d87b779eb42))
- universal_io ([0562e4c](https://github.com/CCXXXI/ecg_monitor/commit/0562e4c58622c2efdc00b612258569fae1f6b04e))

### Reverts

- Revert "build: flutter pub remove flutter_launcher_icons" ([427118e](https://github.com/CCXXXI/ecg_monitor/commit/427118e8c09b321799409ea986c754b793e21149))
- Revert "build: override dependency" ([f9bd357](https://github.com/CCXXXI/ecg_monitor/commit/f9bd3579c2a9105499ea1af8199172fdd6beb1d9))
- Revert "docs: add comment for flutter_launcher_icons" ([688270a](https://github.com/CCXXXI/ecg_monitor/commit/688270a992857219486c100ccc4ed0d0657b739e))

### Documentation

- add comment for flutter_launcher_icons ([b03f64d](https://github.com/CCXXXI/ecg_monitor/commit/b03f64d49b333d410a5b875cb05dfb9199d6c1ef))

### Code Refactoring

- dart fix ([5e1e0c9](https://github.com/CCXXXI/ecg_monitor/commit/5e1e0c9b6109979be7f13618f3861742a1660bc0))
- **logger:** update home logger name ([31de3a2](https://github.com/CCXXXI/ecg_monitor/commit/31de3a2790a8c70f8e73e31094913c1fb361cedf))
- **main:** extract AppCore ([2fdf551](https://github.com/CCXXXI/ecg_monitor/commit/2fdf5515e76a2f14b5a937ee93025ed3c337fcc0))
- simplify imports ([9f8e735](https://github.com/CCXXXI/ecg_monitor/commit/9f8e735019d3d0747fc45c017168fc7af42bb953))

### Miscellaneous Chores

- save idea config ([2c5263d](https://github.com/CCXXXI/ecg_monitor/commit/2c5263dfd1db0d782aa2f4cfdacecc5339e69f81))

### Build System

- add ume packages ([a050dec](https://github.com/CCXXXI/ecg_monitor/commit/a050decdcd4ada80532019478f3a9755d9e309fc))
- flutter pub add restart_app ([c2dba73](https://github.com/CCXXXI/ecg_monitor/commit/c2dba737963c5df9a4d2351e42100985d2834b78))
- flutter pub add universal_io ([21cecfb](https://github.com/CCXXXI/ecg_monitor/commit/21cecfb0aba187558f60bef53fe7a5b4d41b3400))
- flutter pub get ([cbb6f35](https://github.com/CCXXXI/ecg_monitor/commit/cbb6f3517aeaae972a0e78b364b2221f8fa3d0ad))
- flutter pub remove flutter_launcher_icons ([b2a3e6f](https://github.com/CCXXXI/ecg_monitor/commit/b2a3e6f2ae1d8516e81e6751a5d120cadee2b31e))
- flutter pub remove flutter_ume_kit_dio ([9b5ef2c](https://github.com/CCXXXI/ecg_monitor/commit/9b5ef2c41f4c243b9417f7121a51543b2a98423c))
- flutter pub upgrade ([f324aac](https://github.com/CCXXXI/ecg_monitor/commit/f324aac56631e33740e4987fa3261fa6e497d8d8))
- flutter pub upgrade ([1feb8ac](https://github.com/CCXXXI/ecg_monitor/commit/1feb8acc76463c3faddc1d3ed1b1d4c77be0c1f1))
- override dependency ([0cf896a](https://github.com/CCXXXI/ecg_monitor/commit/0cf896aa43d5f9d01fa0f97f66c5197975d7a525))
- override ume dependencies ([aace266](https://github.com/CCXXXI/ecg_monitor/commit/aace2665dcc1b89a73f96868e2190e23aff8bce3))

## [0.15.2](https://github.com/CCXXXI/ecg_monitor/compare/v0.15.1...v0.15.2) (2023-03-03)

### Continuous Integration

- **build:** correct bool comparison ([f1b18d2](https://github.com/CCXXXI/ecg_monitor/commit/f1b18d2f1a7fe100a9901d7571dac7c4f4f40b5a))
- **build:** correct ref check ([701883f](https://github.com/CCXXXI/ecg_monitor/commit/701883f417009880b2bd2cc6d18d6c290f19df36))
- **build:** merge all release files to same artifact ([f75e988](https://github.com/CCXXXI/ecg_monitor/commit/f75e988b4c02eb96260f4811b4c0585b6fa1aab5))
- **build:** release more files ([74bdd0f](https://github.com/CCXXXI/ecg_monitor/commit/74bdd0fb1a30eff32aca9413ac129676b391690c))

## [0.15.1](https://github.com/CCXXXI/ecg_monitor/compare/v0.15.0...v0.15.1) (2023-03-03)

### Bug Fixes

- **deps:** update dependency com.android.tools.build:gradle to v7.4.2 ([#161](https://github.com/CCXXXI/ecg_monitor/issues/161)) ([8e4dbb4](https://github.com/CCXXXI/ecg_monitor/commit/8e4dbb4962e9cba1648e11c37547fc8551878cb4))

### Continuous Integration

- rename release to release-please ([92f1056](https://github.com/CCXXXI/ecg_monitor/commit/92f1056c6a3a84d38bf51417f2a07b194e6ce2dc))
- sentry ([d3c2603](https://github.com/CCXXXI/ecg_monitor/commit/d3c260343cc39ab2cbc5914a462b30cbcebcb7d3))
- tag name check for release ([ff14812](https://github.com/CCXXXI/ecg_monitor/commit/ff1481231425edc5eaab2c4535abe5d0a709d583))

## [0.15.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.14.0...v0.15.0) (2023-02-27)

### ⚠ BREAKING CHANGES

- **settings:** The keys are updated so the settings are restored to default.
- **settings:** update bool setting keys
- **settings:** Restore the default autoUpload setting.

### Features

- **history:** add history page ([4cc7138](https://github.com/CCXXXI/ecg_monitor/commit/4cc7138fee3f92bdac4fc0806587b3bebbc6beec))
- **history:** add history settings ([515c55a](https://github.com/CCXXXI/ecg_monitor/commit/515c55ac060672953720d362d516199a8fe6c0cf))
- reorder settings ([648a3ce](https://github.com/CCXXXI/ecg_monitor/commit/648a3cef30516874e813f421f61a605f6e7c36f4))
- **settings:** add history auto upload setting ([6a422ad](https://github.com/CCXXXI/ecg_monitor/commit/6a422ada1acbf7f7a7a60fceae07a54b10627d4f))
- **settings:** add showDevTools settings ([3d38735](https://github.com/CCXXXI/ecg_monitor/commit/3d387358c0b3d1159453daf9d15c54aaddfbbe3a))
- **settings:** move showDots to realTime section ([ece5f66](https://github.com/CCXXXI/ecg_monitor/commit/ece5f666bb4f09610af50a0e5f69bb58e1830561))
- **settings:** remove modelTest ([40f7d64](https://github.com/CCXXXI/ecg_monitor/commit/40f7d648feba3a6e33e77d05f226328c304ac9dd))
- update min distance setting ([443c64e](https://github.com/CCXXXI/ecg_monitor/commit/443c64e0c2b1ce08af2932ce68e7eff6b9467dda))
- use 107_leadII_10min.txt as data source ([c8ec45e](https://github.com/CCXXXI/ecg_monitor/commit/c8ec45e5287f95ea042ab872fc26f6c0ee9dc792))

### Bug Fixes

- **deps:** update dependency fl_chart to ^0.61.0 ([#149](https://github.com/CCXXXI/ecg_monitor/issues/149)) ([b2b9d7e](https://github.com/CCXXXI/ecg_monitor/commit/b2b9d7e1bfd5795340b965fef4029a6391a58345))
- sync fake device data ([1f758fd](https://github.com/CCXXXI/ecg_monitor/commit/1f758fdd7d7cd4472bb4ba1bd6df85ae015ec9d7))
- update strings ([f2a75b8](https://github.com/CCXXXI/ecg_monitor/commit/f2a75b8676f171e6b1dd9ce716bd0c9ec5edad13))

### Performance Improvements

- smaller default duration ([27877dc](https://github.com/CCXXXI/ecg_monitor/commit/27877dc20b33e064de09d364fa833e97d28b646a))

### Documentation

- add submodules ([#158](https://github.com/CCXXXI/ecg_monitor/issues/158)) ([d94fe93](https://github.com/CCXXXI/ecg_monitor/commit/d94fe93c6652544cf4dd4c1250bbe362ff6a3191))

### Miscellaneous Chores

- **deps:** update dependency flutter_launcher_icons to ^0.12.0 ([#156](https://github.com/CCXXXI/ecg_monitor/issues/156)) ([7055b75](https://github.com/CCXXXI/ecg_monitor/commit/7055b7565bb8105144cc67147e7b31ef950edae5))
- **deps:** update dependency gradle to v7.6.1 ([#153](https://github.com/CCXXXI/ecg_monitor/issues/153)) ([158c202](https://github.com/CCXXXI/ecg_monitor/commit/158c202511e7799cb39a65d1bebe0d59cc896779))
- update & apply .gitignore ([#152](https://github.com/CCXXXI/ecg_monitor/issues/152)) ([1c7ab93](https://github.com/CCXXXI/ecg_monitor/commit/1c7ab93ba9221cb95645cf4e635699b063021b6e))

### Code Refactoring

- ecg directory ([306ff97](https://github.com/CCXXXI/ecg_monitor/commit/306ff9723284c8dcb4c4f4ebd05c967118b4401b))
- **me:** rename mine to me ([#155](https://github.com/CCXXXI/ecg_monitor/issues/155)) ([d89ef7d](https://github.com/CCXXXI/ecg_monitor/commit/d89ef7ddb64c67c17299c81ff1e5db8f9ff3d0b6))
- move constants_test.dart to utils/ ([13d4001](https://github.com/CCXXXI/ecg_monitor/commit/13d400145d37d1e18e183d396dc6a2b8b793263b))
- **realtime:** RealTimeChart ([91655eb](https://github.com/CCXXXI/ecg_monitor/commit/91655eb0cd5442836b5995ee2f4919b306cf05bd))
- **realTime:** rename monitor to realTime ([a9e98db](https://github.com/CCXXXI/ecg_monitor/commit/a9e98db050af288d15f244a4a98e750c971ae593))
- **settings:** add DiagnosticsProperty ([f3fb9dd](https://github.com/CCXXXI/ecg_monitor/commit/f3fb9dd239e70ba39bf9c28577a41f6f6fbdd201))
- **settings:** extract ChartSettings ([5f45f8a](https://github.com/CCXXXI/ecg_monitor/commit/5f45f8a71109bccc292269f7fc9e99f096f83629))
- **settings:** extract pref providers ([728c559](https://github.com/CCXXXI/ecg_monitor/commit/728c559151b7b171283beef9f8558166d7598e68))
- **settings:** make \_SectionTitle.padding private ([3207075](https://github.com/CCXXXI/ecg_monitor/commit/3207075b201f22868298a4201f5645fd20bb51ed))
- **settings:** move fakeDeviceOnProvider to pref_providers.dart ([d5a80e3](https://github.com/CCXXXI/ecg_monitor/commit/d5a80e3dc610457008f75129e2a3adbbba07de8e))
- **settings:** move settings to subfolder ([7add24d](https://github.com/CCXXXI/ecg_monitor/commit/7add24df778a0763bbf95d5443607b2c60519e34))
- **settings:** rename MonitorSettingGroup to ChartSettingsData ([63f573a](https://github.com/CCXXXI/ecg_monitor/commit/63f573ac05685744580277e3aeddffefcc40208e))
- **settings:** rename pref_providers.dart to providers.dart ([fc7dbdc](https://github.com/CCXXXI/ecg_monitor/commit/fc7dbdcee567646e5a97d43906e86d62073410a7))
- **settings:** split real time chart settings ([ef35c49](https://github.com/CCXXXI/ecg_monitor/commit/ef35c498cd05ce76fe2780b67b520a918aa6187a))
- **settings:** update autoUpload key ([247c40d](https://github.com/CCXXXI/ecg_monitor/commit/247c40d00274afb54acd3e658151862160febfc8))
- **settings:** update bool setting keys ([879ca78](https://github.com/CCXXXI/ecg_monitor/commit/879ca78be0eb9c39995b12f3c2941fd5538f1035))

## [0.14.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.13.1...v0.14.0) (2023-02-21)

### Features

- **monitor:** update default settings ([20e6c4f](https://github.com/CCXXXI/ecg_monitor/commit/20e6c4fa0a45eed0d3be61d7d71e616afd06c84b))

### Bug Fixes

- **monitor:** prevent curve over shooting ([c2aa6b8](https://github.com/CCXXXI/ecg_monitor/commit/c2aa6b84f67d0d80054b2efa345496cf9e97ac7b))

## [0.13.1](https://github.com/CCXXXI/ecg_monitor/compare/v0.13.0...v0.13.1) (2023-02-21)

### Bug Fixes

- update strings ([#143](https://github.com/CCXXXI/ecg_monitor/issues/143)) ([ca130ab](https://github.com/CCXXXI/ecg_monitor/commit/ca130ab4bedbe6a52283d3b4552540dac7a5818c))

## [0.13.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.12.0...v0.13.0) (2023-02-21)

### Features

- **monitor:** add min distance setting ([f97e903](https://github.com/CCXXXI/ecg_monitor/commit/f97e9031f0f45355e157fdab163b4380489ef591))
- **monitor:** better dot painter ([8bebc85](https://github.com/CCXXXI/ecg_monitor/commit/8bebc853372e9a358c4aeb1db727c046d6cd127f))

### Performance Improvements

- **monitor:** limit min distance of points ([dfe731b](https://github.com/CCXXXI/ecg_monitor/commit/dfe731b0e45974d95efaf3fc004b1459b75afa7a))

### Tests

- **monitor:** normalizedDistance ([27c627a](https://github.com/CCXXXI/ecg_monitor/commit/27c627a2dfec5db41d56ceb2b0c708bf287b959a))

### Code Refactoring

- **monitor:** remove unnecessary code ([ef567c6](https://github.com/CCXXXI/ecg_monitor/commit/ef567c62c4049900b3873d297dd2b3b2701cfaa5))
- **monitor:** simplify setting groups ([be3ccd3](https://github.com/CCXXXI/ecg_monitor/commit/be3ccd38c62e5e2a9cf95f6450f59248b3486d4b))

## [0.12.0](https://github.com/CCXXXI/ecg_monitor/compare/v0.11.2...v0.12.0) (2023-02-21)

### Features

- **mine:** add spaces between numbers and units ([e523c01](https://github.com/CCXXXI/ecg_monitor/commit/e523c0120e7c04d566552cfe3205114b43ff37fc))
- **mine:** update setting titles & subtitles ([1663c96](https://github.com/CCXXXI/ecg_monitor/commit/1663c965de3795acb3a1097ab2248b3d65ffd709))
- **monitor:** add refresh rate setting ([eda813c](https://github.com/CCXXXI/ecg_monitor/commit/eda813c6f2844268b3c26b0fc72d0c514a7a27c6))

### Performance Improvements

- [ImgBot] Optimize images ([#134](https://github.com/CCXXXI/ecg_monitor/issues/134)) ([9885ae2](https://github.com/CCXXXI/ecg_monitor/commit/9885ae25feb5681896242016a369061c575de708))
- **monitor:** slow down UI refresh ([97ca177](https://github.com/CCXXXI/ecg_monitor/commit/97ca177ca7d0cfbf3b337b35d26fbe9a17dfe969))

### Code Refactoring

- **mine:** add setIndex for \_LoggerLevel ([71ec345](https://github.com/CCXXXI/ecg_monitor/commit/71ec3456c65cfb17b87524f7f1ecd42c442dd8ed))
- **mine:** selected.first -&gt; selected.single ([6401b80](https://github.com/CCXXXI/ecg_monitor/commit/6401b80ae71d04fb8aa0bb0aa2837e5599dae7e7))
- **monitor:** make refreshInterval private ([766ff6e](https://github.com/CCXXXI/ecg_monitor/commit/766ff6eaec72c7cb98323edea61ef18a6ae8efed))
- move ProviderScope out of App ([c08e844](https://github.com/CCXXXI/ecg_monitor/commit/c08e844bf80b57f92e69394b32be538482ec7c66))

### Tests

- add tests for App ([0345fac](https://github.com/CCXXXI/ecg_monitor/commit/0345facc65426a813c80ef73a122067e611c2d61))

### Styles

- add trailing comma ([54a3d80](https://github.com/CCXXXI/ecg_monitor/commit/54a3d808d7f1c19e3f260cd28a35226acd77b38e))

## [0.11.2](https://github.com/CCXXXI/ecg_monitor/compare/v0.11.1...v0.11.2) (2023-02-20)

### Bug Fixes

- **mine:** disable modelTest button on web ([#96](https://github.com/CCXXXI/ecg_monitor/issues/96)) ([9de1712](https://github.com/CCXXXI/ecg_monitor/commit/9de1712d8b2845ab9e6f88c986b5db27e29927af))

### Documentation

- add conventional commits badge ([4d567ae](https://github.com/CCXXXI/ecg_monitor/commit/4d567aeb4ec589aea752aa030d17c5565069f17a))

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
