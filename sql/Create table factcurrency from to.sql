Create table se_demo_library.as_adventure.factcurrencyrate_from_to as
Select 
curFrom."currencykey" as currencykey_from,
curTo."currencykey" as currencykey_to,
curFrom."datekey" as datekey,
curFrom."averagerate" / curTo."averagerate" as avaragerate
from 
se_demo_library.as_adventure.factcurrencyrate curFrom
join se_demo_library.as_adventure.factcurrencyrate curTo
on curTo."datekey" = curfrom."datekey"
where
curfrom."currencykey" in (6,19,29,39,98,100)
and curto."currencykey" in (6,19,29,39,98,100)