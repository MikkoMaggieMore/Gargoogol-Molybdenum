outname=ggmb

if [[ "$OSTYPE" == "msys" ]]; then
	clang++ -O2 -s -o "out/$outname.exe" main.cpp -Ithird_party/include -Lthird_party/lib -DCURL_STATICLIB -static -Wl,--gc-sections -lcpr $(pkg-config --static --libs libcurl)
	out="$outname.exe"
	if [ -f "$out" ]; then
		echo "Build finished successfully."
	else
		echo "Build haulted completion; Stopped"
	fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
	clang++ -std=c++17 main.cpp -I/opt/local/include -L/opt/local/lib -lcpr -lcurl -o "out/$outname"
	out="$outname"
	if [ -f "$out" ]; then
		echo "Build finished successfully."
	else
		echo "Build haulted completion; Stopped"
	fi
else
	echo "unknown device"
fi

