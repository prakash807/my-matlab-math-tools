% Values that work well: a=1000, b=1800, num_frames = 25, pause_time =
% 0.001
function j = my_rand_pic_animation(a, b, num_frames, pause_time)
for f = 1:num_frames
    j = my_rand_pic(a, b);
    pause(pause_time);
end
end