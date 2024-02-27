<p align="center" style="font-size: 5em;">
🚀 Assetor 🚀
</p>

---

A Flutter package which enables you to access assets through variables instead of string.

## How to install

1. Navigate to the root of you project
2. Create a packages folder
```Shell
mkdir packages
```
3. Copy assetor package inside packages folder


## How to add/update assets

1. Add a new assets inside assets folder directly or inside subfolder of assets folder
2. Navigate to assetor package
```Shell
cd packages/assetor/
```
3. Update generated assets
```Shell
fluttergen
```
`Optional` in case you define a new subfolder under assets folder
1. Go to `pubspec.yaml` file
2. Scroll to `flutter` section
3. Add a new subfolder under `assets` section
```yaml
flutter:
  ### DON'T FORGET INDENTATION ###
  assets:
    ### DON'T FORGET INDENTATION ###
    - assets/subfolder/
    # ... other subfolders
```

## How to use

1. Access assets through variable by it's parent folder
```dart
Image.asset(
    Assetor.images.assetName,
    // ... Other attributes
),
Image.asset(
    Assetor.icons.png.assetName,
    // ... Other attributes
),
SvgPicture.asset(
    Assetor.icons.svg.assetName,
    // ... Other attributes
),
```
2. Access assets through widget directly by it's parent folder `if the asset is Flutter supported image format`
```dart
Assetor.images.assetName.image(
    width: 120,
    height: 120,
    // ... Other attributes
),
Assetor.icons.png.assetName.image(
    width: 120,
    height: 120,
    // ... Other attributes
),
Assetor.icons.svg.assetName.svg(
    width: 120,
    height: 120,
    // ... Other attributes
),
```