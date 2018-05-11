1. How to custom template of swagger editor?
	+ Custom file running server editor of swagger
		- Go to folder with path: C:\Users\Admin\AppData\Roaming\npm\node_modules\swagger\lib\commands\project. 
		- In file "swagger_editor.js" contains function to run edit with port number. You can custom in this file
2. How to download file document (*.yaml)
	+ Make sure the swagger-editor is running. If swagger-editor not running, run command: "swagger project edit"
	+ And then go to link : http://127.0.0.1:{port}/editor/spec on your browser to download this file.