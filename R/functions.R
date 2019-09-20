

# RICHAR WATER ------------------------------------------------------------

# excel_sheets("./Data/APSIM_Sim.xlsx")

read_met_col <- function(path = path_met, skip =7, nrows = 1){
  met_col <- data.table::fread(input = path, skip = 7, nrows = 1)
  met_col
}


read_met <- function(path = path_met, skip = 9){
  met_LN <- data.table::fread(input = path,skip = skip, fill = TRUE)
  met_col <- read_met_col(path = path)
  colnames(met_LN) <- colnames(met_col)
  return(met_LN)
}
