ggsave("ruthtifr
       .pdf", width=9)
#dotplot#
ruthplot = ggplot(ruth, aes(x =  genotype, y = class, fill = genotype, height=0.2, width=0.11)) +
  geom_dotplot(binaxis = "y", stackdir = "center", dotsize=10, binwidth = 0.01) + ylim(0,4.2)    + theme_minimal()
ruthplot

ggsave("ruthtifrdot
       .pdf", width=9)