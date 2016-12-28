'**************
'¹ý³Ì
'**************

'µÇÂ¼
Sub RightLogin()
	Browser(objBrowser).Page(objPage).Sync
	With  Browser(objBrowser).Page(objPage)
      	.WebEdit(objName).Set"admin"
	  	.WebEdit(objPwd).Set"admin"
	  	.WebButton(objBtn).Click
	  	.Link(objAdmin).Click
	  	.Link(objOut).Click
	End With

	Browser(objBrowser).Page(objPage).Sync
	Browser(objBrowser).CloseAllTabs
End Sub
'ÍË³ö
Sub ExitBrowser()
	With  Browser(objBrowser).Page(objPage)
	  	.Link(objAdmin).Click
	  	.Link(objOut).Click
	End With
	Browser(objBrowser).Page(objPage).Sync
	Browser(objBrowser).CloseAllTabs
End Sub