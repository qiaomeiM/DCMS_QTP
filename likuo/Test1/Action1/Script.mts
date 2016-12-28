 @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理").WebEdit("username")_;_script infofile_;_ZIP::ssf1.xml_;_

ExecuteFile "C:\Object.vbs"
'ExecuteFile "C:\Script\Sub.vbs"

With Browser(objBrowser).Page(objPage)
      	.WebEdit(objUserName).Set"admin"
      	.WebEdit(objPwd).Set"admin"
		.WebButton(objBtn).Click
		
End With
'Browser("Dcms管理").Page("Dcms管理").WebEdit("username").Set "admin"
'Browser("Dcms管理").Page("Dcms管理").WebEdit("userpwd").SetSecure "585a70bc4fafd797ae8e156695ace04c" @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理").WebEdit("userpwd")_;_script infofile_;_ZIP::ssf2.xml_;_
'Browser("Dcms管理").Page("Dcms管理").WebButton("SUBMIT").Click @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理").WebButton("SUBMIT")_;_script infofile_;_ZIP::ssf3.xml_;_
'Browser("Dcms管理").Page("Dcms管理_2").Link("分类管理").Click @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理 2").Link("分类管理")_;_script infofile_;_ZIP::ssf5.xml_;_
'Browser("Dcms管理").Page("Dcms管理_2").Link("一级分类 --- 添加").Click @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理 2").Link("一级分类 --- 添加")_;_script infofile_;_ZIP::ssf6.xml_;_
'Browser("Dcms管理").Page("Dcms管理_3").WebEdit("bname").Set "piancan" @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理 3").WebEdit("bname")_;_script infofile_;_ZIP::ssf7.xml_;_
'Browser("Dcms管理").Page("Dcms管理_3").WebEdit("orderno").Set "1" @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理 3").WebEdit("orderno")_;_script infofile_;_ZIP::ssf8.xml_;_
'Browser("Dcms管理").Dialog("选择要加载的文件").WinObject("DirectUIHWND").Click 104,51 @@ hightlight id_;_66906_;_script infofile_;_ZIP::ssf9.xml_;_
'Browser("Dcms管理").Dialog("选择要加载的文件").WinButton("打开(O)").Click @@ hightlight id_;_197510_;_script infofile_;_ZIP::ssf10.xml_;_
'Browser("Dcms管理").Page("Dcms管理_3").WebEdit("describe").Set "123" @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理 3").WebEdit("describe")_;_script infofile_;_ZIP::ssf11.xml_;_
'Browser("Dcms管理").Page("Dcms管理_3").WebButton("Submit").Click @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理 3").WebButton("Submit")_;_script infofile_;_ZIP::ssf12.xml_;_
'Browser("Dcms管理").Page("Dcms v1.0").Link("Hi, admin!").Click @@ hightlight id_;_Browser("Dcms管理").Page("Dcms v1.0").Link("Hi, admin!")_;_script infofile_;_ZIP::ssf13.xml_;_
'Browser("Dcms管理").Page("Dcms v1.0").Link("Sign Out").Click @@ hightlight id_;_Browser("Dcms管理").Page("Dcms v1.0").Link("Sign Out")_;_script infofile_;_ZIP::ssf14.xml_;_
'Browser("Dcms管理").Page("Dcms管理").Sync @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理")_;_script infofile_;_ZIP::ssf15.xml_;_
'Browser("Dcms管理").CloseAllTabs
