#处理按钮点击事件的函数

#mode：self（以玩家自身为执行者、容器位置为执行位置执行函数）
#      machine（以容器实体item_display为执行者、容器位置为执行位置执行函数）
#需要验证可否重新设计按钮组件的参数，以减少宏函数的使用
scoreboard players set @s tess.button_cd 4
$data modify storage tess:temp_button command set value "$(command)"
$function tess:click/$(mode) with storage tess:temp_button
