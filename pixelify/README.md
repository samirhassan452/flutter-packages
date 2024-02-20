<p align="center" style="font-size: 5em;">
🚀 Pixelify 🚀
</p>

---

A facilitate package to tell you that you don't need to specify the image/icon type anymore.

## Use-Cases
#### `NOTE: Use-Cases & Widgets accept more than I will currently display of attributes.`

`Pixelify`
```dart
Pixelify.icon(icon: Icons.home, size: 24.0, color: Colors.black),
Pixelify.icon(icon: 'icon.png', size: 24.0, color: Colors.black),
Pixelify.icon(icon: 'icon.svg', size: 24.0, color: Colors.black),
```
```dart
Pixelify.image(src: 'img.png', width: 24.0, height: 24.0, color: Colors.black),
Pixelify.image(src: 'img.jpg', width: 24.0, height: 24.0, color: Colors.black),
Pixelify.image(src: 'img.svg', width: 24.0, height: 24.0, color: Colors.black),
```

---
`PixelifyIcon`
```dart
Pixelify(icon: 'icon.png', size: 24.0, color: Colors.black),
Pixelify.svg(icon: 'icon.svg', size: 24.0, color: Colors.black),
Pixelify.icon(icon: Icons.home, size: 24.0, color: Colors.black),
```

---
`PixelifyImage`
```dart
// For more customizations, use [DrawImage] instead
PixelifyImage(src: 'img.png', width: 24.0, height: 24.0, color: Colors.black),
/// For more customizations, use [DrawSvg] instead
PixelifyImage.svg(src: 'img.svg', width: 24.0, height: 24.0, color: Colors.black),
```

### Comming soon, `I will try to add more Use-Cases & Widgets.`