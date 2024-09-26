$data modify storage prd:this subblockzeros set string storage prd:this subblockzeros 1 $(dummy3)
data modify storage prd:this dummy3 set from storage prd:this subblockzeros
function mk61:player/init3 with storage prd:this