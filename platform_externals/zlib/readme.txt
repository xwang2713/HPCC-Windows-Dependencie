1. Download zlib source from http://www.zlib.net/
2. unpack *.tar.gz and create a build directory
3. Inside build directory run: cmake -G "Visual Studio 9 2008 Win64" ../zlib-1.2.8
4. build: cmake --build . --config release
5. Prepare a directory:
      zlib\
        1.2.5\
          include\
              <C/C++ Header>
          lib\
             win64\
                zlib.lib
          