here ()
library(fgeo)
pdf("species.pdf", width=10)
for (i in seq(along = unique(scbi_census_alive$sp))){
  test <- unique(scbi_census_alive$sp)[[i]]
  change <- scbi_census_alive[scbi_census_alive$sp %in% test, ]
  q <- autoplot(sp_elev(change, elevation))
  ggsave(filename = paste0(test, ".jpg"),  plot=q)
}
dev.off()
