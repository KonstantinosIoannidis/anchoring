** Prepare raw experimental data **
import excel "..\Data\Experimental Data.xlsx", firstrow clear
run "..\Stata\Prepare Raw Data.do"

** Section 2 **
summarize age payoff_total
tabulate gender study, cell nofreq

** Subsection 3.1 **
do "..\Stata\Main Effect.do"
do "..\Stata\Robustness.do"

** Subsection 3.2 **
do "..\Stata\Direction"
do "..\Stata\Magnitude"

** Section 4 **
do "..\Stata\Power analysis"
** Meta Analysis **
import excel "..\Data\Meta Data.xlsx", firstrow clear
run "..\Stata\Prepare Meta Data.do"
do "..\Stata\Meta Analysis.do"