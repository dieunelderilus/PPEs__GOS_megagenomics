#written by Dieunel Derilus (dieunelderilus@gmail.com)
library(gridExtra)
library(grid)
setwd("~/Desktop/PhD/marine_metagenomic/OM_CompanionTables/bigzize/euk/familly")
#this will plt the box plot realted to seawater layer

data=read.csv("ppe_abundance_v2.csv",header=TRUE)
#######
g <- ggboxplot(data, x = "Env_feature", y = "PPE",order = c("SRF", "DCM", "MIX","MES"),
               color = "Env_feature", palette = "aaas", add="dotplot")+
  labs(x="Seawater layer", y="Relative abundance of PPE (%)")+
  theme(legend.position="NONE")
# addpvalues
my_comparisons <- list( c("SRF", "DCM"), c("SRF", "MES"), c("DCM", "MES"))
g1=g+stat_compare_means(comparisons = my_comparisons,method="t.test", label="p.signif")+ # Add pairwise comparisons p-value
  stat_compare_means(method="anova",label.y = 65)     # Add global p-value
g2=g1 +labs(title="A)")

### this will plot via region
data=read.csv("ppe_abundance_v2.csv",header=TRUE)

#g<-ggplot(data, aes(x=Sea_layer, y=PPE, color=PPE)) +
#g+ geom_dotplot(binaxis='y', stackdir='center', dotsize=1)
library(ggpubr)
#######
r <- ggboxplot(data, x = "Region", y = "PPE",
               color = "Region", palette = "uchicago", add="dotplot")+
  labs(x="Geographical provinces", y="Relative abundance of PPE (%)")
r2=r + labs(title="B)")
r3=r2+stat_compare_means(method="anova",label.y = 65) 
r4= r3 + theme(legend.position="none")
grid.arrange(g2,r4)
