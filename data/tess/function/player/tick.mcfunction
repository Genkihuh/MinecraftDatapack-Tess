clear @s barrel[custom_name={translate:"tess.fixed_name"}]
function tess:player/linking
scoreboard players remove @s[scores={tess.button_cd=1..}] tess.button_cd 1