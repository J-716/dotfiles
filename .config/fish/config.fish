# Disable greeting
set fish_greeting

function gitw
    git -c user.signingkey=$HOME/.ssh/id_ed25519_work $argv
end

function gitp
    git -c user.signingkey=$HOME/.ssh/id_ed25519_personal $argv
end

