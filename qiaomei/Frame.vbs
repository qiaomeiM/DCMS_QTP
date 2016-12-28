'###################
'作者：乔妹
'时间：2016/12/6
'功能：前台登录
'###################
Sub foregroundLogin(strName,strPwd)
	Browser(objBrowser).Sync
	Browser(objBrowser).FullScreen
	With Browser(objBrowser).Page(objPage)
		.WebEdit(foreName).Set strName
		.WebEdit(forePwd).Set strPwd
		.WebButton(foreSub).Click
	
		'.Link(foreQuit).Click
	 End With
End Sub

'###################
'作者：乔妹
'时间：2016/12/8
'功能：发表评论
'###################
Sub addComment(strComment)
	Browser(objBrowser).Sync
	With Browser(objBrowser).Page(objPage)
		.Image(foreImg).Click
		wait 3
		.WebEdit(foreComment).Set "So delicious!!!"
		wait 3
		.WebButton(CommentBtn).Click
		wait 3
		.Link(foreQuit).Click
	End With
End Sub

'###################
'作者：乔妹
'时间：2016/12/8
'功能：登录_数据驱动
'###################


ExecuteFile "C:\Script\Function.vbs"
ExecuteFile "C:\Script\Object.vbs"
Sub LoginExcel(strPath,strSheet,intRow,intColumn)
	Browser(objBrowser).Sync
	Browser(objBrowser).FullScreen
	With Browser(objBrowser).Page(objPage)
		.WebEdit(foreName).Set ReadExcel(strPath,strSheet,intRow,intColumn)
		.WebEdit(forePwd).Set ReadExcel(strPath,strSheet,intRow,intColumn+1)
		.WebButton(foreSub).Click
	 End With

	If  Browser(objBrowser).Page(objPage).Link(foreQuit).WaitProperty("visible",True)Then
		Browser(objBrowser).Page(objPage).Link(foreQuit).Click
		CheckValue = "成功登录"
		Call DoExcel(strPath,strSheet,intRow,intColumn+4)
		
	Else
		Exit Sub 
		CheckValue = "请输入正确的用户名和密码！"
		Call DoExcel(strPath,strSheet,intRow,intColumn+4)
	End If
End Sub
 
Browser(objBrowser).Close

'###################
'作者：乔妹
'时间：2016/12/8
'功能：登录_数据驱动
'###################


ExecuteFile "C:\Script\Object.vbs"
ExecuteFile "C:\Script\Function.vbs"

For intRow = 3 to 5
	Browser(objBrowser).Sync
	Browser(objBrowser).FullScreen
	With Browser(objBrowser).Page(objPage)
		.WebEdit(foreName).Set ReadExcel("C:\Data\TestCase.xls","Sheet1",intRow,5)
		.WebEdit(forePwd).Set ReadExcel("C:\Data\TestCase.xls","Sheet1",intRow,6)
		.WebButton(foreSub).Click
	 End With

	If  Browser(objBrowser).Page(objPage).Link(foreQuit).WaitProperty("visible",True)Then
		Browser(objBrowser).Page(objPage).Link(foreQuit).Click
		CheckValue = "成功登录"
		Call DoExcel("C:\Data\TestCase.xls","Sheet1",intRow,9)
		
	Else
		CheckValue = "请输入正确的用户名和密码！"
		Call DoExcel("C:\Data\TestCase.xls","Sheet1",intRow,9)
 
	End If
Next
Browser(objBrowser).Close


'###################
'作者：乔妹
'时间：2016/12/8
'功能：添加评论_数据驱动
'###################

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
























