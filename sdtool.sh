#url flag
url="http://localhost:8080"

#logic
if !command -v wget > /dev/null; then
	printf "cannot find wget, trying curl\n"
	while true; do
		curl -I "$url"
	done
fi
if command -v wget > /dev/null; then
	while true; do
		wget "$url"
	done
fi
