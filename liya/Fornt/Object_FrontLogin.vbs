Set MyBrowser= Description.Create()
	MyBrowser("hastoolbar").value = "True"
	MyBrowser("hasstatusbar").value = "False"
	MyBrowser("hasmenubar").value = "True"


Set MyPage= Description.Create()
	MyPage("title").value = "dcms"

Set MyLogin= Description.Create()
	MyLogin("name").value = "µÇÂ¼"
	MyLogin("type").value = "submit"
	MyLogin("html tag").value = "INPUT"


Set MyName= Description.Create()
	MyName("name").value = "username"
	MyName("type").value = "text"

Set MyPwd = Description.Create()
	MyPwd("name").value = "userpwd"

Set MyExit = Description.Create()
	MyExit ("text").value = "ÍË³ö"