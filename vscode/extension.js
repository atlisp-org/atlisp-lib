const vscode = require('vscode');
const hover = require("./src/hover")
function activate(context) {
	/* console.log('Congratulations, your extension "atlisp-devops-js" is now active!');
	let disposable = vscode.commands.registerCommand('atlisp-devops-js.helloWorld', function () {
		vscode.window.showInformationMessage('Hello World from atlisp-devops-js!');
	}); */

	//context.subscriptions.push(disposable);
	//vscode.window.showInformationMessage("atlisp dev info");
	context.subscriptions.push(hover);
}
function deactivate() {}


module.exports = {
	activate,
	deactivate
}
