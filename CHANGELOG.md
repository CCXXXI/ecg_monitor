# Changelog

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
