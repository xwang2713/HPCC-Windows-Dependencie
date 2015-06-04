1. Download http://www.libarchive.org/downloads/libarchive-3.1.2.zip
2. unpack the package which create the directory libarchive-3.1.2
3. create directory "build" and cd to it
4. Build 64bit  
   1. run: cmake -G "Visual Studio 9 2008 Win64" ../libarchive-3.1.2
   2. cmake --build . --config release
   2. create libarchive directory and copy following files to it:
      libarchive/
	 3.1.2/
	    include/
	           archive.h
	           archive_entry.h
	        lib/
	           Win64/
		        archive.dll
		        archive.exp
		        archive.lib
		        archive_static.lib
5. Build 32bit  
   1. run: cmake -G "Visual Studio 9 2008" ../libarchive-3.1.2
   2. cmake --build . --config release
   2. create libarchive directory and copy following files to it:
      libarchive/
	 3.1.2/
	      lib/
	         Win32/
	              archive.dll
		      archive.exp
		      archive.lib
		      archive_static.lib
