function __docker.init
  function __docker.create_abbr -d "Create docker plugin abbreviation"
    set -l name $argv[1]
    set -l body $argv[2..-1]

    # TODO: global scope abbr will be default in fish 3.6.0
    abbr -a -g $name $body
  end

  # Provide a smooth transition from universal to global abbreviations by
  # deleting the old univeral ones.  Can be removed after fish 3.6 is in
  # wide-spread use, i.e. 2024.  __docker.destroy should also be removed
  # at the same time.
  if set -q __docker_plugin_initialized
    __docker.destroy
  end

  # docker abbreviations
  __docker.create_abbr d          docker
  __docker.create_abbr dc         docker compose

  __docker.create_abbr dcb        docker compose build
  __docker.create_abbr dcd        docker compose down
  __docker.create_abbr dcu        docker compose up -d
  __docker.create_abbr deti       docker exec -ti
  __docker.create_abbr dlf        docker logs --follow --tail 200

  # Cleanup declared functions
  functions -e __docker.create_abbr
end
