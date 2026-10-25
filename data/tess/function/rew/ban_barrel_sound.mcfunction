advancement revoke @s only tess:open_barrel
stopsound @a[distance=..16] block
execute anchored eyes positioned ^ ^ ^ rotated as @s summon marker rotated ~ ~ if function tess:rew/try_to_link run return 1
