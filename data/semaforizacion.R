require(data.table)
d <- fread("data/Semaforizaci_n_en_Bogota.csv")
write.table(x = paste("new google.maps.LatLng(", d$x, ",", d$y, "),", sep = "")
            , file = "semaforos.csv"
            , row.names = FALSE
            , sep = ","
            , na = ""
            , fileEncoding = "UTF-8"
            )
