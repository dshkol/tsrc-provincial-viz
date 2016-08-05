
# Matrix with data exclusive of same-province visits
o_e <- matrix(c(0,9,64,26,33,112,2,0,17,21,
              7,0,121,114,14,32,0,0,8,3,
              57,226,0,402,57,197,6,13,46,55,
              10,105,363,0,147,141,8,2,14,14,
              34,42,57,208,0,2181,44,13,64,128,
              165,133,240,273,2848,0,241,69,571,587,
              6,3,12,8,34,407,0,251,215,118,
              9,3,8,4,25,119,198,0,882,210,
              46,7,62,11,48,403,104,554,0,2531,
              11,17,46,19,94,432,57,104,1035,0),
            byrow = TRUE,
            nrow = 10, ncol = 10)

# Matrix with data inclusive of same-province visits
o_i <- matrix(c(1360,9,64,26,33,112,2,0,17,21,
                7,129,121,114,14,32,0,0,8,3,
                57,226,1977,402,57,197,6,13,46,55,
                10,105,363,1312,147,141,8,2,14,14,
                34,42,57,208,24742,2181,44,13,64,128,
                165,133,240,273,2848,38875,241,69,571,587,
                6,3,12,8,34,407,2285,251,215,118,
                9,3,8,4,25,119,198,3478,882,210,
                46,7,62,11,48,403,104,554,8333,2531,
                11,17,46,19,94,432,57,104,1035,10557),
              byrow = TRUE,
              nrow = 10, ncol = 10)

provinces <- c("NL","PEI","NS","NB","QC","ON","MB","SK","AB","BC")

dimnames(o_e) <- list(origin = provinces, destination = provinces)
dimnames(o_i) <- list(origin = provinces, destination = provinces)

colours <- RColorBrewer::brewer.pal(10, "BrBG")

o_e_chord <- chorddiag(o_e, 
          groupnamePadding = 30, 
          groupColors = colours,
          tickInterval = 100,
          chordedgeColor = "darkgrey",
          groupedgeColor = "darkgrey",
          groupThickness = 0.075)

o_i_chord <- chorddiag(o_i, 
          groupnamePadding = 30, 
          groupColors = colours,
          tickInterval = 1000,
          chordedgeColor = "darkgrey",
          groupedgeColor = "darkgrey",
          groupThickness = 0.075)