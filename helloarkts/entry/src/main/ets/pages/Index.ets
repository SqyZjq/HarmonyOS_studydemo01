// 1. 装饰器：@关键字，装饰类，结构，方法，变量，赋予其特殊含义
//    1.1 @Component: 组件，将struct结构变为自定义组件
//    1.2 @Entry : 入口，将自定义组件变为页面（page）
@Entry
@Component
struct Index {
  // 变量
  // @State: 状态，状态装饰器，特点：响应式
  // 变量值改变，UI也会自动刷新
  @State message: string = 'Hello World';

  // build：构建，UI描述，构建页面、组件的ui结构（不能直接写逻辑代码）
  build() {
    // Row内部的子组件，默认垂直居中
    Row() { //Row,Text系统组件
      // this.message = '213' //不符合组件ui的语法
      Text(this.message)//字体大小
        .fontSize(50)//属性方法：fontSize，fontWeight，样式
          //字体粗细
        .fontWeight(FontWeight.Bold)
        .fontColor(Color.Blue)//文字颜色
          // 事件方法:onClick
          // 点击文字，内容改变
        .onClick(()=>{ //箭头函数
            this.message = 'Hello ArkTs'
        })
    }
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.Center)
  }
}
//箭头函数：js中匿名函数的一种简写形式
function fnName(){

}
()=>{}