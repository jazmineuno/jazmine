setenv CC clang ; setenv CXX clang++ ; setenv CFLAGS "-I/usr/local/include -I/usr/local/include/db48" ; setenv CXXFLAGS "-I/usr/local/include -I/usr/local/include/db48" ; setenv LDFLAGS "-L/usr/local/lib" ; setenv CMAKE_LINKER=/usr/local/bin/ld; gmake -j8
