1. Download boost from http://sourceforge.net/projects/boost/files/boost/1.57.0/boost_1_57_0.zip/download
2. Make sure ICU  debug/release is built with VS 9 2008 Win64 (See readme in icu directory)
3. Build boost-regex in boost unzip directory as:
   bootstrap
   .\b2 --with-regex -sICU_PATH=<ICU> variant=debug,release toolset=msvc-9.0 address-model=64 threading=single,multi link=static,shared
   <ICU> is the directory contains ICU "include", "bin64" and "lib64"

4. copy boost_regrex-vc90-mt-1.57.*, boost_regrex-vc90-mt-gd-1.57.*,,libboost_regex-vc90-mt-1_57.lib and
   libboost_regex-vc90-mt-gd-1_57.lib to \boost\windows-x86_64-vc90\lib\

5. do the same for 32bit

  
It is important to has ICU debug libraries available otherwise boost build will not detect ICU.
Make sure when run "b2" you see "- has_icu builds     : yes"

size of libboost_regex-vc90-mt-gd-1_57.lib exceeds github limitation 50MB
libboost_regex-vc90-mt-gd-1_57.lib.zip is zipped file. unzip it if need compile debug on with 64bit compiler.
