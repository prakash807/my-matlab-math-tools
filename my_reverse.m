function rev=my_reverse(word)
    rev=[];
    m=length(word);
    for i=1:m
        rev(m+1-i)=word(i);
    end
    rev=char(rev);
end