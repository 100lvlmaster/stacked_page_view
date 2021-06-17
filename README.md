# Stacked Page View!

![flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)

### [pub.dev/stacked_page_view](https://pub.dev/packages/stacked_page_view)

Hi! This package will create stacked page view in your flutter app.
it's as **lightweight** as it can get⚡⚡ .

- Just wrap it between your PageView builder and the iterable children like the code below.

```dart
PageView.builder(
        itemCount: 10,
        scrollDirection: Axis.vertical,
        controller: pageController,
        itemBuilder: (context, index) {
          return StackPageView(
            controller: pageController,
            index: index,
            child: Container(
              color: (colors..shuffle()).first,
              child: Center(
                child: Text(
                  '$index',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          );
        },
      )
```

![example gif](https://media.giphy.com/media/SanwUb4qh2h8RmOTRH/giphy.gif)
