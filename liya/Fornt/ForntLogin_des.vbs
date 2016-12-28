作者：李娅
'时间：2016年12月15日
'功能：前台登录测试
ExecuteFile "C:\Object_FrontLogin.vbs"
ExecuteFile "C:\Function.vbs"

'Browser(MyBrowser).Page(MyPage).WebEdit(MyName).Set ReadExcel("C:\FrontLogin.xls","Sheet1",3,5)
'Browser(MyBrowser).Page(MyPage).WebEdit(MyPwd ).Set ("C:\FrontLogin.xls","Sheet1",3,6)
'Browser(MyBrowser).Page(MyPage).WebButton(MyLogin).Click
'Browser(MyBrowser).Page(MyPage).Link(MyExit).Click
For i=3 to 4
	systemutil.Run "http://192.168.75.1:8032/MS/"
	wait 2
	With Browser(MyBrowser)
		With .Page(MyPage)
			.WebEdit(MyName).Set ReadExcel("C:\FrontLogin.xls","Sheet1",i,5)
			wait 2
			.WebEdit(MyPwd ).Set ReadExcel ("C:\FrontLogin.xls","Sheet1",i,6)
			.WebButton(MyLogin).Click
			wait 2
		End With
		If  Browser(MyBrowser).Page(MyPage).Link(MyExit).WaitProperty("visible",True)Then
			CheckValue = "成功登录"
			Call DoExcel("C:\FrontLogin.xls","Sheet1",i,8)
			.Page(MyPage).Link(MyExit).Click
			.Close
		Else
			CheckValue = "请输入正确的用户名和密码！"
			Call DoExcel("C:\FrontLogin.xls","Sheet1",i,8)
			.Close
		End If
	End With
Next


'Browser(objBrowser).Sync
'	Browser(objBrowser).FullScreen
'	With Browser(objBrowser).Page(objPage)
'		.WebEdit(foreName).Set ReadExcel("C:\Data\TestCase.xls","Sheet1",intRow,5)
'		.WebEdit(forePwd).Set ReadExcel("C:\Data\TestCase.xls","Sheet1",intRow,6)
'		.WebButton(foreSub).Click
'	 End With
'
'	If  Browser(objBrowser).Page(objPage).Link(foreQuit).WaitProperty("visible",True)Then
'		Browser(objBrowser).Page(objPage).Link(foreQuit).Click
'		CheckValue = "成功登录"
'		Call DoExcel("C:\Data\TestCase.xls","Sheet1",intRow,8)
'		
'	Else
'		CheckValue = "请输入正确的用户名和密码！"
'		Call DoExcel("C:\Data\TestCase.xls","Sheet1",intRow,8)
'  
'	End If
'
'





















