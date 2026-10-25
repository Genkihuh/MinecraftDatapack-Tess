#tellraw @a "-----------\n待解决部分：\
	\n1.很多检测唯一目标的选择器都是用的@p或@n而非打上tag，且没有写Limit=1。\
	\n2.没做完Home和goto部分\
\n纯调试信息，如果看到这个请督促作者修正\n-----------"

#空命令用
scoreboard objectives add tess.null dummy

#视角偏转
scoreboard objectives add tess.r dummy

#存容器坐标于玩家和item_display的计分板
scoreboard objectives add tess.table.x dummy
scoreboard objectives add tess.table.y dummy
scoreboard objectives add tess.table.z dummy

#视线追踪，用于播放打开容器的音效
scoreboard objectives add tess.temp.age dummy

#界面索引
scoreboard objectives add tess.page_index dummy
scoreboard objectives add tess.current_index dummy

#cmd：槽位数字
scoreboard objectives add tess.cmd.target dummy
scoreboard objectives add tess.cmd.source dummy

#按钮冷却 4tick
scoreboard objectives add tess.button_cd dummy