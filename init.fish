# omf initialization.
# $path is only defined for oh-my-fish. home-manager activates this plugin by
# adding the full path of functions/ to fish_function_path, and then sourcing
# init.fish, so let's skip sourcing __docker.init.fish before calling __docker.init.
set -l __docker_init_path "$path/functions/__docker.init.fish"
if [ -f "$__docker_init_path" ];
    source "$__docker_init_path"
end
__docker.init
