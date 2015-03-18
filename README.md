# HPCC-Windows-Dependencie

To build HPCC Platform Community 64bit on Windows:

1. Make sure Microsoft Visual Studio 9 2008 64bit installed

2. git clone https://github.com/hpcc-systems/HPCC-Platform.git

3. create "build" directory and cd to "build"

3. cmake -G 'Visual Studio 9 2008 Win64' -DCMAKE_BUILD_TYPE=Release -DUSE_NATIVE_LIBRARIES=OFF 
        -DCHECK_GIT_TAG=0 -DUSE_PYTHON=OFF -DUSE_V8=OFF -DUSE_JNI=OFF -DUSE_RINSIDE=OFF 
		    -DEXTERNALS_DIRECTORY=<platform_externals>  -DUSE_APR=OFF -DUSE_MYSQL=OFF 
		    -DUSE_SQLITE3=OFF -DUSE_XALAN=ON -DUSE_CASSANDRA=OFF -DUSE_MEMCACHED=OFF ../HPCC-Platform

6. cmake --build . --config release  or build directly from Visual Studio

7. Simiar steps are applied for Visual Studio 9 2008 x86 build.


Currently there is no HPCC Platform Package build steps as well as start/stop HPCC processes.

There are readme.txt files under each dependened library directory under <platform_externals> which tell
how to get and build the library.


size of Xalan-C_1_11D.pdb and libboost_regex-vc90-mt-gd-1_57.lib exceeds github limitation 50MB
both are zipped. unzip them if need compile debug on with 64bit compiler.
