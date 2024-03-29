##################################################
# Alias
##################################################
# only load in gentoo
#if [ $(command -v lsb_release >/dev/null 2>&1 && echo true) ] && [ $(lsb_release -i | awk '{ print $3}') == "Gentoo" ]
if [[ -f /etc/portage/make.conf ]]
then
    alias world_update='emerge --update --newuse --deep world'
fi
alias utop='htop -u jcarreira.it'
alias matlab_cmd='matlab -nosplash -nodesktop -nojvm -nodisplay'
alias ls='ls -h --color'
alias ll='ls -hvl --color'
alias katedit='SUDO_EDITOR=kate sudoedit'
alias btrfs-sbl='btrfs subvolume list --sort=path'
alias pdf2png='convert -density 300 -background white -flatten'
alias libreoffice2pdf='libreoffice --headless --convert-to pdf:writer_pdf_Export --outdir .'
alias find-cursor='find-cursor --repeat 0 --follow --distance 1 --line-width 16 --size 16 --color red'


# Git
alias gs='git status'
alias gl='git log --graph --decorate'

# Binhost
#alias binhost-screen='ssh -t  icarus.itleiria.pt tmux a -t gentooBinHost'
alias binhost-screen='ssh -t  root@gentoo-binhost.home tmux a -t gentooBinHost || ssh -t  root@gentoo-binhost.home tmux new -t gentooBinHost'
