# uncased vocab works

    Code
      head(test_result, 5)
    Output
          [PAD] [unused0] [unused1] [unused2] [unused3] 
              0         1         2         3         4 

# cased vocab works

    Code
      head(test_result, 5)
    Output
          [PAD] [unused1] [unused2] [unused3] [unused4] 
              0         1         2         3         4 

