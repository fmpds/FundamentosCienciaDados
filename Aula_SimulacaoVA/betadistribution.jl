using StatsPlots 
using Distribution

# matriz para armazenar estimadores a e b durante amostragem 
p = zeros(1000, 2)
for i in 1:1000
	x = zeros(0)
	for j in 1:100
		# adicionando no array valores das amostras
    		append!(x, rand(Beta(2, 3.5), 100))
		# calculando estimadores com maximum likelihood estimator (mle)
    		estimator = fit_mle(Beta, x)
		# adicionando par de parametros para amostra j na linha i da matrix de zeros p
    		p[i,:] .= params(estimator)
	end
end

# calculando densidade kernel density estimator
dens =  kde((p[:,1], p[:,2]))

plot(dens.x, dens.y, dens.density, title = "Parameters estimator")
ylabel!("b")
xlabel!("a")

# autor: Felipe Marcelo
