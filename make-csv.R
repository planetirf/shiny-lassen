box_num <- rep(100:399, each=12)
pit_id <- paste("789",box_num,sep="")

hzn_seq <- c(1:12)

columnNames <- c(## SITE PROPERTIES
  # soil series
  "soil_series",
  # sampling date
  "date",
  # pit describer
  "pit_describers",
  # pit sampling method (auger, pit, roadcut, etc)
  "pit_method",
  # MLRA area
  "mlra",
  # waypoint id,
  "waypoint",
  # location UTM, NAD83
  "location_UTM",
  # latitude
  "latitude",
  # longitude
  "longitude",
  # aspect direction (N, S, E, W)
  "aspect_directiom",
  # aspect degrees
  "aspect_degree",
  # slope in degrees
  "slope",
  # slope shape
  "slope_shape",
  # hillslope profile position
  "hillslope_profile",
  # parent material - type (alluvium, colluvium)
  "parent_material",
  # parent material - rock type
  "pm_rock_type",
  # soil temp at 10cm, Farenheit
  "soil_temp_10cm_F",
  # soil temp at 10cm, Celsius
  "soil_temp_10cm_C",
  # soil temp at 50cm, Farenheit
  "soil_temp_50cm_F",
  # soil temp at 50cm, Celsius
  "soil_temp_50cm_C",
  ## HORIZON PROPERTIES
  # horizon prefix 
  "hzn_prefix",
  # horizon master designation
  "hzn_master",
  # horizon sub designations
  "hzn_sub",
  # horizon  suffix (ie Bt1 Bt2 Bt3 etc..)
  "hzn_suffix",
  # horizon top depth
  "hzn_top",
  # horizon bottom depth 
  "hzn_bot",
  # horizon disctinctness (very abrupt, abrupt, clear, gradual, diffuse)
  "hzn_bnd_dist",
  # boundary topography (smooth, wavy, irregular, broken)
  "hzn_bnd_topo",
  # Texture - class
  "texture_class",
  # Texture - clay percent
  "clay_pct",
  # Texture - sand percent
  "sand_pct",
  # Texture - silt percent
  "silt_pct",
  # Coarse Fragment Modifier (ie Gravely, Very Gravely, Channery etc..)
  "CF_mod",
  # Coarse Fragments - percent of total horizon volume
  "CF_total_pct",
  # Coarse Fragment 1 - type
  "CF_type1",
  # Coarse Fragment 2 - percent of volume
  "CF_pct1",
  # Coarse Fragment 2 - type 
  "CF_type2",
  # Coarse Fragment 2 - percent of volume
  "CF_pct2",
  # Coarse Fragment 3 - type 
  "CF_type3",
  # Coarse Fragment 3 - percent of volume
  "CF_pct3",
  # Coarse Fragment 4 - type 
  "CF_type4",
  # Coarse Fragment 4 - percent of volume
  "CF_pct4",
  # Soil Color 1- Munsell - Dry - Hue
  "color_dry_hue",
  # Soil Color 1- Munsell - Dry - Value
  "color_dry_value",
  # Soil Color 1- Munsell - Dry - Chroma
  "color_dry_crhoma",
  # Soil Color 2- Munsell - Moist - Hue
  "color_moist_hue",
  # Soil Color 2- Munsell - Moist - Value
  "color_moist_value",
  # Soil Color 2- Munsell - Moist - Chroma
  "color_moist_chroma",
  # Structure 1 - Size
  "struct_size_1",
  # Structure 1 - Grade
  "struct_grade_1",
  # Structure 1 - Shape
  "struct_shape_1",
  # Structure 2 - Size
  "struct_size_2",
  # Structure 2 - Grade
  "struct_grade_2",
  # Structure 2 - Shape
  "struct_shape_2",
  # Consistence - Rupture Resistence - Dry (loose, soft, slightly hard, mod hard, hard, very hard, extr hard rigid, very rigid)
  "const_rupt_dry",
  # Consistence - Rupture Resistence - Moist (loose, very friable, friable, firm, very firm, extr firm, slightly rigid, rigid, very rigid)
  "const_rupt_moist",
  # Consistence - Stickiness - (Nonsticky, slightly sticky, moderatley sticky, very sticky)
  "const_sticky",
  # Consistence - Plasticity - (nonplastic, slightly plastic, moderately plastic, very plastic)
  "const_plasticity",
  # Soil pH -
  "pH",
  # Soil NaF pH - 
  "NaF_pH",
  # Roots - Quantity - (few, common, many)
  "root_qty",
  # Roots - Size - (very fine, fine, medium, coarse, very coarse)
  "root_size",
  # Roots - Location - (between peds, in cracks, mat at top of hzn, matted around rocks, throughout)
  "root_loc",
  # Pores - Quantity - (few, common, many)
  "pore_qty",
  # Pores - Size - (very fine, fine, medium, coarse, very coarse)
  "pore_size",
  # Pores - Shape - (dendritic tubular, irregular, tubular, vesicular)
  "pore_shape",
  # Redox Features - Yes / No
  "redox",
  # Redox Features - Concentrations - Yes / No
  "redox_conc",
  # Redox Features - Depletions - Yes / No
  "redox_depl",
  # Effervesence - Bubbles w/ 1 N HCl(noneffervescent, very slightly effervesecent, slightly effervescent, strongly effervescent, violently effervescent)
  "effervesence",
  # notes
  "notes"
  
  
  
  
  
)

df <- data.frame("area"=789,pit_id,box_num,hzn_seq)

df[,columnNames] <- NA

library(xlsx)
write.xlsx2(df, file = "lassen-boxfile-start.xlsx", sheet='data')
