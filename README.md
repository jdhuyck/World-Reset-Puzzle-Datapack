Implements a bossbar timer ran from a scoreboard countdown to perform an instant respawn on any non-spectator players. The scoreboard counts down from 99s and kills without death screen or death message. The timer bossbar turns yellow at 30s, red at 10s and plays a warning sounds at 30s, 10s and 5,4,3,2 and 1 seconds.

*To start timer on default settings*
/function timer:init

*To change max time*
/scoreboard players set timerMax timerMax *time*
/function timer:set_max

*To reset timer*
/function timer:reset

*To pause timer*
/function timer:pause

*To trigger death (also triggers timer reset)*
/function timer:timeout
