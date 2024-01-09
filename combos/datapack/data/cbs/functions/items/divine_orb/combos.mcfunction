# left -> 1
# right -> 2
execute if score @s cbs.clicks matches 11 run function cbs:player/clicks/combinations {combo:"radiance",stamina:0,id:"divine_orb"}
execute if score @s cbs.clicks matches 12 run function cbs:player/clicks/combinations {combo:"blinding_light",stamina:220,id:"divine_orb"}
execute if score @s cbs.clicks matches 21 run function cbs:player/clicks/combinations {combo:"refraction",stamina:700,id:"divine_orb"}
execute if score @s cbs.clicks matches 221 run function cbs:player/clicks/combinations {combo:"focus",stamina:200,id:"divine_orb"}
execute if score @s cbs.clicks matches 222 run function cbs:player/clicks/combinations {combo:"diffuse",stamina:200,id:"divine_orb"}
