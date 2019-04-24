program causalplot
syntax anything [,TIPO(string) LINK(string) ]

local dir `c(pwd')
if ("`link'"==""){
error, link need it
}
else {
local link "`link'"
cd `dir'

local obs `1'
local cal `2'

if ("`tipo'"=="omitida"){
qui{

kplot1 `obs' , tipo(omitida)

markstat1 using diap_omitida.stmd,slides(santiago) 
}
}

if ("`tipo'"=="psm"){
qui{

kplot1 `obs' `cal' , tipo(psm)

markstat1 using diap_psm.stmd,slides(santiago)
}
}

if ("`tipo'"=="dd"){
qui{

kplot1 `obs' , tipo(dd)

markstat1 using diap_dd.stmd,slides(santiago)
}
}

if ("`tipo'"=="rd"){
qui{

kplot1 `obs' `cal' , tipo(rd)

markstat1 using diap_rd.stmd,slides(santiago) 
}
}
}
end
