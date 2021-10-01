# Aula
@time begin
	p = zeros(50)
	for i in 1:50
		x = zeros(1)
		for j in 1:10
			append!(x, wsample([0, 1], [0.4, 0.6], 10000))
			p[j] = sum(x) / size(x)[1]
		end
	end
end


# Atividade

@time begin
	# create zeros array
	p = zeros(1000)
	for i in 1:1000
		x = zeros(0)
		for j in 1:100
			append!(x, rand(Normal(0, 1), 100))
			p[i] = sum(x) / size(x)[1]
		end
	end
end	

histogram(p, title = "Histogram of p", label = "")
xlabel!("p")
ylabel!("frequency")









