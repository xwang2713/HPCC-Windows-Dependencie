1. Install Microsoft SDKs. For example, v6.0A
2. create winldap directory and copy following files from Microsoft SDKs

     winldap\
	    include\
		    BaseTsd.h
			BaseTyps.h
			SChannel.h
			Schnlsp.h
			WinBer.h
			WinCrypt.h
			Winldap.h
		lib\
                   Wldap32.lib
		lib64\
		   Wldap32.lib  (from C:\Program Files\Microsoft SDKs\Windows\v6.0A\lib\x64\)
