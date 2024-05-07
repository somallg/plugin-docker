<img src="https://cdn.rawgit.com/oh-my-fish/oh-my-fish/e4f1c2e0219a17e2c748b824004c8d0b38055c16/docs/logo.svg" align="left" width="144px" height="144px"/>

#### docker
> A docker aliases plugin for [Oh My Fish][omf-link]
> based loosely on the [Oh My Zsh Git Plugin][omz-git-plugin].

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE)
[![Fish Shell Version](https://img.shields.io/badge/fish-v3.5.0-007EC7.svg?style=flat-square)](https://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-007EC7.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)

<br/>

## Install

oh-my-fish:

```fish
$ omf install https://github.com/somallg/plugin-docker
```

## Sample workflow

```
cd my-repo       # enter a git repo
dcd              # stop all docker compose services
dcb nginx        # build nginx service
dcu nginx        # start nginx service in detach mode
dlf nginx        # follow nginx logs
```

## Usage

| Abbreviation | Command                                                     |
| ------------ | ----------------------------------------------------------- |
| d            | `docker`                                                    |
| dc           | `docker compose`                                            |
| dcb          | `docker compose build`                                      |
| dcd          | `docker compose down`                                       |
| dcr          | `docker compose restart`                                    |
| dcu          | `docker compose up -d`                                      |
| deti         | `docker exec -ti`                                           |
| dlf          | `docker logs --follow --tail 200`                           |


# License

[MIT][mit] © [somallg][author] et [al][contributors]


[mit]:            https://opensource.org/licenses/MIT
[author]:         https://github.com/somallg
[contributors]:   https://github.com/somallg/plugin-git/graphs/contributors
[omf-link]:       https://github.com/oh-my-fish/oh-my-fish

[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
[omz-git-plugin]: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git/
