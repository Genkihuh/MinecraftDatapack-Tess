#检测鼠标选中的物品是一个关键的环节，处理按钮、跳转组件的点击事件
#这是处理点击事件的唯一函数
tag @s add tess.player.find
execute summon item_display run function tess:player/find/cursor
tag @s remove tess.player.find