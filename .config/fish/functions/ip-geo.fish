function ip-geo
  set ip (ip)
  curl -s "https://ipvigilante.com/$ip" | jq '.data'
end

