function git-commit-type --description "Define a git commit type"
  set -l type
  set -l scope
  set -l message
  set -l s
  set -l a
  set -l c (count $argv)
  switch $c
    case 1
      set type $argv[1]
      set s "$type: "
    case 2
      set type $argv[1]
      set message $argv[2]
      set s "$type: $message"
    case 3
      set type $argv[1]
      set scope $argv[2]
      set message $argv[3]
      set s "$type($scope): $message"
    case '*'
      # pass
  end

  git commit -m $s
end

