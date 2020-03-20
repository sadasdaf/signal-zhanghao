function square_wave(n)
    n = 200;
    k = 1:n;
    t = linspace(0,4 * pi,1001);
    for i = 1:1001
        number = t(i);
        result = sin((2 * k - 1) * number) ./ (2 * k - 1);
        namber_sum(i) = sum(result);
    end
    plot(namber_sum);
end