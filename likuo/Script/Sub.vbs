'**************
'����
'**************

'��¼
Sub RightLogin()
	Browser(objBrowser).Sync
	'Browser(objBrowser).FullScreen
	With Browser(objBrowser).Page(objPage)
      		.WebEdit(objUserName).Set"admin"
      		.WebEdit(objPwd).Set"admin"
		.WebButton(objBtn).Click
	End With
End Sub
'�˳�
Sub ExitBrowser()
	With  Browser(objBrowser).Page(objPage)
	  	.Link(objAdmin).Click
	  	.Link(objOut).Click
	End With
	Browser(objBrowser).Page(objPage).Sync
	Browser(objBrowser).CloseAllTabs
End Sub