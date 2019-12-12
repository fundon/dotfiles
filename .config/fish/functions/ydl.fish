function ydl
  set link $argv[1]
  set old (pwd)

  set prefix "Mozilla/5.0"

  set agents "$prefix (Macintosh; Intel Mac OS X 10.14; rv:67.0) Gecko/20100101 Firefox/67.0" \
    "$prefix (Windows; U; Windows NT 6.1; rv:2.2) Gecko/20110201" \
    "$prefix (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36" \
    "$prefix (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.1.1 Safari/605.1.15" \
    "$prefix (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2227.0 Safari/537.36"

  set agent (random choice $agents)

  cd $HOME/youtube/
  echo "Downloading $link..."

  # --proxy "http://127.0.0.1:9090" \
  youtube-dl \
    --user-agent $agent \
    --add-metadata \
    -o '%(title)s.%(ext)s' \
    -f 'bestaudio' \
    --no-playlist \
    -x --audio-format best \
    --audio-quality 0 $link

  echo "$link success"
  cd $old
end

