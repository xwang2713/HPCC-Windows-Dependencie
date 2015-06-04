1. Download zlib source from http://www.zlib.net/
2. unpack *.tar.gz and create a build directory
3. Build 64bit
  1. Inside build directory run: cmake -G "Visual Studio 9 2008 Win64" ../zlib-1.2.8
  2. build: cmake --build . --config release
  3. Prepare a directory:
      zlib\
        1.2.8\
          include\
              <C/C++ Header>
          lib\
             win64\
                zlib.lib
3. Build 32bit
  1. Inside build directory run: cmake -G "Visual Studio 9 2008" ../zlib-1.2.8
  2. build: cmake --build . --config release
  3. copy zlib.lib  
      zlib\
        1.2.8\
          lib\
             win32\
                zlib.lib
          
