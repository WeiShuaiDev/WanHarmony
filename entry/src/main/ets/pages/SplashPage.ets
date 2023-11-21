/**
 * 欢迎页面
 */


@Entry
@Component
struct SplashPage {
  textTimerController: TextTimerController = new TextTimerController()
  @State format: string = 'SS'

  aboutToAppear() {
    console.log('adapter --- ')
  }

  build() {
    RelativeContainer() {
      TextTimer({ isCountDown: true, count: 50000, controller: this.textTimerController })
        .format(this.format)
        .fontColor($r('app.color.start_window_background'))
        .fontSize($r('app.float.size_text_12'))
        .onTimer((utc: number, elapsedTime: number) => {
          console.info('textTimer notCountDown utc is：' + utc + ', elapsedTime: ' + elapsedTime)
        })
        .align(Alignment.TopEnd)
        .margin({
          top: $r('app.float.size_35'),
          right: $r('app.float.size_15')
        })
        .alignRules({
          right: {
            anchor: '__container__',
            align: HorizontalAlign.End
          } })
        .id('downTimeTv')
      Text('WanHarmony')
        .fontColor($r('app.color.start_window_background'))
        .fontSize($r('app.float.size_text_32'))
        .margin({
          bottom: $r('app.float.size_100')
        })
        .alignRules({
          bottom: {
            anchor: '__container__',
            align: VerticalAlign.Bottom
          },
          middle: {
            anchor: '__container__',
            align: HorizontalAlign.Center
          }
        })
        .id('welcomeTv')
    }
    .backgroundColor($r('app.color.color_black'))
    .width('100%')
    .height('100%')
  }
}
