# App Module for WinWisely99 Project
## 1. Raison d'être
This module acts as the central initiating module for all the other modules in the project. It consists of the following files:
| File | Function | 
|------|----------|
|`main`| Initiates the app for mobile platforms|
|`main_desktop`| Initiates the app for desktop platforms|
|`hive`| Intiates `Hive` instance with `adapter` required for this app|
|`navigation`| Creates routes for app navigation. This will later serve as links for deep linking the app later|
|`services_provider`| Initiates all the basic services required for the apps functioning. They are classes from `com.winwisely99.services` module.
## 2. Instructions for Flutter Module Developers
To include your module into the app, you need to proceed as per following insturctions.

1. Create your module in similar fashion as https://github.com/winwisely99/mod-new. This example shows how to utilize the `services` module and struct the app using a `BLoC` design. Create the app as an example and test proper functioning as an app.
2. Create a branch from the master with the branch name as the feature. For e.g for chat-module, create a branch named chat-module.
3. Add your module in `dev_dependencies` section in `pubspec.yaml`. Check the file to see a examples for `com.winwisely99.news`. Always use `master` branch as the `ref`.
4. Search for *`TODO(FlutterDevelopers)`* in the code. There are changes in two modules - in `navigation.dart` to add the new route for your module, and in `hive.dart` to add the new `adapter` for your module.
5. Raise a pull request to merge the changes after testing.
