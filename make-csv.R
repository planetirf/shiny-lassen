box_num <- rep(100:399, each=12)
pit_id <- paste("789",x,sep="")

hzn_seq <- c(1:12)

columnNames <- c(## HORIZON PROPERTIES
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
  "texture_class"
  # Texture - clay percent
  # Texture - sand percent
  # Texture - silt percent
  # Coarse Fragment Modifier (ie Gravely, Very Gravely, Channery etc..)
  # Coarse Fragments - percent of total horizon volume
  # Coarse Fragment 1 - type
  # Coarse Fragment 2 - percent of volume
  # Coarse Fragment 2 - type 
  # Coarse Fragment 2 - percent of volume
  # Soil Color 1- Munsell - Dry - Hue
  # Soil Color 1- Munsell - Dry - Value
  # Soil Color 1- Munsell - Dry - Chroma
  # Soil Color 2- Munsell - Moist - Hue
  # Soil Color 2- Munsell - Moist - Value
  # Soil Color 2- Munsell - Moist - Chroma
  # Structure 1 - Size
  # Structure 1 - Grade
  # Structure 1 - Shape
  # Structure 2 - Size
  # Structure 2 - Grade
  # Structure 2 - Shape
  # Consistence - Rupture Resistence - Dry (loose, soft, slightly hard, mod hard, hard, very hard, extr hard rigid, very rigid)
  # Consistence - Rupture Resistence - Moist (loose, very friable, friable, firm, very firm, extr firm, slightly rigid, rigid, very rigid)
  # Consistence - Stickiness - (Nonsticky, slightly sticky, moderatley sticky, very sticky)
  # Consistence - Plasticity - (nonplastic, slightly plastic, moderately plastic, very plastic)
  # Soil pH -
  # Soil NaF pH - 
  # Roots - Quantity - (few, common, many)
  # Roots - Size - (very fine, fine, medium, coarse, very coarse)
  # Roots - Location - (between peds, in cracks, mat at top of hzn, matted around rocks, throughout)
  # Pores - Quantity - (few, common, many)
  # Pores - Size - (very fine, fine, medium, coarse, very coarse)
  # Pores - Shape - (dendritic tubular, irregular, tubular, vesicular)
  # Redox Features - Yes / No
  # Redox Features - Concentrations - Yes / No
  # Redox Features - Depletions - Yes / No
  # Effervesence - Bubbles w/ 1 N HCl(noneffervescent, very slightly effervesecent, slightly effervescent, strongly effervescent, violently effervescent)
  
  
  
  
)

df <- data.frame("area"=789,pit_id,box_num,hzn_seq)

df[,columnNames] <- NA
