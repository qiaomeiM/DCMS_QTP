'Browser("Dcms管理").Page("Dcms管理").WebEdit("username").Set "admin" @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理").WebEdit("username")_;_script infofile_;_ZIP::ssf1.xml_;_
'Browser("Dcms管理").Page("Dcms管理").WebEdit("userpwd").SetSecure "584fae2e3619c4d815c1c7fc5da61bd0" @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理").WebEdit("userpwd")_;_script infofile_;_ZIP::ssf2.xml_;_
'Browser("Dcms管理").Page("Dcms管理").WebButton("SUBMIT").Click @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理").WebButton("SUBMIT")_;_script infofile_;_ZIP::ssf3.xml_;_
''Browser("Dcms管理").Dialog("自动完成密码").WinButton("否(N)").Click @@ hightlight id_;_787814_;_script infofile_;_ZIP::ssf4.xml_;_
'Browser("Dcms管理").Page("Dcms管理_2").Link("美食管理").Click @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理 2").Link("美食管理")_;_script infofile_;_ZIP::ssf5.xml_;_
'Browser("Dcms管理").Page("Dcms管理_2").Link("添加").Click @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理 2").Link("添加")_;_script infofile_;_ZIP::ssf6.xml_;_
'Browser("Dcms管理").Page("Dcms管理_3").WebEdit("name").Set "96" @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理 3").WebEdit("name")_;_script infofile_;_ZIP::ssf7.xml_;_
'Browser("Dcms管理").Page("Dcms管理_3").WebEdit("price").Set "8" @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理 3").WebEdit("price")_;_script infofile_;_ZIP::ssf8.xml_;_
'Browser("Dcms管理").Page("Dcms管理_3").WebEdit("orderno").Set "1" @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理 3").WebEdit("orderno")_;_script infofile_;_ZIP::ssf9.xml_;_
'Browser("Dcms管理").Page("Dcms管理_3").WebList("cid").Select "养生" @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理 3").WebList("cid")_;_script infofile_;_ZIP::ssf10.xml_;_
'Browser("Dcms管理").Dialog("选择要加载的文件").WinObject("DirectUIHWND").Click 274,68 @@ hightlight id_;_263514_;_script infofile_;_ZIP::ssf11.xml_;_
'Browser("Dcms管理").Dialog("选择要加载的文件").WinObject("打开(O)").Click 28,17 @@ hightlight id_;_590578_;_script infofile_;_ZIP::ssf12.xml_;_
'Browser("Dcms管理").Page("Dcms管理_3").WebEdit("describe").Set "8hao" @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理 3").WebEdit("describe")_;_script infofile_;_ZIP::ssf13.xml_;_
'Browser("Dcms管理").Page("Dcms管理_3").WebButton("Submit").Click @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理 3").WebButton("Submit")_;_script infofile_;_ZIP::ssf14.xml_;_
'Browser("Dcms管理").Page("Dcms v1.0").Link("Hi, admin!").Click @@ hightlight id_;_Browser("Dcms管理").Page("Dcms v1.0").Link("Hi, admin!")_;_script infofile_;_ZIP::ssf15.xml_;_
'Browser("Dcms管理").Page("Dcms v1.0").Link("Sign Out").Click @@ hightlight id_;_Browser("Dcms管理").Page("Dcms v1.0").Link("Sign Out")_;_script infofile_;_ZIP::ssf16.xml_;_
'Browser("Dcms管理").Page("Dcms管理").Sync @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理")_;_script infofile_;_ZIP::ssf17.xml_;_
'Browser("Dcms管理").CloseAllTabs

'\msystemutil.Run "http://10.7.90.35:8032/MS/admin.php/Index/index"
ExecuteFile "C:\Script\Object.vbs"
ExecuteFile "C:\Script\Function.vbs"

'后台登录
Call RightLogin()

With Browser(objBrowser).Page(objPage)
		.Link(objCateManage).Click
		.Link(objAdd).Click
		.WebEdit(objName).Set ReadExcel("c:\Script\TestCase.xlsx","Sheet1",2,1)
		.WebEdit(objPrice).Set ReadExcel("c:\Script\TestCase.xlsx","Sheet1",2,2)
		.WebEdit(objOrderno).Set ReadExcel("c:\Script\TestCase.xlsx","Sheet1",2,3)
		.WebList(objCid).Select ReadExcel("c:\Script\TestCase.xlsx","Sheet1",2,4)
		.Dialog(objFile).SendKeys "c:\Script\123.jpg"


 @@ hightlight id_;_590578_;_script infofile_;_ZIP::ssf12.xml_;_
		.WebEdit(objDescribe).Set ReadExcel("c:\TestCase.xls",Sheet1,3,5)
		.WebButton(objSubmit).Click

End With













