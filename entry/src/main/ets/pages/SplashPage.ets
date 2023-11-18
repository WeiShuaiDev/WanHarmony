/**
 * 欢迎页面
 */

@Entry
@Component
struct SplashPage {
  build() {
    Stack() {
      Text('WanHarmony')
        .fontColor($r('app.color.start_window_background'))
        .fontSize($r('app.float.text_size_48'))
        .margin({
          bottom: $r('app.float.size_100')
        })
    }
    .backgroundColor($r('app.color.color_black'))
    .width('100%')
    .height('100%')
    .align(Alignment.Bottom)
  }
}