function docker-start
  set -q $argv[1]; and set -l machine "default"; or set -l machine $argv[1]
  docker-machine start $machine; eval (docker-machine env $machine)
end
