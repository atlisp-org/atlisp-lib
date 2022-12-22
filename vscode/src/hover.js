const vscode = require("vscode");
var atlisp_funlib = require("../snippets/snippets.atlisp.json");
var atlisp_sysvar = require("../snippets/snippets.sysvar.json");
var autolisp_funlib = require("../snippets/snippets.autolisp.json");
var visuallisp_funlib = require("../snippets/snippets.visuallisp.json");
var vlreactor_funlib = require("../snippets/snippets.vlreactor.json");


// atlisp_funlib["base64:decode"].body.concat()
module.exports = vscode.languages.registerHoverProvider("autolisp",
    {provideHover(document,position){
        const word = document.getText(document.getWordRangeAtPosition(position,/[<>0-9a-zA-Z:_-]+/));
        if (word.split(":").length == 2  &&  word.split(":")[0] != ""){
            //if ((typeof atlisp_funlib[word] !== 'undefined')){
            // 取 @lisp 函数 语法内容
             return new vscode.Hover(`@lisp函数: ${atlisp_funlib[word].prefix} \n\n` 
                + `用法: ${atlisp_funlib[word].body.join("\n\n ").replace(/\$\{\d:([^}]+)\}/g, "$1")} \n\n`
                + `说明: ${atlisp_funlib[word].description.replace(/\n/g,"\n\n")}`);
        } else {
            if (typeof atlisp_sysvar[word.toUpperCase()] !== 'undefined'){
                return new vscode.Hover(word + `${atlisp_sysvar[word.toUpperCase()].description.replace(/\n/g,"\n\n")}`);
            } else {
                if (typeof autolisp_funlib[word] !== 'undefined'){
                    return new vscode.Hover(`函数: ${autolisp_funlib[word].prefix} \n\n` 
                    + `用法: ${autolisp_funlib[word].body.join("\n\n ").replace(/\$\{\d:([^}]+)\}/g, "$1")} \n\n`
                    + `说明: ${autolisp_funlib[word].description.replace(/\n/g,"\n\n")}`);
                } else {
                    if (typeof visuallisp_funlib[word] !== 'undefined'){
                        if(word[0] != ":"){
                            return new vscode.Hover(`函数: ${visuallisp_funlib[word].prefix} \n\n` 
                            + `用法: ${visuallisp_funlib[word].body.join("\n\n ").replace(/\$\{\d:([^}]+)\}/g, "$1")} \n\n`
                            + `说明: ${visuallisp_funlib[word].description.replace(/\n/g,"\n\n")}`);
                        } else {
                            return new vscode.Hover(`参数: ${visuallisp_funlib[word].prefix} \n\n` 
                                    + `说明: ${visuallisp_funlib[word].description.replace(/\n/g,"\n\n")}`);
                        }
                    } else {
                        if (typeof vlreactor_funlib[word] !== 'undefined'){
                            if(word[0] != ":"){
                                return new vscode.Hover(`函数: ${vlreactor_funlib[word].prefix} \n\n` 
                                + `用法: ${vlreactor_funlib[word].body.join("\n\n ").replace(/\$\{\d:([^}]+)\}/g, "$1")} \n\n`
                                + `说明: ${vlreactor_funlib[word].description.replace(/\n/g,"\n\n")}`);
                            }else {
                                return new vscode.Hover(`参数: ${vlreactor_funlib[word].prefix} \n\n` 
                                + `说明: ${vlreactor_funlib[word].description.replace(/\n/g,"\n\n")}`);
                            }
                        }

                    }

                }
            }
        }
    },
    }
)
