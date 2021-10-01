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
			append!(x, )
	
end
	#end
end	

histogram(p, title = "Histogram of p", label = "")
xlabel!("p")
ylabel!("frequency")



using StatsPlots 
using Distribution

# matrix para armazenar estimadores a e b durantes amostragem 
p = zeros(1000, 1)
for i in 1:1000
	x = zeros(0)
	for j in 1:100
    		append!(x, rand(Poisson(10), 100))
		# calculando estimadores com maximum likelihood estimator (mle)
    		estimator = fit_mle(Poisson, x)
		# adicionando par de parametros para amostra j na linha da matrix de zeros p
    		p[i,:] .= params(estimator)
	end
end

# calculando densidade kernel density estimator
dens =  kde((p[:,1]))

plot(dens.x, dens.density, title = "Parameters estimator")
ylabel!("b")
xlabel!("a")






