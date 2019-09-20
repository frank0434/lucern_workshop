plan <- drake_plan(
  path_full = "./Data/APSIM_Sim.xlsx",
  path_FD = "./Data/FallDtreatment.txt",
  path_met = "./Data/lincolnmet.txt",
  # sourcing the data
  full_Richard = read_excel(path_full, skip = 9),
  met_unit = read_met_col(path = path_met),
  met_LN = read_met(path = path_met),
  full_Hung = fread(path_FD),
  con = DBI::dbConnect(RSQLite::SQLite(), "./Data/20190921_fullData.sqlite3")
  # con1 = dbWriteTable(con, name = "Richard", full_Richard)
  # dbWriteTable(con, name = "Hung", full_Hung),
  # dbWriteTable(con, name = "met_LN", met_LN),
  # dbWriteTable(con, name = "metadata", met_unit)
  # 
)
