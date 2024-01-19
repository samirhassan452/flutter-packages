<p align="center" style="font-size: 5em;">
🚀 C2Abstractor 🚀
</p>

<p align="center" style="font-size: 1em;">
💡 C2: abbreviation for Clean-Code, I took the first character from each word. 💡
</p>

---

Abstractor widget that enables you to create many different use-cases for a widget.

## Use-Cases

```dart
class IconButtonUC extends C2Abstractor {
   const IconButtonUC.arrow({super.key}): super(IconButton(icon: Icon(Icons.arrow_back)));
   const IconButtonUC.close({super.key}): super(IconButton(icon: Icon(Icons.close)));
}
```