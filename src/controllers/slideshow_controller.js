
import { Controller } from "@hotwired/stimulus"

export default class extends Controller{
  static targets = ["slide"]

  /**
   * 生命周期
   * initialize 第一次实例化容器时调用
   * connect 当控制器被连接dom
   * disconnect 当控制器懂dom断开
* **/
  connect(){

  }
  initialize(){

    this.showSlide(0)
  }

  next(){
    this.showSlide(this.index + 1)
  }
  previous(){
    this.showSlide(this.index - 1)
  }
  showSlide(index){
    this.index = index
    this.slideTargets.forEach((item,index) => {
      item.classList.toggle("slide--current",index == i)

    })
  }
}
