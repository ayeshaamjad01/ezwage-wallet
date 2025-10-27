EZ Wage Mobile App Deployment Points.

-> Run "flutter pub get" commnad on root directory.
-> Run "flutter run" commnad on root directory. (Run flutter app on both Android and iOS Devices.)
-> Change Web Api URL in "./lib/helper/url.dart".

Android App Build Process.
-> Open Android App Directory "./android" on Android Studio
-> On menu bar, go to Build -> Generate Signed Bundle / APK
-> Select Android App Bundle and Click OK
-> Set Keystore path, where the jks file located and key alisa key0 and key store passowrd and key password are both same.
-> Select Build Variant release.

iOS App Build Process.
-> Open iOS app Directory "./ios/Runner.xcworkspace"
-> Select Runner Device "Any iOS Device (arm64)"
-> On menu bar, go to Product -> Archive
-> Select latest version and Click Distribute App
-> Choose App Store Connect and Click Next
-> Choose Upload and Click Next
-> Uncheck include bitcode and Click Next.
-> Choose Automatically manage signing and Click Next.
-> And then Click Upload.
