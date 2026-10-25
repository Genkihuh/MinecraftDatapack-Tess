#设置破坏声音、破坏产物、方块模型
$data merge entity @s {Tags:[$(tags)],brightness:$(brightness),\
    transformation:{translation:[0.0f,0.5f,0.0f],scale:[1.00035f,1.00035f,1.00035f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},\
    data:{tess:{destroy_event:"$(destroy_event)",machine_loot:"$(machine_loot)"}},item:{id:"barrel",components:{item_model:"$(model)"}}}

#tess.loaded是一个重要的标签，用这个识别一个item_display是否是容器
tag @s add tess.loaded

#对齐朝向
function tess:general/calibrate
#设置打开声音
$setblock ~ ~ ~ barrel{components:{custom_data:{tess:{machine_loaded:true,close_sound:"$(close_sound)",open_sound:"$(open_sound)"}}}} keep
#加载ui生成器
$loot replace block ~ ~ ~ container.0 1 loot $(home)

#初始化
execute if block ~ ~ ~ barrel run function tess:item_display/machine_loading/initialize

#如果放置成功，执行放置事件
$execute if block ~ ~ ~ barrel run $(place_event)


