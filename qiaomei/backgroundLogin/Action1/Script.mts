ExecuteFile "C:\Script\Function.vbs"
ExecuteFile "C:\Script\Object.vbs"

OpenPage	"http://192.168.233.1:8032/MS/admin.php"

Browser(backBrowser).Sync
Browser(backBrowser).FullScreen
Browser(backBrowser).Page(ObjPage).Sync
				
With  Browser(backBrowser).Page(ObjPage)
	
      .WebEdit(objName).Set  "admin"
	  wait 5
	  .WebEdit(objPwd).set   "admin"
	  wait 5
	  .WebButton(objBtn).Click
End With





 @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理").WebButton("SUBMIT")_;_script infofile_;_ZIP::ssf3.xml_;_

 @@ hightlight id_;_Browser("Dcms管理").Page("Dcms管理").WebEdit("username")_;_script infofile_;_ZIP::ssf1.xml_;_




