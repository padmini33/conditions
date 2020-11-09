if [ -a .hidden.txt ]
  then sudo rm .hidden.txt
  fi
#R CMD BATCH prog.R > .hidden.txt
Rscript prog.R > .hidden.txt
FS_SCORE=0 
if [ $(grep -w "toppers" prog.R | wc -l) -ge 1 ]&&[ $(grep -w "if" prog.R | wc -l) -gt 0 ]&&[ $(grep -w "else" prog.R | wc -l) -gt 0 ] || [ $(grep -w "ifelse" prog.R | wc -l) -gt 0 ] &&[ $(grep -w "sample" prog.R| wc -l) -gt 0 ]
  then FS_SCORE=$((FS_SCORE+ 100))
fi
echo "FS_SCORE:$FS_SCORE%"






