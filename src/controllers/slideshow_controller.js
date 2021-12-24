
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
    const puts = console.log
    /**
     * this.data api 
     *
     * this.data.has("index")返回 true，如果控制器元素拥有data-slideshow-index属性
     * this.data.get("index")返回元素data-slideshow-index的字符串属性值
     * this.data.set("index", index)设置元素的data-slideshow-index属性，将一个字符串赋值到index
    */
    //const index = this.data.get("index")
    // puts("123",index)
    this.showCurrentSlide()
    puts(this.slideTargets)

  }

  next(){
    //this.showSlide(this.index + 1)
    this.index ++
  }
  previous(){
    // this.showSlide(this.index - 1)
    this.index --

  }
  showCurrentSlide(){
    this.slideTargets.forEach((item,i) => {
      console.log("index => ",this.index)
      item.classList.toggle("slide-current",this.index == i)
    })
  }
  get index(){
    return parseInt(this.data.get("index"))
  }
  set index(value){
    this.data.set("index",value)
    this.showCurrentSlide()
  }

}
