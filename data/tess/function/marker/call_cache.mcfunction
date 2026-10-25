#本函数执行实体：已经拥有缓存、正在将缓存复制到容器的marker

#调用缓存
data modify block ~ ~ ~ Items set from entity @s data.tess.ui_origin
data modify block ~ ~ ~ Items append from entity @s data.tess.ui_cache
#标记为当前界面
tag @s add tess.imp.current
return 1