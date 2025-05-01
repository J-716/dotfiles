# Disable greeting
set fish_greeting

direnv hook fish | source

# Git commit wrappers to inject signing keys
function gitw
    git -c user.signingkey=$HOME/.ssh/id_ed25519_work $argv
end

function gitp
    git -c user.signingkey=$HOME/.ssh/id_ed25519_personal $argv
end
