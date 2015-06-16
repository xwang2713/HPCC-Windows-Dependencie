# Build boost-regrex package
Following instructions based on current boost version 1.57.0.

1. Download boost from http://sourceforge.net/projects/boost/files/boost/1.57.0/boost_1_57_0.zip/download
2. Make sure ICU debug/release is built.  See README.md in icu directory for more detail.
   It is import to have ICU debug libraries available, otherwise boost build will not detect ICU.
   Make sure when you run "b2" you see a "- has_icu builds     : yes" message.
3. unzip and cd to top level boost directory :
   1. bootstrap
   2. build boost-regex with VC 9 2008 for 32-bit, release and debug, static and shared, single and multiple threading:
      .\b2 --with-regex -sICU_PATH=<ICU> variant=debug,release toolset=msvc-9.0 address-model=32 threading=single,multi link=static,shared
      <ICU> is the directory that contains ICU "include", "bin", and "lib"
      copy the 32bit libraries to boost\windows-i386\lib\ 
      boost_regrex-vc90-mt-1.57.*, boost_regrex-vc90-mt-gd-1.57.*,libboost_regex-vc90-mt-1_57.lib and libboost_regex-vc90-mt-gd-1_57.lib 
      32-bit libraries are under bin.v2\libs\regex\build\msvc90\debug\adress-model-32\ and 
                                bin.v2\libs\regex\build\msvc90\release\adress-model-32\ and 
   3. build boost-regex with VC 9 2008 for 64-bit, release and debug, static and shared, single and multiple threading:
      .\b2 --with-regex -sICU_PATH=<ICU> variant=debug,release toolset=msvc-9.0 address-model=64 threading=single,multi link=static,shared
      <ICU> is the directory that contains ICU "include", "bin64", and "lib64"
      copy 64-bit libraries to boost\windows-x86_64\lib\ 
      boost_regrex-vc90-mt-1.57.*, boost_regrex-vc90-mt-gd-1.57.*,libboost_regex-vc90-mt-1_57.lib and libboost_regex-vc90-mt-gd-1_57.lib 
      64bit libraries are under bin.v2\libs\regex\build\msvc90\debug\adress-model-64\ and 
                                bin.v2\libs\regex\build\msvc90\release\adress-model-64\  
   4. For x64 debug needs to be built also: 
      .\b2 --with-regex -sICU_PATH=<ICU> variant=debug toolset=msvc-9.0 address-model=64 threading=multi link=static runtime-link=static
      This will create "libboost_regex-vc90-sgd-<version>.lib as required by /MTd option when building HPCC Platform x64 debug. 
      Copy it to bin.v2\libs\regex\build\msvc90\debug\adress-model-64\  
