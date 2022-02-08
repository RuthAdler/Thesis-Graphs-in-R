#If the order of factors (eg. genotypes) needs to be changed:
crossing_rank$genotype=relevel(crossing_rank$genotype, "control")
#violin plot
g=ggplot(data=crossing_rank, aes(x=genotype, y=score, fill=genotype)) +
  geom_violin() +
  geom_jitter(height=0.11, width=0.11, size= 2) +theme_bw() 
g=g + scale_fill_brewer(palette="RdBu") + theme_minimal()
g=g+theme(
  panel.background = element_rect(fill = "transparent",color = NA), 
  plot.background = element_rect(fill = "transparent", color = NA),
  panel.grid.minor = element_blank(), 
  panel.grid.major = element_blank(),
  #legend.background = element_rect(fill = "transparent"),
  #legend.box.background = element_rect(fill = "transparent"),
  axis.title.x = element_text(color="white"),
  axis.title.y = element_text(color="white"),
  axis.text = element_text(color="white")
)

g
ggsave(g, filename = "XG20_violin.png",  bg = "transparent")