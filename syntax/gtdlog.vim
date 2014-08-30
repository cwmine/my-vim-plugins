" syntax highlight and utility function for gtd log
" Date and time, e.g. 2014-08-20 14:46:48
" O: Objective
" P: process or anything need to be recorded during the period of LOG
" R: Result
"
" syntax keywords
syn match DateTime  +^\d\{4}[-/]\d\{1,2}[-/]\d\{1,2} \d\{1,2}:\d\{1,2}:\d\{1,2}+
syn match ObjectiveText +\(^O[:：]\)\@<=.*$+
syn match LogHeader +^[OPR][:：]+
syn match BadResult +\c\(^R[:：].*\)\@<=\<\(interrupted\|distracted\|sleepy\|distraction\)\>+
syn match GoodResult +\c\(^R[:：].*\)\@<=\<\(done\)\>+
syn match TODO +\<TODO:.*$+

highlight DateTime guifg=lightblue
highlight LogHeader guifg=purple
highlight ObjectiveText guifg=yellow
highlight BadResult guifg=Red
highlight GoodResult guifg=White
highlight TODO guifg=blue guibg=yellow

set spell

