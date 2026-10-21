if [[ "$OSTYPE" == "msys" ]]; then
	clang++ -O2 -s -o ggmb.exe main.cpp -Ithird_party/include -Lthird_party/lib -DCURL_STATICLIB -static -Wl,--gc-sections -lcpr $(pkg-config --static --libs libcurl)
elif [[ "$OSTYPE" == "darwin"* ]]; then
	clang++ -std=c++17 main.cpp -I/opt/local/include -L/opt/local/lib -lcpr -lcurl -o ggmb
else
	echo "unknown device"
fi
	echo "end"