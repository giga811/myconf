#!/bin/bash
# displays clock using "watch", "date", "figlet"

# 引数
if [ $# -gt 1 ]; then
  echo "指定された引数は$#個です。" 1>&2
  echo "  usage: $0 <font name>" 1>&2
  echo "  fontnames: script(default), big, mini, block, smcript" 1>&2
  exit 1
fi

# default font
font=script
if [ $# -eq 1 ]; then
	font=$1
fi

# fonts list
fonts=("banner.flf  bubble.flf   lean.flf      script.flf  small.flf     smslant.flf\
 big.flf     digital.flf  mini.flf      shadow.flf  smscript.flf  standard.flf\
 block.flf   ivrit.flf    mnemonic.flf  slant.flf   smshadow.flf  term.flf")

# commands
date="date +%T"
figlet="figlet -W -f $font"
watch="watch -t -n1"

$watch "$date | $figlet"
