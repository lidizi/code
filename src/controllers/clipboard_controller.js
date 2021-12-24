import { Controller } from "@hotwired/stimulus"


export default class extends Controller{
  /**
   * 当 Stimulus 加载控制器类时，它会在名为 targets 的静态数组中查找目标字符串。
   * 对于数组中的每个目标名，
   * Stimulus 将向控制器添加三个新属性
   * 1. this.sourceTarget 表示控制器作用域内的第一个source target。如果没有source target，则访问属性会引发错误。
   * 2. this.sourceTargets 表示控制器作用域内所有source targets的数组
   * 3. this.hasSourceTarget表示，如果有source target则是 true，否则是 false
  **/
  static targets = ["source"]
  connect(){
    console.log("connect")
    if(document.queryCommandSupported("copy")){
      this.element.classList.add("clipboard--supported")
    }
  }
  copy(){
    this.sourceTarget.select()
    document.execCommand("copy")
  }
  get source(){
    return this.sourceTarget.value
  }
}
