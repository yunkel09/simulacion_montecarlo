




 
# necesitamos calcular cuanto nos cuesta en dólares por año las fallas en las unidades
# de aire acondicionado de los sitios de transmisión. 
# 
# para calcular esto se requiere lo siguiente: amperios consumidos durante la falla,
# duración del evento, costo por evento, costo por kwh, número de eventos por sitio 


# método tradicional
# 
media_fallas <- mean(fallas$falla)
media_operacion <- mean(fallas$operacion)

delta_amp <- media_fallas - media_operacion

media_duracion <- mean(fallas$duracion_hrs)

voltaje <- 120

costo_kwh <- 1.34


kw <- 24 * round(media_duracion) * voltaje / 1000


cantidad_casos <- nrow(fallas)
tasa_fallas_per_year <- cantidad_casos * 4

costo_kwh * media_duracion


# valore esperado de 


fallas_discretas <- fallas |>
 tabyl(sitio) |> 
 as_tibble()
 

weighted.mean(x = fallas_discretas$n, w = fallas_discretas$percent)

with(mujeres, weighted.hist(x = examinadas, w = frecuencia, breaks = examinadas, freq = F))

fallas_discretas %$%
 weighted.hist(x = , w = percent, breaks = n, freq = F)
 


mean(fallas_discretas$n)
