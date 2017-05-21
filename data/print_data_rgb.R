require(data.table)
d <- fread("clean_data_rgb.csv")
write.table(
  paste0("tramo", d$V1, ":{center:{", d$LATITUD_DESTINO,", ", d$LONGITUD_DESTINO, "}, color:'", d$RGB, "'},")
  , "clean_data_rgb_js.csv"
  , row.names = FALSE
  , sep = ","
)
