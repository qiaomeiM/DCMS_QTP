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























