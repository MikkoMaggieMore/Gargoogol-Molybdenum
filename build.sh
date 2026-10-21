#currently windows msys2 clang64 only

clang++ -O2 -s -o cprTest.exe main.cpp -Ithird_party/include -Lthird_party/lib -DCURL_STATICLIB -static -Wl,--gc-sections -lcpr $(pkg-config --static --libs libcurl)