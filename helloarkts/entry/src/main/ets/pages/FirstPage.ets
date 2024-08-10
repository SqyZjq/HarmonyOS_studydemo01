import { router } from '@kit.ArkUI'

@Entry
@Component
struct FirstPage{
  build() {
    Column(){
      //子组件在父组件的{}内
      Text('师启源')
        .fontSize(20)
      Button('Next')
        .backgroundColor(Color.Blue)
        .onClick(()=>{
          router.pushUrl({url:'pages/SecondPage'})
        })
        .margin(10)
        .width(200)
    }
    .width('100%')
    .height('100%')
  }
  //组件的生命周期
  aboutToAppear(): void {
    console.log('FirstPage--aboutToAppear')
  }
  aboutToDisappear(): void {
    console.log('FirstPage--aboutToDisappear')
  }
  //页面的生命周期
  onPageShow(): void {
    console.log('FirstPage--onPageShow')

  }
  onPageHide(): void {
    console.log('FirstPage--onPageHide')

  }
  onBackPress(): boolean | void {
    console.log('FirstPage--onBackPress')

  }
}