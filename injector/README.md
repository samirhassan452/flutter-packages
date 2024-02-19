<p align="center" style="font-size: 5em;">
🚀 Injector 🚀
</p>

---

A safe way to inject dependencies at any screen and remove them safely when screen is disposed.

## Use-Cases

```dart
InjectorProvider(
    injector: GetItInjector(),
    child: ChildWidget(),
),
```
```dart
MultiInjectorProvider(
    injectors: [
        GetItInjector1(),
        GetItInjector2(),
        // and so on
    ],
    child: ChildWidget(),
),
```