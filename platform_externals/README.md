# HPCC-Windows-Dependencies

HPCC Platform and Clienttool builds are tested with Visual Studio 9 2008 and Visual Studio 12 2013 
for both 32bit and 64bit. For other Visual Studio versions users need to re-compile boost-regex. 
See the readme in the boost directory for details. 

## Setup

1. Verify an approved version Microsoft Visual Studio is properly installed
2. Microsoft Visual Studio 9 2008 by default may only enable 32bit
   To add 64bit support re-run the setup.exe select "Add or Remove Features"
   -> Language Tools -> Visual C++. Select "X64Compiler and Tools"
3. Verify the git package is properly installed, for example "git bash"  


## Build 

Get this repository from github: git clone https://github.com/hpcc-systems/HPCC-Windows-Dependencies.git

### HPCC Clienttools

1. git clone https://github.com/hpcc-systems/HPCC-Platform.git
2. create a "build" directory and cd to "build"
3. cmake -G '<Visual Studio Generator>' -DCMAKE_BUILD_TYPE=<TYPE> -DCHECK_GIT_TAG=0 -DCLIENTTOOLS_ONLY=ON 
         -DEXTERNALS_DIRECTORY=<full path of platform_externals directory of this repository>
         -DUSE_NATIVE_LIBRARIES=OFF -DUSE_PYTHON=OFF -DUSE_V8=OFF -DUSE_JNI=OFF -DUSE_RINSIDE=OFF 
         -DUSE_APR=OFF -DUSE_MYSQL=OFF -DUSE_SQLITE3=OFF -DUSE_XALAN=ON -DUSE_CASSANDRA=OFF
         -DUSE_MEMCACHED=OFF -DUSE_REDIS=OFF ../HPCC-Platform
   Tested on Visual Studio Generator (version and architecture): 
         Visual Studio 9 2008
         Visual Studio 9 2008 Win64
         Visual Studio 12 2013
         Visual Studio 12 Win64
   TYPE: Release or Debug
4. cmake --build . --config <TYPE>  or build directly from Visual Studio
5. cmake --build . --config <TYPE> --target package

Build Clienttools with Visual Studio 9 2008 Win64 does not work with above method  due to code generation failed.
See "Troubleshooting 2" for the workaround. Alternatively user can use VC 12 2013 Win64.


### HPCC Platform Libraries

1. git clone https://github.com/hpcc-systems/HPCC-Platform.git
2. create "build" directory and cd to "build"
3. cmake -G '<Visual Studio Generator>' -DCMAKE_BUILD_TYPE=<TYPE>  -DCHECK_GIT_TAG=0 
         -DEXTERNALS_DIRECTORY=<full path of platform_externals directory of this repository>
         -DUSE_NATIVE_LIBRARIES=OFF -DUSE_PYTHON=OFF -DUSE_V8=OFF -DUSE_JNI=OFF -DUSE_RINSIDE=OFF 
         -DUSE_APR=OFF -DUSE_MYSQL=OFF -DUSE_SQLITE3=OFF -DUSE_XALAN=ON -DUSE_CASSANDRA=OFF
         -DUSE_MEMCACHED=OFF -DUSE_REDIS=OFF ../HPCC-Platform
   Tested on Visual Studio Generator (version and architecture): 
         Visual Studio 9 2008
         Visual Studio 9 2008 Win64
         Visual Studio 12 2013
         Visual Studio 12 Win64
   TYPE: Release or Debug
4. cmake --build . --config <TYPE>  or build directly from Visual Studio

Currently there is no HPCC Platform Package build step as well as start/stop HPCC processes.
The HPCC-Platform libraries are mainly used for building other HPCC products. For example, the ODBC Connector, etc.


### LN Clienttools 

'''This is for internal users only'''

1. git clone https://github.com/hpcc-systems/HPCC-Platform.git
2. git clone https://github.com/hpcc-systems/LN.git
3. create "build" directory and cd to "build"
4. cmake -G '<Visual Studio Generator>' -DCMAKE_BUILD_TYPE=<TYPE> -DCHECK_GIT_TAG=0 -DCLIENTTOOLS_ONLY=ON 
         -DEXTERNALS_DIRECTORY=<full path of platform_externals directory of this repository>
         -DUSE_NATIVE_LIBRARIES=OFF -DUSE_PYTHON=OFF -DUSE_V8=OFF -DUSE_JNI=OFF -DUSE_RINSIDE=OFF 
         -DUSE_APR=OFF -DUSE_MYSQL=OFF -DUSE_SQLITE3=OFF -DUSE_XALAN=ON -DUSE_CASSANDRA=OFF
         -DUSE_MEMCACHED=OFF -DUSE_REDIS=OFF ../LN
   Tested on Visual Studio Generator (version and architecture): 
         Visual Studio 9 2008
         Visual Studio 9 2008 Win64
         Visual Studio 12 2013
         Visual Studio 12 Win64
   TYPE: Release or Debug
5. cmd /C ""C:\Program Files (x86)\Microsoft Visual Studio <9.0|12.0>\Common7\IDE\devenv.com"
            lexisnexisrs-platform.sln /build <TYPE>"
6. cmake --build . --config <TYPE> --target package


### HPCC LN Libraries

'''This is for internal users only'''

1. git clone https://github.com/hpcc-systems/HPCC-Platform.git
2. git clone https://github.com/hpcc-systems/LN.git
3. create "build" directory and cd to "build"
4. cmake -G '<Visual Studio Generator>' -DCMAKE_BUILD_TYPE=<TYPE>  -DCHECK_GIT_TAG=0 
         -DEXTERNALS_DIRECTORY=<full path of platform_externals directory of this repository>
         -DUSE_NATIVE_LIBRARIES=OFF -DUSE_PYTHON=OFF -DUSE_V8=OFF -DUSE_JNI=OFF -DUSE_RINSIDE=OFF 
         -DUSE_APR=OFF -DUSE_MYSQL=OFF -DUSE_SQLITE3=OFF -DUSE_XALAN=ON -DUSE_CASSANDRA=OFF
         -DUSE_MEMCACHED=OFF -DUSE_REDIS=OFF ../LN
   Tested on Visual Studio Generator (version and architecture): 
         Visual Studio 9 2008
         Visual Studio 9 2008 Win64
         Visual Studio 12 2013
         Visual Studio 12 Win64
   TYPE: Release or Debug

5. cmd /C ""C:\Program Files (x86)\Microsoft Visual Studio <9.0|12.0>\Common7\IDE\devenv.com"
            lexisnexisrs-platform.sln /build <TYPE>"


## Troubleshooting 

1. When building the HPCC Platform debug version x86, if you get "LINK : fatal error LNK1000: Internal error during IncrBuildImage", download VS90-KB948127.exe to fix it. This is a known issue on VS 9 (2008)

2. When building the HPCC debug version x64, and code generation doesn't work and/or you get following error, install 
   "http://www.microsoft.com/en-us/download/confirmation.aspx?id=2092"

   The application has failed to start because its side-by-side configuration is incorrect. Please see the
   application event log or use the command-line sxstrace.exe tool for more detail.
   Project : error PRJ0019: A tool returned an error code from "Generating ../../generated/WsDeploy.xml"

   The root problem is Microsoft.VC90.DebugCRT,processorArchitecture="amd64" could not be found. 
     
   The workaround is to copy c:\Program Files(x86)\Microsoft Visual Studio 9.0\VC\redict\Debug_NonRedist\
   amd64\Microsoft.VC90.DebugCRT\*.* to <HPCC Build>\bin\Debug, then run the build from Visual Studio (Debug x64)

