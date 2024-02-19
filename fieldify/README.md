<p align="center" style="font-size: 5em;">
🚀 Fieldify 🚀
</p>

---

Reach out to enhanced TextField widget with other customizations.

## Use-Cases

```dart
Fieldify(
    // You need to pass just one "controller or initialValue"
    controller: controller, // Can be null,
    initialValue: initialValue, // Can be null,
    style: const InputFieldStyle(),
    onChanged: (String value) {} // Can be null,
    // and many other more methods, Discover now!
),
```
```dart
Fieldify.readOnly(
    // You need to pass just one "controller or initialValue"
    controller: controller, // Can be null,
    initialValue: initialValue, // Can be null,
    style: const InputFieldStyle(), // Will be override by copyWith (enabled:false, readOnly: true),
    onDisabled: () {} // Can be null,
),
```

### Comming soon, I will try to add more use-cases