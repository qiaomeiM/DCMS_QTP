'Browser("dcms").Page("dcms").WebEdit("username").Set "2631524571@qq.com" @@ hightlight id_;_Browser("dcms").Page("dcms").WebEdit("username")_;_script infofile_;_ZIP::ssf1.xml_;_
'Browser("dcms").Page("dcms").WebEdit("userpwd").SetSecure "585a7d33a346a4c3a75b753bfa66eced7bfa" @@ hightlight id_;_Browser("dcms").Page("dcms").WebEdit("userpwd")_;_script infofile_;_ZIP::ssf2.xml_;_
'Browser("dcms").Page("dcms").WebButton("登录").Click @@ hightlight id_;_Browser("dcms").Page("dcms").WebButton("登录")_;_script infofile_;_ZIP::ssf3.xml_;_
'Browser("dcms").Page("dcms_2").Link("退出").Click @@ hightlight id_;_Browser("dcms").Page("dcms 2").Link("退出")_;_script infofile_;_ZIP::ssf4.xml_;_
'Browser("dcms").Page("dcms_2").Sync @@ hightlight id_;_Browser("dcms").Page("dcms_2")_;_script infofile_;_ZIP::ssf5.xml_;_
'Browser("dcms").CloseAllTabs
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