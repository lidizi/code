import { Controller } from "@hotwired/stimulus";

export default class extends Controller{
  connect(){
    this.load()
    this.index = 0
    if(this.data.has("interval")){
      console.log(this.data.get(
        "interval"
      ))
      this.startRefresh()
    }
  }
  disconnect(){
    clearInterval(this.timer)
    console.log("disconnect")
  }
  startRefresh(){
    this.timer = setInterval(()=>{
      this.load()
    },this.data.get("interval"))
  }

  load(){
    this.index ++
    fetch(this.data.get("url")).
      then(response => response.text()).
      then(html => {
        this.element.innerHTML = html + this.index
      })

  }
}
