
red="%{\033[1;31m%}"
green="%{\033[0;32m%}"
yellow="%{\033[1;33m%}"
blue="%{\033[1;34m%}"
magenta="%{\033[1;35m%}"
cyan="%{\033[1;36m%}"
white="%{\033[0;37m%}"
end="%{\033[0m%}"

#export SUBVERSIONVER=1.7.3
export SUBVERSIONVER=1.8.10
export svn="http://svn.blr.broadcom.com/svn-sj1/wlansvn/"

export PS1='\[\e[36;1m\]\u@\h: \[\e[34;1m\][\D{%F_%T}] $(EX=$?; if [ $EX != 0 ]; then echo "\[\e[31;1m\]\033[5m$EX\033[0m"; else echo "\[\e[32;1m\]"$EX; fi;) \[\e[33;1m\]\w\n\[\e[32;1m\]$ \[\e[0m\]\[\e]0;\H:\w\a\]'

export PATH="~/bin:/tools/bin:/usr/local/bin:/usr/bin:/bin:/usr/X/bin:/usr/sbin:/sbin:/opt/CTXSmf/bin:/opt/TWWfsw/kde35/bin:/projects/hnd/tools/linux/bin:/projects/hnd/tools/linux/hndtools-mipsel-uclibc/bin:/projects/hnd/tools/linux/hndtools-mipsel-linux/bin:/projects/hnd/tools/linux/hndtools-arm-linux-2.6.36-uclibc-4.5.3/bin:/projects/hnd/tools/linux/hndtools-mips-wrs-vxworks/bin:/projects/hnd/tools/linux/hndtools-armelf-linux-4.0.1/bin:/projects/hnd/tools/linux/hndtools-armeabi-2011.09/bin:/projects/hnd/tools/linux-2.6.38.6-26.rc1.fc15.i686.PAE/bin:/projects/hnd/tools/linux/bin:/tools/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:.:/opt/edtm/bin:/opt/edta/bin:/tools/libutils/bin:$PATH"

export CSCOPEVER=OS

export SVN=http://svn.blr.broadcom.com/svn-sj1/wlansvn/proj/


export CVSROOT=":pserver:raghurab@cvsps-sj1-1.sj.broadcom.com:/projects/cvsroot"
alias vi='vim'
alias ll='ls -l'
alias la='ls -l -a'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias ........='cd ../../../../../../..'
alias .........='cd ../../../../../../../..'
# svn diff with external (gnu) diff and ask for 0 context lines
alias svndiff='svn diff --diff-cmd=diff -x -U0'

alias ctcs='ctags -R * && cscope -Rb'

export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'
alias gr='grep -IRin'
alias gre='tmpfun() { find $2 -type d -name $3 -prune -false -o -type f -exec grep -HIi $1 "{}" \;; }; tmpfun $@'
alias fin='find . -iname'

alias ce='tmpfun() { echo -e "0\nscale = 4\n$@" | bc -lq; }; tmpfun $@'

alias b2H='tmpfun() { echo "obase=16; ibase=2; $@" | bc; }; tmpfun $@'
alias d2H='tmpfun() { echo "obase=16; ibase=10; $@" | bc; }; tmpfun $@'
alias d2b='tmpfun() { echo "ibase=10; obase=2; $@" | bc; }; tmpfun $@'

alias b2h='tmpfun() { echo "obase=16; ibase=2; $@" | bc | tr [A-Z] [a-z]; }; tmpfun $@'
alias d2h='tmpfun() { echo "obase=16; ibase=10; $@" | bc | tr [A-Z] [a-z]; }; tmpfun $@'
alias h2b='tmpfun() { echo "ibase=16; obase=2;" `echo $@ | tr [a-z] [A-Z]` | bc; }; tmpfun $@'
alias h2d='tmpfun() { echo "obase=10; ibase=16;" `echo $@ | tr [a-z] [A-Z]` | bc; }; tmpfun $@'

alias vsk='vncserver -kill :1'
alias vsg='vncserver :1 -geometry 1024x800'
alias csty='cstyle `svn st -q`'

function qs {
  # TOSVR=xlinux
  TOSVR=xl-blr-06 # fixed since 02, 03, ... give errors during compilation/install
  if [ $# -lt 1 ]; then ssh $TOSVR; return; fi

  if [ "x${1}" == "xsj" ]; then rlogin xlinux.sj; return; fi

  TOSVR="raghurab-test${1}"
  ssh $TOSVR
}

alias wk='cd /projects/hnd_software_ext_8/work/raghurab/'
alias wkd='cd /projects/hnd_software_ext_8/work/raghurab/router/dhdap/'
alias svnst='find . -type d -name ".svn"'

alias iperfts='while [ 1 ] ; do /projects/hnd/tools/linux/bin/iperf -i 1 -f m -w 2M -s | grep -v ID; sleep 1; done'
alias iperftc='tempfun() { /projects/hnd/tools/linux/bin/iperf -i 1 -f m -w 2M -c $1 -t 10000| grep -v ID; }; tempfun $@'
alias iperfus='while [ 1 ] ; do /projects/hnd/tools/linux/bin/iperf -i 1 -f m -w 2M -u -s | grep -v ID; sleep 1; done'
alias iperfuc='tempfun() { /projects/hnd/tools/linux/bin/iperf -i 1 -f m -w 2M -u -c $1 -b 1200M -t 10000 | grep -v ID; }; tempfun $@'

alias CD='tmpfun() { (>&2 echo -e "\n${USER}@${HOSTNAME}: "`pwd`" \$  cd $1"; cd $1; shift; >&2 echo -e "${USER}@${HOSTNAME}: "`pwd`" \$  $@\n"; $@); }; tmpfun $@'

