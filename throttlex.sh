#!/usr/bin/env bash

# 🔥 ThrottleX - Rate Limit Detector

if [ -z "$1" ]; then
echo "Usage:"
echo "./rld.sh <url> [method] [data]"
exit 1
fi

url="$1"
method="${2:-GET}"
data="$3"

requests=20
delay=0.2

echo "Target: $url"
echo "Method: $method"
echo "Requests: $requests"
echo ""

total_time=0
blocked=0

for ((i=1; i<=requests; i++)); do

if [ "$method" = "GET" ]; then
result=$(curl -o /dev/null -s -w "%{http_code} %{time_total}" "$url")
else
result=$(curl -o /dev/null -s -w "%{http_code} %{time_total}" -X "$method" "$url" -H "Content-Type: application/x-www-form-urlencoded" -d "$data")
fi

code=$(echo "$result" | awk '{print $1}')
time=$(echo "$result" | awk '{print $2}')

echo "[$i] Status: $code | Time: $time"

total_time=$(echo "$total_time + $time" | bc)

if [[ "$code" == "429" || "$code" == "403" ]]; then
((blocked++))
fi

sleep "$delay"

done

echo ""
avg=$(echo "scale=4; $total_time / $requests" | bc)

echo "Average Response Time: $avg"

if [ "$blocked" -gt 0 ]; then
echo "[!] Rate limiting detected"
else
echo "[+] No strong rate limiting detected"
fi
