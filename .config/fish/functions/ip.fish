function ip --description "Fetch IP"
  set -l opt $argv[1]; set -q $opt; and set -l opt 'a'
  switch $opt
    case d
      dig +short myip.opendns.com @resolver1.opendns.com
    case t
      open http://ip.telegram.wiki/
    case a
      curl -s https://api.ipify.org/
    case m
      curl -s https://myip.ipip.net
    case '*'
      curl -s https://checkip.amazonaws.com/
  end
end
