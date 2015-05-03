grails {
	mongo {
		host = "localhost"
		port = 27017
		username = ""
		password = ""
		//databaseName = "myapp_db"
	}
}
environments {
	development {
		grails{
			mongo {
				dbCreate = "create-drop"
				databaseName = "vBPM_DevDB"
			}
		}
	}
	test {
		grails{
			mongo {
				dbCreate = "update"
				databaseName = "vBPM_TestDB"
			}
		}
	}
	production {
		grails{
			mongo {
				dbCreate = "update"
				databaseName = "vBPM_ProDB"
			}
		}
	}
}