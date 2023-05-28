
// 1pubspec.yaml文件  是Flutter应用程序的配置文件，用于声明应用程序所需要的依赖和资源

//  -----------------图像资源--------------
// 需要在pubspec.yaml文件中声明这些资源，并将它们放置在应用程序的assets目录中
// flutter:
//   assets:
//     - assets/images/logo.png
// 然后在代码中可使用AssetImage来加载这个图像
Image(image:AssetImage('assets/images/logo.png'))

//  -----------------字体资源--------------
// 在Flutter中，可以使用自定义字体来改变应用程序的字体。为了使用自定义字体，你需要在pubspec.yaml文件中声明这些资源，并将它们放置在应用程序的fonts目录中
// flutter:
//   fonts:
//     - family: MyFont
//       fonts:
//         - asset: fonts/MyFont-Regular.ttf
//         - asset: fonts/MyFont-Bold.ttf
//           weight: 700
// 然后，在代码中，你可以使用这个字体：

Text('Hello', style: TextStyle(fontFamily: 'MyFont', fontWeight: FontWeight.bold))

//  -----------------音频资源--------------
// 在Flutter中，为了使用音频资源，你需要在pubspec.yaml文件中声明这些资源，并将它们放置在应用程序的assets目录中
// flutter:
//   assets:
//     - assets/audio/music.mp3
// 然后，在代码中，你可以使用AudioPlayer来播放这个音频：

AudioPlayer player = AudioPlayer();
player.play('assets/audio/music.mp3');