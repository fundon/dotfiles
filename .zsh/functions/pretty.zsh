# https://github.com/jkbr/httpie/blob/master/httpie/solarized.py
# Add to `site-packages/pygments/styles/solarized256.py`
# Example:
#   pretty -l json package.json

pretty() {
  pygmentize -O style=solarized256 -f terminal256 -g $* | less -R
}
