.libPaths('~/R/x86_64-pc-linux-gnu-library/3.6')
library(tidyverse)
library(RcppRoll)
library(ggplot2)


Population_frame <- readRDS('~/R/evolving_mutation_fifth_reproduce_popframe.rds')

# Make graph of absolute population values
Population_frame %>%
  filter(Time %in% (seq(0, 96000000,by = 50000) - 5000)) %>%
  ggplot(aes(x = Time, y = count, col = type)) +
  geom_line() +
  facet_wrap(~seed) +
  ggtitle('Popsize seed 1:10 | 0.5cylce') +
  theme_bw() +
  
  
  ggsave('~/Documents/strepto/evolving_mutation_fifth_mutants_plots/popsize_05cycle.png',
         height = 210,
         width  = 297,
         units= 'mm',
         dpi= 150)


Population_frame %>%
  filter(Time %in% (seq(0, 96000000,by = 50000) - 2500)) %>%
  ggplot(aes(x = Time, y = count, col = type)) +
  geom_line() +
  facet_wrap(~seed) +
  ggtitle('Popsize seed 1:10 | 0.75cylce') +
  theme_bw() +
  
  
  ggsave('~/Documents/strepto/evolving_mutation_fifth_mutants_plots/popsize_075cycle.png',
         height = 210,
         width  = 297,
         units= 'mm',
         dpi= 150)

Population_frame %>%
  filter(Time %in% (seq(0, 96000000,by = 50000) - 7500)) %>%
  ggplot(aes(x = Time, y = count, col = type)) +
  geom_line() +
  facet_wrap(~seed) +
  ggtitle('Popsize seed 1:10 | 0.25cylce') +
  theme_bw() +
  
  
  ggsave('~/Documents/strepto/evolving_mutation_fifth_mutants_plots/popsize_025cycle.png',
         height = 210,
         width  = 297,
         units= 'mm',
         dpi= 150)









costs_frame <- readRDS('~/R/evolving_mutation_fifth_reproduce_costframe.rds')


# Make cost graph

costs_frame %>% 
  filter(Time %in% (seq(0, 96000000,by = 50000) - 1000)) %>%
  ggplot(aes(x = Time, y = Cost)) +
  geom_point(size = 0.1, alpha = 0.6,colour = "purple") +
  geom_smooth() +
  facet_wrap(~seed) +
  ggtitle('Costs seed 1:10') +
  theme_bw() +
  ylim(c(0,1.5))

ggsave('~/Documents/strepto/evolving_mutation_fifth_mutants_plots/costs_axis.png',
       height = 210,
       width  = 297,
       units= 'mm',
       dpi= 150)

costs_frame %>% 
  filter(Time %in% (seq(0, 96000000,by = 50000) - 1000)) %>%
  ggplot(aes(x = Time, y = Mutation)) +
  geom_point(size = 0.1, alpha = 0.6,colour = "green") +
  geom_smooth() +
  facet_wrap(~seed) +
  ggtitle('mutation-rates seed 1:10') +
  theme_bw() 

ggsave('~/Documents/strepto/evolving_mutation_fifth_mutants_plots/mutation_rate.png',
       height = 210,
       width  = 297,
       units= 'mm',
       dpi= 150)

costs_frame %>% 
  filter(Time %in% (seq(0, 96000000,by = 50000) - 1000)) %>%
  ggplot(aes(x = Time, y = Production)) +
  geom_point(size = 0.1, alpha = 0.6,colour = "red") +
  geom_smooth() +
  facet_wrap(~seed) +
  ggtitle('Production seed 1:10') +
  theme_bw() +
  
  
  ggsave('~/Documents/strepto/evolving_mutation_fifth_mutants_plots/production.png',
         height = 210,
         width  = 297,
         units= 'mm',
         dpi= 150)



