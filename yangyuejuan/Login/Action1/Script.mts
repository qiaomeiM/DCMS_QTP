'Browser("dcms").Page("dcms").Link("登录").Click @@ hightlight id_;_Browser("dcms").Page("dcms").Link("登录")_;_script infofile_;_ZIP::ssf1.xml_;_
'Browser("dcms_2").Page("dcms").WebEdit("username").Set "1845875521@qq.com" @@ hightlight id_;_Browser("dcms 2").Page("dcms").WebEdit("username")_;_script infofile_;_ZIP::ssf2.xml_;_
'Browser("dcms_2").Page("dcms").WebEdit("userpwd").SetSecure "5845047e3b1ea97ba665b17218acefdd318ef6aa15659ec8" @@ hightlight id_;_Browser("dcms 2").Page("dcms").WebEdit("userpwd")_;_script infofile_;_ZIP::ssf3.xml_;_
'Browser("dcms_2").Page("dcms").WebButton("WebButton").Click @@ hightlight id_;_Browser("dcms 2").Page("dcms").WebButton("WebButton")_;_script infofile_;_ZIP::ssf4.xml_;_
'Browser("dcms_2").Page("dcms_2").Sync @@ hightlight id_;_Browser("dcms_2").Page("dcms_2")_;_script infofile_;_ZIP::ssf5.xml_;_
'Browser("dcms_2").CloseAllTabs
'Browser("dcms").Page("dcms").Sync @@ hightlight id_;_Browser("dcms").Page("dcms")_;_script infofile_;_ZIP::ssf6.xml_;_
'Browser("dcms").CloseAllTabs



Set objLogin = Description.Create()
	objLogin("text").Value = "登录"
Set objUsename = Description.Create()
	objUsername("name").Value = "username"
Set objPwd = Description.Create()
	objPwd("name").Value = "userpwd"


With Browser("dcms").Page("dcms")
	.Link(objLogin).Click
End With
wait 5

Browser("dcms_2").Page("dcms").Sync


With Browser("dcms_2").Page("dcms")
	.WebEdit(objUsename).Set "1845875521@qq.com"
	.WebEdit(objPwd).Set "aomenfeng"
	.WebButton("WebButton").Click
End With

Browser("dcms_2").Page("dcms_2").Sync @@ hightlight id_;_Browser("dcms_2").Page("dcms_2")_;_script infofile_;_ZIP::ssf5.xml_;_
Browser("dcms_2").CloseAllTabs
Browser("dcms").Page("dcms").Sync @@ hightlight id_;_Browser("dcms").Page("dcms")_;_script infofile_;_ZIP::ssf6.xml_;_
Browser("dcms").CloseAllTabs
