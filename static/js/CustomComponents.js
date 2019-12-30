
class MaterializeTabs extends HTMLElement {
    constructor () {
        super ()
        M.Tabs.init (this.querySelector (".tabs"))
    }
}

window.customElements.define ("materialize-tabs", MaterializeTabs)

class MaterialboxedImage extends HTMLElement {
    constructor () {
        super ()
        setTimeout (() => M.Materialbox.init (this.querySelector (".materialboxed")), 0)
    }
}

window.customElements.define ("materialboxed-image", MaterialboxedImage)
