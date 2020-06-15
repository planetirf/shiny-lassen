box_num <- rep(100:399, each=10)
pit_id <- paste("789",x,sep="")

hzn_seq <- c(1:12)

columnNames <- c(# horizon prefix 
  "hzn_prefix",
  # horizon master designation
  "hzn_master",
  # horizon sub designations
  "hzn_sub",
  # horizon  number (ie Bt1 Bt2 Bt3 etc..)
  "hzn_num",
  # horizon top depth
  "hzn_top",
  # horizon bottom depth 
  "hzn_bot",
  # horizon disctinctness (very abrupt, abrupt, clear, gradual, diffuse)
  "hzn_bnd_dist",
  # boundary topography (smooth, wavy, irregular, broken)
  "hzn_bnd_topo") 

df <- data.frame("area"=789,pit_id,box_num,hzn_seq)

df[,columnNames] <- NA
