# left -> 1
# right -> 2
execute if score @s cbs.clicks matches 11 run function cbs:player/clicks/combinations {combo:"shoot",stamina:230,id:"bow"}
execute if score @s cbs.clicks matches 12 run function cbs:player/clicks/combinations {combo:"arrow_rain",stamina:400,id:"bow"}
execute if score @s cbs.clicks matches 21 run function cbs:player/clicks/combinations {combo:"detonate",stamina:650,id:"bow"}
execute if score @s cbs.clicks matches 22 run function cbs:player/clicks/combinations {combo:"vanish",stamina:400,id:"bow"}
