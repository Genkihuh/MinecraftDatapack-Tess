#尝试读取缓存
execute on passengers if score @s tess.page_index = @n[tag=tess.goto] tess.current_index run return run function tess:goto/call_cache
return fail