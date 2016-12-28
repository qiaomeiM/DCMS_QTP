Browser("Dcms管理").Page("Dcms管理").WebEdit("username").Set "admin" @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理").WebEdit("username")_;_script infofile_;_ZIP::ssf1.xml_;_
Browser("Dcms管理").Page("Dcms管理").WebEdit("userpwd").SetSecure "5859e62fdbdf47146bf6e0f0a7fdc8f2" @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理").WebEdit("userpwd")_;_script infofile_;_ZIP::ssf2.xml_;_
Browser("Dcms管理").Page("Dcms管理").WebButton("SUBMIT").Click @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理").WebButton("SUBMIT")_;_script infofile_;_ZIP::ssf3.xml_;_
Browser("Dcms管理").Page("Dcms管理_2").Link("优惠管理").Click @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理 2").Link("优惠管理")_;_script infofile_;_ZIP::ssf4.xml_;_
Browser("Dcms管理").Page("Dcms管理_2").Link("添加优惠").Click @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理 2").Link("添加优惠")_;_script infofile_;_ZIP::ssf5.xml_;_
Browser("Dcms管理").Page("Dcms管理_3").WebEdit("id").Set DataTable("Id", dtLocalSheet) @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理 3").WebEdit("id")_;_script infofile_;_ZIP::ssf6.xml_;_
Browser("Dcms管理").Page("Dcms管理_3").WebEdit("yprice").Set DataTable("p_Text", dtLocalSheet) @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理 3").WebEdit("yprice")_;_script infofile_;_ZIP::ssf7.xml_;_
Browser("Dcms管理").Page("Dcms管理_3").WebButton("Submit").Click @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理 3").WebButton("Submit")_;_script infofile_;_ZIP::ssf8.xml_;_
Browser("Dcms管理").Page("Dcms v1.0").Sync @@ hightlight id_;_Browser("Dcms管理").Page("Dcms v1.0")_;_script infofile_;_ZIP::ssf9.xml_;_
Browser("Dcms管理").CloseAllTabs