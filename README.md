# sample

## 実行コード

### dev

fvm flutter run --flavor dev -t lib/main_dev.dart

### prod

fvm flutter run --flavor prod -t lib/main_prod.dart

## 自動生成

fvm flutter pub run build_runner build --delete-conflicting-outputs
