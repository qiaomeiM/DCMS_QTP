'SystemUtil.Run "http://10.7.90.13:8032/MS/"
'ExecuteFile "C:\lianxi\LObject.vbs"
'ExecuteFile "C:\lianxi\function.vbs"
'Browser(objBrowser).Page(objPage).Sync
'With Browser(objBrowser).Page(objPage)
'			.WebEdit(objName).Set ReadExcel("C:\lianxi\login.xls","Sheet1",2,1)
'			.WebEdit(objPwd).Set ReadExcel("C:\lianxi\login.xls","Sheet1",2,2)
'			.WebButton(objBtn).Click
'End With
'If Browser(objBrowser).Page(objPage).WaitProperty("visible",True) Then
'	CheckValue = "成功"
'	Call DoExcel("C:\lianxi\login.xls","Sheet1",2,4)
'else
'	CheckValue = "失败"
'	Call DoExcel("C:\lianxi\login.xls","Sheet1",2,4)
'End If
For i = 2To 4
	SystemUtil.Run "http://10.7.90.13:8032/MS/"
	ExecuteFile "C:\lianxi\LObject.vbs"
	ExecuteFile "C:\lianxi\function.vbs"
	Browser(objBrowser).Page(objPage).Sync
	With Browser(objBrowser).Page(objPage)
				.WebEdit(objName).Set ReadExcel("C:\lianxi\login.xls","Sheet1",i,1)
				.WebEdit(objPwd).Set ReadExcel("C:\lianxi\login.xls","Sheet1",i,2)
				.WebButton(objBtn).Click
	End With
	If Browser(objBrowser).Page(objPage).Link(objSignout).WaitProperty("visible",True ) Then
		CheckValue = "成功"
		Call DoExcel("C:\lianxi\login.xls","Sheet1",i,4)
	else
		CheckValue = "失败"
		Call DoExcel("C:\lianxi\login.xls","Sheet1",i,4)
	End If
	Browser(objBrowser).CloseAllTabs
Next

'Browser("dcms").Page("dcms").WebEdit("username").Set "zhangjiaming" @@ hightlight id_;_Browser("dcms").Page("dcms").WebEdit("username")_;_script infofile_;_ZIP::ssf5.xml_;_
'Browser("dcms").Page("dcms").WebEdit("userpwd").SetSecure "584fb443f4b0132c1e8a6fdba9858bb4a47478a9d9c8d4d5" @@ hightlight id_;_Browser("dcms").Page("dcms").WebEdit("userpwd")_;_script infofile_;_ZIP::ssf6.xml_;_
'Browser("dcms").Page("dcms").WebButton("登录").Click @@ hightlight id_;_Browser("dcms").Page("dcms").WebButton("登录")_;_script infofile_;_ZIP::ssf7.xml_;_
'Browser("dcms").Page("dcms_2").Link("退出").Click @@ hightlight id_;_Browser("dcms").Page("dcms 2").Link("退出")_;_script infofile_;_ZIP::ssf8.xml_;_
'Browser("dcms").Page("dcms").WebEdit("username").Set "zhangjiaming" @@ hightlight id_;_Browser("dcms").Page("dcms").WebEdit("username")_;_script infofile_;_ZIP::ssf2.xml_;_
'Browser("dcms").Page("dcms").WebEdit("userpwd").SetSecure "584fb0d990da27af741e28d4d56a7ce294a4578002746d19" @@ hightlight id_;_Browser("dcms").Page("dcms").WebEdit("userpwd")_;_script infofile_;_ZIP::ssf3.xml_;_
'Browser("dcms").Page("dcms").WebButton("登录").Click @@ hightlight id_;_Browser("dcms").Page("dcms").WebButton("登录")_;_script infofile_;_ZIP::ssf4.xml_;_







