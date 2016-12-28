systemUtil.Run "http://10.7.90.13:8032/MS/"
'LObject.vbs中存放的是对象库
ExecuteFile "C:\lianxi\LObject.vbs"
'LSub.vbsv存放的是登录和退出的过程
ExecuteFile "C:\lianxi\LSub.vbs"
Call Login()
'Call signOut()

Set objFname = Description.Create()
		objFname("name").value = "fname"
Set objWebButton = Description.Create()
		objWebButton("name").value = "搜索"
		objWebButton("type").value = "submit"
Set objAddCartshop = Description.Create()
		objAddCartshop("innertext").value = "+购物车"
       objAddCartshop("class").value = "addCarts"
        objAddCartshop("outertext").value = "+购物车 "
Set objCartshop = Description.Create()
		objCartshop("text").value = "购物车"
		objCartshop("html tag").value = "A"
Set objInput = Description.Create()
		objInput("name").value = "input[]"
		objInput("type").value = "checkbox"
		objInput("class").value = "in"
Set objAllInput = Description.Create()
		objAllInput("type").value = "checkbox"
		objAllInput("class").value = "all"
		objAllInput("value").value = "on"
		objAllInput("name").value = ""

Set objSubmit = Description.Create()
		objSubmit("type").value = "submit"
		objSubmit("name").value = "提交订单"
		objSubmit("html tag").value = "INPUT"
Set objConfirm = Description.Create()
		objConfirm("name").value = "确认订单"
		objConfirm("type").value = "submit"
		objConfirm("html tag").value = "INPUT"
Set objAchieve = Description.Create()
		objAchieve("name").value = "完成订单"
		objAchieve("type").value = "submit"
		objAchieve("html tag").value = "INPUT"
Browser(objBrowser ).Page(objPage).Sync
'Browser(objBrowser ).Page(objPage).WebEdit(objFname).Set "鱼香肉丝"
'Browser(objBrowser ).Page(objPage).WebButton(objWebButton).Click

'NameValue = Browser(objBrowser ).Page(objPage).WebElement(objAddCartshop).GetTOProperty("outertext")
'msgbox NameValue

With Browser(objBrowser ).Page(objPage)
'		.WebElement(objAddCartshop).click
		.Link(objCartshop).Click
'		.WebCheckBox(objInput).Set "ON"
		.WebCheckBox(objAllInput).Set "ON"
		wait 3
		.WebButton(objSubmit).Click
		.WebButton(objConfirm).Click
		.WebButton(objAchieve).Click
End With

'Browser("dcms_2").Page("dcms_2").WebCheckBox("input[]").Set "ON"
'Browser("dcms_2").Page("dcms_2").WebButton("提交订单").Click
'Browser("dcms_2").Page("dcms_3").WebButton("确认订单").Click
'Browser("dcms_2").Page("dcms_4").WebButton("完成订单").Click
'Browser("dcms_2").Page("dcms_5").Sync
'Browser("dcms_2").CloseAllTabs

'Browser("dcms_2").Page("dcms_2").WebCheckBox("input[]").Set "ON"
'Browser("dcms_2").Page("dcms_2").WebCheckBox("input[]").Set "OFF" @@ hightlight id_;_Browser("dcms 2").Page("dcms 2").WebCheckBox("input[]")_;_script infofile_;_ZIP::ssf16.xml_;_
'Browser("dcms_2").Page("dcms_2").WebCheckBox("input[]").Set "ON" @@ hightlight id_;_Browser("dcms 2").Page("dcms 2").WebCheckBox("input[]")_;_script infofile_;_ZIP::ssf17.xml_;_
'Browser("dcms_2").Page("dcms_2").WebCheckBox("WebCheckBox").Set "ON" @@ hightlight id_;_Browser("dcms 2").Page("dcms 2").WebCheckBox("WebCheckBox")_;_script infofile_;_ZIP::ssf22.xml_;_








