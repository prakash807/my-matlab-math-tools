function i = my_rand_pic(a,b)
    i = imshow(ceil(a*b*rand(a,b)), rand(a*b,3));
end