// setting up movement variables
spd = 0 // current velocity

Bspd = 1; // base speed (update)
Sspd = 2; // sprinting speed
Wspd = 1; // walking movement speed
Rspd = 3; // roll speed

sprite_index = sPlayerRunF // assigning sprite

dirX = 1 // horizontal diretion
dirY = 1 // vertical direction

rolling = false;
rollDir = 0;

// stats
staminaReplenish = 0.25;
staminaMax = 100
staminaCur = staminaMax
staminaSprint = 0.5;
staminaRoll = 20;

// ui
UIScale = 4;