1. https://www.openssl.org/source/openssl-1.0.2.tar.gz
2. Following instruction to compile 64bit:
   https://wiki.openssl.org/index.php/Compilation_and_Installation#W64
   copy the files:
     openssl\
	    win64\
		   include\
		       openssl\
			        <C/C++ Header Files>
		   lib\
		      libeay32.dll
			  libeay32.lib
			  openssl
			  ssleay32.dll
			  ssleay32.lib
3. Follow https://wiki.openssl.org/index.php/Compilation_and_Installation#W32 to build 32bit
   copy the files to openssl\win32\
