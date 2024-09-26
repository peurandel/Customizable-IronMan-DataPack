data modify storage prd:this dummy2 set string storage prd:this dummy 0 1
data modify storage prd:this dummy3 set string storage prd:this dummy -3 -1

data modify storage prd:this dummy set string storage prd:this dummy 2 -5
data modify storage prd:this subblockzeros set value "00000000000000000000000000"
function mk61:player/init5 with storage prd:this
