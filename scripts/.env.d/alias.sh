##################################################
# Alias
##################################################
# only load in gentoo
if [ $(command -v lsb_release >/dev/null 2>&1 && echo true) ] && [ $(lsb_release -i | awk '{ print $3}') == "Gentoo" ]
then
    alias world_update='emerge --update --newuse --deep world'
fi
alias utop='htop -u jcarreira.it'
alias matlab_cmd='matlab -nosplash -nodesktop -nojvm -nodisplay'
alias ls='ls -h'
alias ll='ls -hvl'
alias katedit='SUDO_EDITOR=kate sudoedit'
alias btrfs-sbl='btrfs subvolume list --sort=path'
alias binhost-screen='ssh -t  icarus.itleiria.pt screen -R gentooBinHost -d'
alias pdf2png='convert -density 300 -background white -flatten'
alias libreoffice2pdf='libreoffice --headless --convert-to pdf:writer_pdf_Export --outdir .'
alias find-cursor='find-cursor --repeat 0 --follow --distance 1 --line-width 16 --size 16 --color red'
