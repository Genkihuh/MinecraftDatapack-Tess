#本函数执行实体：即将切换容器ui的容器实体item_display

#缓存非ui物品
execute on passengers if entity @s[tag=tess.imp.current] run function tess:goto/cache

#加载ui生成器
execute unless items block ~ ~ ~ container.0 air unless items block ~ ~ ~ container.0 *[custom_data~{tess:{comp_data:{loaded:true}}}] run function tess:slot/pop/00

function tess:goto/load_generator with storage tess:temp_goto

#保存当前页面的索引，更新计分板tess.current_index
execute store result score @s tess.current_index run data get block ~ ~ ~ Items.[{Slot:0b}].components."minecraft:custom_data".tess.page_index
#清除所有tess.imp.current标签
execute on passengers run tag @s remove tess.imp.current

#如果生成器指向的索引已被加载过则直接用，否则读入生成器
tag @s add tess.goto
execute unless function tess:goto/try_to_read run function tess:goto/read
tag @s remove tess.goto
