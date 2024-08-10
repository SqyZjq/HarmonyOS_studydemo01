import { router } from '@kit.ArkUI'

@Entry
@Component
struct SecondPage{
  build() {
    Column(){
      //子组件在父组件的{}内
      Text('张剑桥')
        .fontSize(20)
      Button('Next')
        .backgroundColor(Color.Blue)
        .onClick(()=>{
          // router.pushUrl({url:'pages/FirstPage'})
          router.back()
        })
        .margin(10)
        .width(200)
    }
    .width('100%')
    .height('100%')
  }
  aboutToAppear(): void {
    console.log('SecondPage--aboutToAppear')
  }
  aboutToDisappear(): void {
    console.log('SecondPage--aboutToDisappear')
  }
  //页面的生命周期
  onPageShow(): void {
    console.log('SecondPage-onPageShow')

  }
  onPageHide(): void {
    console.log('SecondPage--onPageHide')

  }
  onBackPress(): boolean | void {
    console.log('SecondPage--onBackPress')

  }
}