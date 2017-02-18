for i = 1:1000
    for j = 1:(1000-i)
        k = (1000-i-j)
        if i^2+j^2 == k^2
            println(i*j*k)
            quit()
        end
    end
end
