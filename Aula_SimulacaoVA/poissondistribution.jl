using StatsPlots 
using Distributions
using KernelDensity

# matrix para armazenar estimador lambda durantes amostragem 
p = zeros(1000, 1)
for i in 1:1000
	x = zeros(0)
	for j in 1:100
    		append!(x, rand(Poisson(10), 100))
		# lambda = k/n -> poisson retorna 0 ou 1
    		p[i] = sum(x) / size(x)[1]
	end
end

# calculando densidade kernel density estimator
dens =  kde((p[:,1]))

figure = plot(dens.x, dens.density, title = "Parameters estimator", label = "")
figure = xlabel!("lambda")

png(figure, "poisson")

# autor: Felipe Marcelo.
