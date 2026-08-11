
execute if entity @s[advancements={slv_mending:broke={mainhand=true}}] run function slv_mending:sys/player/mending/slots/mainhand/main
execute if entity @s[advancements={slv_mending:broke={offhand=true}}] run function slv_mending:sys/player/mending/slots/offhand/main
execute if entity @s[advancements={slv_mending:broke={head=true}}] run function slv_mending:sys/player/mending/slots/head/main
execute if entity @s[advancements={slv_mending:broke={chest=true}}] run function slv_mending:sys/player/mending/slots/chest/main
execute if entity @s[advancements={slv_mending:broke={legs=true}}] run function slv_mending:sys/player/mending/slots/legs/main
execute if entity @s[advancements={slv_mending:broke={feet=true}}] run function slv_mending:sys/player/mending/slots/feet/main





advancement revoke @s only slv_mending:broke

