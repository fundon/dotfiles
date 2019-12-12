function hex_to_rgb --description "hex to rgb, SPE with ;"
  set -l s $argv[1]
  set -l r (printf "%d" "0x"(string sub -s 1 -l 2 "$s"))
  set -l g (printf "%d" "0x"(string sub -s 3 -l 2 "$s"))
  set -l b (printf "%d" "0x"(string sub -s 5 -l 2 "$s"))
  echo "$r;$g;$b"
end

