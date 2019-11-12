data=read.csv("mapping_tara_sept20_no_mix.csv",header=TRUE)

#g<-ggplot(data, aes(x=Sea_layer, y=PPE, color=PPE)) +
  geom_violin(trim=FALSE)
#g+ geom_dotplot(binaxis='y', stackdir='center', dotsize=1)

#######
g <- ggboxplot(data, x = "Sea_layer", y = "PPE",
               color = "Sea_layer", palette = "jco", add="dotplot")
g1=g+labs(x="Sea layer ", y="Relative abundance of PPE(%)")

g1+stat_compare_means(comparisons = my_comparisons)+ # Add pairwise comparisons p-value
  stat_compare_means(method="anova",label.y = 50)     # Add global p-value


g1+stat_compare_means(method="anova",label.x.npc = "center")+
  comparisons = my_comparisons)+ # Add pairwise comparisons p-value
  stat_compare_means(label.y = 50)     # Add global p-value

