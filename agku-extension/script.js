let elementText = document.getElementsByClassName("prettyprint lang-agk")[0]
let textCopy = elementText.innerText
let lines = elementText.innerText.split("\n").slice(2)
let regexPatterns = {
    numericKey: /[a-zA-Z_]+[0-9]+/,
    textKey: /[a-zA-Z_]+/,
    specialKey: /;|=|,|-|\.|\/|'|\[|\\|\]|#|`/,
}
let codeKey = / [0-9]+/
let keyMap = []
lines.forEach(element=>{
    let match = null
    for (let i=0;i<Object.keys(regexPatterns).length;i++){
        match = element.match(regexPatterns[Object.keys(regexPatterns)[i]])
        if (!!match){
            keyMap.push([match[0],element.match(codeKey)[0].trimStart()])
            break
        }
    }
})
elementText.insertAdjacentHTML("beforebegin",`<input type="text" id="searchbar"> Search</input>`)
inputElement = document.getElementById("searchbar")
inputElement.focus()
inputElement.addEventListener("keyup",search)
document.addEventListener("keydown",search)
function search(event){
    let querry = ""
    if (event.key.length > 1 && !(["Escape","Backspace"].includes(event.key))&&document.activeElement!==inputElement){
        querry = event.key.toUpperCase()
    }else{
        querry = inputElement.value.toUpperCase()
    }
    
    if (querry == ""){
        elementText.innerHTML = textCopy
    }
    if (!([";","=",",","-",".","/","\'","[","\\","]","#","\`"].includes(querry))){
        querry = "KEY_"+querry
    }
    let result = []
    keyMap.forEach(element=>{
        typeof debug !== "undefined"?"":console.log(element,querry,element[0].includes(querry),!!element[0].includes(querry))
        if (!!element[0].includes(querry)){
            result.push(element)
        }
    })
    result.sort((first,second)=>{
        return first[0].length > second[0].length
    })
    elementText.innerHTML = "    <b>Key              Value</b><br><br>"
    result.forEach(element=>{
        let spaces = " ".repeat(17-element[0].length)
        elementText.innerHTML += `    ${element[0]}${spaces}${element[1]}<br>`
    })
}