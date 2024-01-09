# left -> 1
# right -> 2
execute if score @s cbs.clicks matches 11 run function cbs:player/clicks/combinations {combo:"shock",stamina:330,id:"thundering_staff"}
execute if score @s cbs.clicks matches 12 run function cbs:player/clicks/combinations {combo:"superconduct",stamina:400,id:"thundering_staff"}
execute if score @s cbs.clicks matches 21 run function cbs:player/clicks/combinations {combo:"charge",stamina:600,id:"thundering_staff"}
execute if score @s cbs.clicks matches 22 run function cbs:player/clicks/combinations {combo:"thunder",stamina:100,id:"thundering_staff"}
