library utilify;

export 'src/base.exports.dart';

/*
*If I create a package and add dependency inside it, and in main app add the same dependency,
*- Is the app will install both or just one ? 
*- Is the app size will increase because I install the same dependency twice ?

In Dart and Flutter, 
when you have a package that depends on a particular dependency 
and your main app also depends on the same dependency, 
the dependency is included in both the package and the main app. 
However, Dart's package manager, Pub, is designed to handle this situation 
without duplicating the dependencies in the final build.

When you build your main app, Pub performs a process called dependency resolution. 
During this process, Pub analyzes the dependencies of your app, 
including those of any packages you've included. 
It ensures that only one version of a given package is included in the final build, 
regardless of how many times it's listed in the dependency tree.

Therefore, even if you have the same dependency listed in your package and your main app, 
the final build will only include one copy of that dependency. 
This helps to avoid unnecessary duplication and reduces the overall size of your application.

In terms of the app size, the impact of including a dependency twice is minimal. 
The final compiled code includes only the necessary parts of the dependencies, 
and Dart's tree-shaking process helps eliminate any unused code. 
The duplicated dependency won't significantly contribute to the app's size.

However, it's generally a good practice to manage dependencies carefully 
to avoid potential issues with conflicting versions or unintended side effects. 
Always keep your dependencies up-to-date and ensure compatibility between packages 
to maintain a healthy and maintainable codebase.
*/