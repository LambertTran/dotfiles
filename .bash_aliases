alias tf="terraform"
alias pm=". ~/.my_bash_aliases"
alias e="emacs"
alias kb="kubectl"
alias dexec="docker exec -it"
alias kexec="kubectl_ssh_docker"
alias getkb="get_kb_container"


kubectl_ssh_docker() {
    local name=$1
    kb exec -it $(kb get pods | grep ${name} | awk "{print \$1}") $2
}
