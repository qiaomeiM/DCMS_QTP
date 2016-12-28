

'###################
'作者：乔妹
'时间：2016/12/8
'功能：添加评论_数据驱动
'###################
ExecuteFile "C:\Script\Object.vbs"
ExecuteFile "C:\Script\Function.vbs"
OpenPage "http://192.168.233.1:8032/MS/"
Function addComment(intRow)
	With Browser(objBrowser).Page(objPage)
		.WebEdit(foreName).Set ReadExcel("C:\Data\TestCase.xls","Sheet1",intRow,5)
		.WebEdit(forePwd).Set ReadExcel("C:\Data\TestCase.xls","Sheet1",intRow,6)
		.WebButton(foreSub).Click
		.Image(foreImg).Click
		.WebEdit(foreComment).Set ReadExcel("C:\Data\TestCase.xls","Sheet1",intRow,7)
		.WebButton(CommentBtn).Click
		.Link(foreQuit).Click
	End With
End Function

For i=6 to 7
	Call addComment(i)
Next

Browser(objBrowser).Close





