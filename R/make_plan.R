

#configurations

#plan 
source("R/functions.R")
source("R/packages.R")
source("R/plan_main.R")

make(plan, lock_envir = F)


library(visNetwork) 
vis_drake_graph(drake_config(
  plan 
  # parallelism = "clustermq",
  # jobs = 16
))
