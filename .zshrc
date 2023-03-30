format = """
[](fg:bright-yellow)\
$directory\
[](fg:bright-yellow bg:black)\
[](fg:black bg:yellow)\
$git_branch\
$git_status\
[](fg:yellow bg:black)\
[](fg:black bg:cyan)\
$hostname\
[](fg:cyan )\

$c\
$dart\
$elixir\
$elm\
$golang\
$haskell\
$java\
$julia\
$kotlin\
$lua\
$nodejs\
$nim\
$python\
$rlang\
$ruby\
$rust\
$scala\

$character
"""

right_format = """
$cmd_duration\
$memory_usage\
$docker_context\
$time\
$username\
$localip\

"""

continuation_prompt = "[](green)"

[character]
success_symbol = "[🏄](yellow)"
error_symbol = "[](red)"

[os]
format = "[$symbol]($style)"
style =	"bold white"
disabled = true 

[localip]
ssh_only = false
style= "fg:white"
format = '[|$localipv4 ]($style)'
disabled = true

[hostname]
ssh_only = false
style = "fg:black bg:cyan"
format = '[ $hostname ]($style)'


[username]
style_user= "fg:white"
style_root = "fg:black bg:cyan"
format = '[ $user  Kubix Cloud  BK-v105]($style)'

[directory]
style = "fg:black bg:bright-yellow"
truncate_to_repo = false
read_only = " 🔒 "
format = "[ $path ]($style)"
truncation_length = 8
truncation_symbol = " …/ " 

[directory.substitutions]
"~" = " ~"
"Documents" = "  Documents"
"Downloads" = "   Downloads"
"Music" = "   Music"
"Pictures" = "   Pictures"
"Projects" = "   Projects"


[git_branch]
symbol = "  "
style = "fg:black bg:yellow"
format = '[ $symbol $branch ]($style)'

[git_status]
ahead = " $count "
behind = " $count "
deleted = "﫧$count "
diverged = " $count "
stashed = " $count "
modified = " $count "
staged = " $count "
renamed = " $count "
untracked = " $count"
style = "fg:black bg:yellow"
format = '[$all_status$ahead_behind ]($style)'

[time]
disabled = false
time_format = "%R" # Hour:Minute Format
style = "fg:white"
format = '[  $time ]($style)'

[cmd_duration]
style = "yellow"
format = '[  $duration ]($style)'

[memory_usage]
disabled = false
threshold = 80
symbol = ' '
style = 'yellow'
format = '[ $symbol $ram]($style)'

[docker_context]
symbol = " "
style = "fg:#06969A bold"
format = '[ $symbol $context ]($style) $path'

[c]
symbol = " "
style = "fg:#3F4347 bold"
format = '[ $symbol ($version) ]($style)'

[dart]
symbol = " "
style = "fg:#3FBEF7 bold"
format = '[ $symbol ($version) ]($style)'

[elixir]
symbol = " "
style = "fg:#422758 bold"
format = '[ $symbol ($version) ]($style)'

[elm]
symbol = " "
style = "fg:#F0AD00 bold"
format = '[ $symbol ($version) ]($style)'

[golang]
symbol = " "
style = "fg:#00ACD7 bold"
format = '[ $symbol ($version) ]($style)'

[haskell]
symbol = " "
style = "fg:#9C4B89 bold"
format = '[ $symbol ($version) ]($style)'

[java]
symbol = " "
style = "fg:#F0931C bold"
format = '[ $symbol ($version) ]($style)'

[julia]
symbol = " "
style = "fg:#CA3C32 bold"
format = '[ $symbol ($version) ]($style)'

[kotlin]
symbol = "🅺 "
style = "fg:#746DDA bold"
format = '[ $symbol ($version) ]($style)'

[lua]
symbol = " "
style = "fg:#0402A9 bold"
format = '[ $symbol ($version) ]($style)'

[nodejs]
symbol = ""
style = "fg:#6BA15C bold"
format = '[ $symbol ($version) ]($style)'

[nim]
symbol = " "
style = "fg:#F7E852 bold"
format = '[ $symbol ($version) ]($style)'

[python]
symbol = " "
style = "fg:#316A9A bold"
format = '[ $symbol ($version) ]($style)'

[rlang]
symbol = "ﳒ "
style = "fg:#2266B8 bold"
format = '[ $symbol ($version) ]($style)'

[ruby]
symbol = " "
style = "fg:#B91B0B bold"
format = '[ $symbol ($version) ]($style)'

[rust]
symbol = " "
style = "fg:#C26F2E bold"
format = '[ $symbol ($version) ]($style)'

[scala]
symbol = " "
style = "fg:#D73222 bold"
format = '[ $symbol ($version) ]($style)'
