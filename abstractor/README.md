<p align="center" style="font-size: 5em;">
🚀 Abstractor 🚀
</p>

---

Abstractor widget that enables you to create many different use-cases for a widget.

## Use-Cases

```dart
class IconButtonUC extends Abstractor {
   const IconButtonUC.arrow({super.key}): super(child: IconButton(icon: Icon(Icons.arrow_back)));
   const IconButtonUC.close({super.key}): super(child: IconButton(icon: Icon(Icons.close)));
}
```
```dart
class IconButtonUC extends Abstractor {
   const IconButtonUC.custom({super.key}): super.builder(
        builder: (context) => IconButton(icon: Icon(Icons.arrow_back))
   );
}
```