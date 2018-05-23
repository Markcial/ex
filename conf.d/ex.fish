# fish 2.2.0 does not include native snippet support. Upgrade to fish >= 2.3.0
# or append the following code to your ~/.config/fish/config.fish.

# for file in ~/.config/fish/conf.d/*.fish
#     source $file
# end

abbr i iex
abbr is "iex -S mix"
abbr phx "iex -S mix phx.server"
abbr m mix
abbr mn "mix new"
abbr md "mix deps.get"


function kiex
  if not command -sq kiex
    curl -sSL https://raw.githubusercontent.com/taylor/kiex/master/install | bash -s
  end
  command kiex $argv
end

abbr k "kiex"
abbr ki "kiex install"
abbr kl "kiex list"
abbr ks "kiex shell"
