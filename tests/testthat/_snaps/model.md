# The regression_model(x, y, z, 'with') can return summary of a logistic regression model with interaction terms.

    Code
      m
    Output
      
      Call:
      glm(formula = adverse_status ~ health * intervention_type * gender * 
          age, family = "binomial", data = df)
      
      Deviance Residuals: 
         Min      1Q  Median      3Q     Max  
       -8.49    0.00    0.00    0.00    8.49  
      
      Coefficients: (58 not defined because of singularities)
                                                                                 Estimate
      (Intercept)                                                               1.766e+12
      healthYes                                                                -3.380e+15
      intervention_typeBiological                                               2.906e+15
      intervention_typeCombination Product                                     -1.125e+15
      intervention_typeDevice                                                  -2.251e+15
      intervention_typeDiagnostic Test                                         -4.504e+15
      intervention_typeDietary Supplement                                      -1.126e+15
      intervention_typeDrug                                                     8.831e+14
      intervention_typeGenetic                                                 -4.504e+15
      intervention_typeOther                                                   -2.951e+15
      intervention_typeProcedure                                               -1.457e+14
      intervention_typeRadiation                                               -6.152e+11
      genderMale                                                               -4.504e+15
      agechild                                                                 -4.506e+15
      ageolder_adult                                                           -1.126e+15
      healthYes:intervention_typeBiological                                     2.989e+14
      healthYes:intervention_typeCombination Product                                   NA
      healthYes:intervention_typeDevice                                         4.653e+15
      healthYes:intervention_typeDiagnostic Test                                3.378e+15
      healthYes:intervention_typeDietary Supplement                             4.053e+15
      healthYes:intervention_typeDrug                                           1.841e+15
      healthYes:intervention_typeGenetic                                       -8.868e+15
      healthYes:intervention_typeOther                                          5.640e+15
      healthYes:intervention_typeProcedure                                      1.634e+15
      healthYes:intervention_typeRadiation                                     -1.126e+15
      healthYes:genderMale                                                      4.639e+15
      intervention_typeBiological:genderMale                                    1.598e+15
      intervention_typeCombination Product:genderMale                          -1.351e+14
      intervention_typeDevice:genderMale                                        6.755e+15
      intervention_typeDiagnostic Test:genderMale                               4.504e+15
      intervention_typeDietary Supplement:genderMale                            7.471e+15
      intervention_typeDrug:genderMale                                          6.078e+15
      intervention_typeGenetic:genderMale                                       1.661e+16
      intervention_typeOther:genderMale                                         5.653e+15
      intervention_typeProcedure:genderMale                                     1.453e+14
      intervention_typeRadiation:genderMale                                            NA
      healthYes:agechild                                                        3.378e+15
      healthYes:ageolder_adult                                                 -7.325e+15
      intervention_typeBiological:agechild                                      4.735e+15
      intervention_typeCombination Product:agechild                                    NA
      intervention_typeDevice:agechild                                         -1.401e+15
      intervention_typeDiagnostic Test:agechild                                        NA
      intervention_typeDietary Supplement:agechild                              1.261e+15
      intervention_typeDrug:agechild                                            4.181e+15
      intervention_typeGenetic:agechild                                                NA
      intervention_typeOther:agechild                                           7.450e+15
      intervention_typeProcedure:agechild                                       7.607e+15
      intervention_typeRadiation:agechild                                              NA
      intervention_typeBiological:ageolder_adult                               -4.504e+15
      intervention_typeCombination Product:ageolder_adult                              NA
      intervention_typeDevice:ageolder_adult                                    4.504e+15
      intervention_typeDiagnostic Test:ageolder_adult                                  NA
      intervention_typeDietary Supplement:ageolder_adult                        6.755e+15
      intervention_typeDrug:ageolder_adult                                      5.897e+14
      intervention_typeGenetic:ageolder_adult                                          NA
      intervention_typeOther:ageolder_adult                                     8.580e+15
      intervention_typeProcedure:ageolder_adult                                -8.817e+07
      intervention_typeRadiation:ageolder_adult                                 5.629e+15
      genderMale:agechild                                                       1.400e+15
      genderMale:ageolder_adult                                                 1.126e+15
      healthYes:intervention_typeBiological:genderMale                          1.385e+15
      healthYes:intervention_typeCombination Product:genderMale                        NA
      healthYes:intervention_typeDevice:genderMale                             -6.151e+15
      healthYes:intervention_typeDiagnostic Test:genderMale                            NA
      healthYes:intervention_typeDietary Supplement:genderMale                 -1.166e+16
      healthYes:intervention_typeDrug:genderMale                               -5.403e+15
      healthYes:intervention_typeGenetic:genderMale                                    NA
      healthYes:intervention_typeOther:genderMale                              -6.485e+15
      healthYes:intervention_typeProcedure:genderMale                          -2.895e+15
      healthYes:intervention_typeRadiation:genderMale                                  NA
      healthYes:intervention_typeBiological:agechild                           -1.184e+15
      healthYes:intervention_typeCombination Product:agechild                          NA
      healthYes:intervention_typeDevice:agechild                               -1.605e+15
      healthYes:intervention_typeDiagnostic Test:agechild                              NA
      healthYes:intervention_typeDietary Supplement:agechild                           NA
      healthYes:intervention_typeDrug:agechild                                 -3.528e+15
      healthYes:intervention_typeGenetic:agechild                                      NA
      healthYes:intervention_typeOther:agechild                                -6.761e+15
      healthYes:intervention_typeProcedure:agechild                            -9.096e+15
      healthYes:intervention_typeRadiation:agechild                                    NA
      healthYes:intervention_typeBiological:ageolder_adult                             NA
      healthYes:intervention_typeCombination Product:ageolder_adult                    NA
      healthYes:intervention_typeDevice:ageolder_adult                                 NA
      healthYes:intervention_typeDiagnostic Test:ageolder_adult                        NA
      healthYes:intervention_typeDietary Supplement:ageolder_adult              2.146e+15
      healthYes:intervention_typeDrug:ageolder_adult                            6.263e+15
      healthYes:intervention_typeGenetic:ageolder_adult                                NA
      healthYes:intervention_typeOther:ageolder_adult                          -3.944e+15
      healthYes:intervention_typeProcedure:ageolder_adult                              NA
      healthYes:intervention_typeRadiation:ageolder_adult                              NA
      healthYes:genderMale:agechild                                            -1.535e+15
      healthYes:genderMale:ageolder_adult                                       6.064e+15
      intervention_typeBiological:genderMale:agechild                          -7.310e+14
      intervention_typeCombination Product:genderMale:agechild                         NA
      intervention_typeDevice:genderMale:agechild                                      NA
      intervention_typeDiagnostic Test:genderMale:agechild                             NA
      intervention_typeDietary Supplement:genderMale:agechild                          NA
      intervention_typeDrug:genderMale:agechild                                -1.487e+15
      intervention_typeGenetic:genderMale:agechild                                     NA
      intervention_typeOther:genderMale:agechild                               -2.546e+15
      intervention_typeProcedure:genderMale:agechild                                   NA
      intervention_typeRadiation:genderMale:agechild                                   NA
      intervention_typeBiological:genderMale:ageolder_adult                            NA
      intervention_typeCombination Product:genderMale:ageolder_adult                   NA
      intervention_typeDevice:genderMale:ageolder_adult                                NA
      intervention_typeDiagnostic Test:genderMale:ageolder_adult                       NA
      intervention_typeDietary Supplement:genderMale:ageolder_adult             1.367e+15
      intervention_typeDrug:genderMale:ageolder_adult                          -5.748e+15
      intervention_typeGenetic:genderMale:ageolder_adult                               NA
      intervention_typeOther:genderMale:ageolder_adult                         -1.128e+16
      intervention_typeProcedure:genderMale:ageolder_adult                             NA
      intervention_typeRadiation:genderMale:ageolder_adult                             NA
      healthYes:intervention_typeBiological:genderMale:agechild                        NA
      healthYes:intervention_typeCombination Product:genderMale:agechild               NA
      healthYes:intervention_typeDevice:genderMale:agechild                            NA
      healthYes:intervention_typeDiagnostic Test:genderMale:agechild                   NA
      healthYes:intervention_typeDietary Supplement:genderMale:agechild                NA
      healthYes:intervention_typeDrug:genderMale:agechild                       1.938e+15
      healthYes:intervention_typeGenetic:genderMale:agechild                           NA
      healthYes:intervention_typeOther:genderMale:agechild                             NA
      healthYes:intervention_typeProcedure:genderMale:agechild                         NA
      healthYes:intervention_typeRadiation:genderMale:agechild                         NA
      healthYes:intervention_typeBiological:genderMale:ageolder_adult                  NA
      healthYes:intervention_typeCombination Product:genderMale:ageolder_adult         NA
      healthYes:intervention_typeDevice:genderMale:ageolder_adult                      NA
      healthYes:intervention_typeDiagnostic Test:genderMale:ageolder_adult             NA
      healthYes:intervention_typeDietary Supplement:genderMale:ageolder_adult          NA
      healthYes:intervention_typeDrug:genderMale:ageolder_adult                        NA
      healthYes:intervention_typeGenetic:genderMale:ageolder_adult                     NA
      healthYes:intervention_typeOther:genderMale:ageolder_adult                       NA
      healthYes:intervention_typeProcedure:genderMale:ageolder_adult                   NA
      healthYes:intervention_typeRadiation:genderMale:ageolder_adult                   NA
                                                                               Std. Error
      (Intercept)                                                               1.225e+07
      healthYes                                                                 1.562e+07
      intervention_typeBiological                                               1.719e+07
      intervention_typeCombination Product                                      4.843e+07
      intervention_typeDevice                                                   1.427e+07
      intervention_typeDiagnostic Test                                          6.822e+07
      intervention_typeDietary Supplement                                       2.670e+07
      intervention_typeDrug                                                     1.271e+07
      intervention_typeGenetic                                                  6.822e+07
      intervention_typeOther                                                    1.509e+07
      intervention_typeProcedure                                                1.719e+07
      intervention_typeRadiation                                                4.901e+07
      genderMale                                                                3.572e+07
      agechild                                                                  4.064e+07
      ageolder_adult                                                            3.572e+07
      healthYes:intervention_typeBiological                                     2.181e+07
      healthYes:intervention_typeCombination Product                                   NA
      healthYes:intervention_typeDevice                                         1.876e+07
      healthYes:intervention_typeDiagnostic Test                                7.664e+07
      healthYes:intervention_typeDietary Supplement                             3.213e+07
      healthYes:intervention_typeDrug                                           1.635e+07
      healthYes:intervention_typeGenetic                                        1.564e+08
      healthYes:intervention_typeOther                                          1.935e+07
      healthYes:intervention_typeProcedure                                      2.312e+07
      healthYes:intervention_typeRadiation                                      6.322e+07
      healthYes:genderMale                                                      3.937e+07
      intervention_typeBiological:genderMale                                    6.061e+07
      intervention_typeCombination Product:genderMale                           8.384e+07
      intervention_typeDevice:genderMale                                        5.321e+07
      intervention_typeDiagnostic Test:genderMale                               1.014e+08
      intervention_typeDietary Supplement:genderMale                            1.438e+08
      intervention_typeDrug:genderMale                                          3.659e+07
      intervention_typeGenetic:genderMale                                       1.561e+08
      intervention_typeOther:genderMale                                         4.247e+07
      intervention_typeProcedure:genderMale                                     6.061e+07
      intervention_typeRadiation:genderMale                                            NA
      healthYes:agechild                                                        5.358e+07
      healthYes:ageolder_adult                                                  1.179e+08
      intervention_typeBiological:agechild                                      1.361e+08
      intervention_typeCombination Product:agechild                                    NA
      intervention_typeDevice:agechild                                          1.295e+08
      intervention_typeDiagnostic Test:agechild                                        NA
      intervention_typeDietary Supplement:agechild                              6.027e+07
      intervention_typeDrug:agechild                                            4.409e+07
      intervention_typeGenetic:agechild                                                NA
      intervention_typeOther:agechild                                           7.895e+07
      intervention_typeProcedure:agechild                                       1.324e+08
      intervention_typeRadiation:agechild                                              NA
      intervention_typeBiological:ageolder_adult                                1.113e+08
      intervention_typeCombination Product:ageolder_adult                              NA
      intervention_typeDevice:ageolder_adult                                    1.079e+08
      intervention_typeDiagnostic Test:ageolder_adult                                  NA
      intervention_typeDietary Supplement:ageolder_adult                        5.779e+07
      intervention_typeDrug:ageolder_adult                                      4.042e+07
      intervention_typeGenetic:ageolder_adult                                          NA
      intervention_typeOther:ageolder_adult                                     6.005e+07
      intervention_typeProcedure:ageolder_adult                                 1.113e+08
      intervention_typeRadiation:ageolder_adult                                 8.962e+07
      genderMale:agechild                                                       1.101e+08
      genderMale:ageolder_adult                                                 8.310e+07
      healthYes:intervention_typeBiological:genderMale                          6.486e+07
      healthYes:intervention_typeCombination Product:genderMale                        NA
      healthYes:intervention_typeDevice:genderMale                              5.828e+07
      healthYes:intervention_typeDiagnostic Test:genderMale                            NA
      healthYes:intervention_typeDietary Supplement:genderMale                  1.446e+08
      healthYes:intervention_typeDrug:genderMale                                4.047e+07
      healthYes:intervention_typeGenetic:genderMale                                    NA
      healthYes:intervention_typeOther:genderMale                               4.740e+07
      healthYes:intervention_typeProcedure:genderMale                           6.882e+07
      healthYes:intervention_typeRadiation:genderMale                                  NA
      healthYes:intervention_typeBiological:agechild                            1.390e+08
      healthYes:intervention_typeCombination Product:agechild                          NA
      healthYes:intervention_typeDevice:agechild                                1.326e+08
      healthYes:intervention_typeDiagnostic Test:agechild                              NA
      healthYes:intervention_typeDietary Supplement:agechild                           NA
      healthYes:intervention_typeDrug:agechild                                  6.559e+07
      healthYes:intervention_typeGenetic:agechild                                      NA
      healthYes:intervention_typeOther:agechild                                 9.290e+07
      healthYes:intervention_typeProcedure:agechild                             1.607e+08
      healthYes:intervention_typeRadiation:agechild                                    NA
      healthYes:intervention_typeBiological:ageolder_adult                             NA
      healthYes:intervention_typeCombination Product:ageolder_adult                    NA
      healthYes:intervention_typeDevice:ageolder_adult                                 NA
      healthYes:intervention_typeDiagnostic Test:ageolder_adult                        NA
      healthYes:intervention_typeDietary Supplement:ageolder_adult              1.358e+08
      healthYes:intervention_typeDrug:ageolder_adult                            1.114e+08
      healthYes:intervention_typeGenetic:ageolder_adult                                NA
      healthYes:intervention_typeOther:ageolder_adult                           1.334e+08
      healthYes:intervention_typeProcedure:ageolder_adult                              NA
      healthYes:intervention_typeRadiation:ageolder_adult                              NA
      healthYes:genderMale:agechild                                             9.603e+07
      healthYes:genderMale:ageolder_adult                                       5.989e+07
      intervention_typeBiological:genderMale:agechild                           8.937e+07
      intervention_typeCombination Product:genderMale:agechild                         NA
      intervention_typeDevice:genderMale:agechild                                      NA
      intervention_typeDiagnostic Test:genderMale:agechild                             NA
      intervention_typeDietary Supplement:genderMale:agechild                          NA
      intervention_typeDrug:genderMale:agechild                                 1.120e+08
      intervention_typeGenetic:genderMale:agechild                                     NA
      intervention_typeOther:genderMale:agechild                                8.029e+07
      intervention_typeProcedure:genderMale:agechild                                   NA
      intervention_typeRadiation:genderMale:agechild                                   NA
      intervention_typeBiological:genderMale:ageolder_adult                            NA
      intervention_typeCombination Product:genderMale:ageolder_adult                   NA
      intervention_typeDevice:genderMale:ageolder_adult                                NA
      intervention_typeDiagnostic Test:genderMale:ageolder_adult                       NA
      intervention_typeDietary Supplement:genderMale:ageolder_adult             1.252e+08
      intervention_typeDrug:genderMale:ageolder_adult                           9.064e+07
      intervention_typeGenetic:genderMale:ageolder_adult                               NA
      intervention_typeOther:genderMale:ageolder_adult                          1.191e+08
      intervention_typeProcedure:genderMale:ageolder_adult                             NA
      intervention_typeRadiation:genderMale:ageolder_adult                             NA
      healthYes:intervention_typeBiological:genderMale:agechild                        NA
      healthYes:intervention_typeCombination Product:genderMale:agechild               NA
      healthYes:intervention_typeDevice:genderMale:agechild                            NA
      healthYes:intervention_typeDiagnostic Test:genderMale:agechild                   NA
      healthYes:intervention_typeDietary Supplement:genderMale:agechild                NA
      healthYes:intervention_typeDrug:genderMale:agechild                       1.109e+08
      healthYes:intervention_typeGenetic:genderMale:agechild                           NA
      healthYes:intervention_typeOther:genderMale:agechild                             NA
      healthYes:intervention_typeProcedure:genderMale:agechild                         NA
      healthYes:intervention_typeRadiation:genderMale:agechild                         NA
      healthYes:intervention_typeBiological:genderMale:ageolder_adult                  NA
      healthYes:intervention_typeCombination Product:genderMale:ageolder_adult         NA
      healthYes:intervention_typeDevice:genderMale:ageolder_adult                      NA
      healthYes:intervention_typeDiagnostic Test:genderMale:ageolder_adult             NA
      healthYes:intervention_typeDietary Supplement:genderMale:ageolder_adult          NA
      healthYes:intervention_typeDrug:genderMale:ageolder_adult                        NA
      healthYes:intervention_typeGenetic:genderMale:ageolder_adult                     NA
      healthYes:intervention_typeOther:genderMale:ageolder_adult                       NA
      healthYes:intervention_typeProcedure:genderMale:ageolder_adult                   NA
      healthYes:intervention_typeRadiation:genderMale:ageolder_adult                   NA
                                                                                  z value
      (Intercept)                                                               1.441e+05
      healthYes                                                                -2.164e+08
      intervention_typeBiological                                               1.691e+08
      intervention_typeCombination Product                                     -2.323e+07
      intervention_typeDevice                                                  -1.577e+08
      intervention_typeDiagnostic Test                                         -6.602e+07
      intervention_typeDietary Supplement                                      -4.216e+07
      intervention_typeDrug                                                     6.949e+07
      intervention_typeGenetic                                                 -6.602e+07
      intervention_typeOther                                                   -1.955e+08
      intervention_typeProcedure                                               -8.477e+06
      intervention_typeRadiation                                               -1.255e+04
      genderMale                                                               -1.261e+08
      agechild                                                                 -1.109e+08
      ageolder_adult                                                           -3.152e+07
      healthYes:intervention_typeBiological                                     1.370e+07
      healthYes:intervention_typeCombination Product                                   NA
      healthYes:intervention_typeDevice                                         2.480e+08
      healthYes:intervention_typeDiagnostic Test                                4.407e+07
      healthYes:intervention_typeDietary Supplement                             1.262e+08
      healthYes:intervention_typeDrug                                           1.126e+08
      healthYes:intervention_typeGenetic                                       -5.671e+07
      healthYes:intervention_typeOther                                          2.914e+08
      healthYes:intervention_typeProcedure                                      7.069e+07
      healthYes:intervention_typeRadiation                                     -1.781e+07
      healthYes:genderMale                                                      1.178e+08
      intervention_typeBiological:genderMale                                    2.637e+07
      intervention_typeCombination Product:genderMale                          -1.612e+06
      intervention_typeDevice:genderMale                                        1.270e+08
      intervention_typeDiagnostic Test:genderMale                               4.441e+07
      intervention_typeDietary Supplement:genderMale                            5.195e+07
      intervention_typeDrug:genderMale                                          1.661e+08
      intervention_typeGenetic:genderMale                                       1.065e+08
      intervention_typeOther:genderMale                                         1.331e+08
      intervention_typeProcedure:genderMale                                     2.397e+06
      intervention_typeRadiation:genderMale                                            NA
      healthYes:agechild                                                        6.303e+07
      healthYes:ageolder_adult                                                 -6.213e+07
      intervention_typeBiological:agechild                                      3.480e+07
      intervention_typeCombination Product:agechild                                    NA
      intervention_typeDevice:agechild                                         -1.081e+07
      intervention_typeDiagnostic Test:agechild                                        NA
      intervention_typeDietary Supplement:agechild                              2.092e+07
      intervention_typeDrug:agechild                                            9.483e+07
      intervention_typeGenetic:agechild                                                NA
      intervention_typeOther:agechild                                           9.437e+07
      intervention_typeProcedure:agechild                                       5.746e+07
      intervention_typeRadiation:agechild                                              NA
      intervention_typeBiological:ageolder_adult                               -4.047e+07
      intervention_typeCombination Product:ageolder_adult                              NA
      intervention_typeDevice:ageolder_adult                                    4.175e+07
      intervention_typeDiagnostic Test:ageolder_adult                                  NA
      intervention_typeDietary Supplement:ageolder_adult                        1.169e+08
      intervention_typeDrug:ageolder_adult                                      1.459e+07
      intervention_typeGenetic:ageolder_adult                                          NA
      intervention_typeOther:ageolder_adult                                     1.429e+08
      intervention_typeProcedure:ageolder_adult                                -7.920e-01
      intervention_typeRadiation:ageolder_adult                                 6.282e+07
      genderMale:agechild                                                       1.272e+07
      genderMale:ageolder_adult                                                 1.355e+07
      healthYes:intervention_typeBiological:genderMale                          2.135e+07
      healthYes:intervention_typeCombination Product:genderMale                        NA
      healthYes:intervention_typeDevice:genderMale                             -1.055e+08
      healthYes:intervention_typeDiagnostic Test:genderMale                            NA
      healthYes:intervention_typeDietary Supplement:genderMale                 -8.061e+07
      healthYes:intervention_typeDrug:genderMale                               -1.335e+08
      healthYes:intervention_typeGenetic:genderMale                                    NA
      healthYes:intervention_typeOther:genderMale                              -1.368e+08
      healthYes:intervention_typeProcedure:genderMale                          -4.207e+07
      healthYes:intervention_typeRadiation:genderMale                                  NA
      healthYes:intervention_typeBiological:agechild                           -8.516e+06
      healthYes:intervention_typeCombination Product:agechild                          NA
      healthYes:intervention_typeDevice:agechild                               -1.210e+07
      healthYes:intervention_typeDiagnostic Test:agechild                              NA
      healthYes:intervention_typeDietary Supplement:agechild                           NA
      healthYes:intervention_typeDrug:agechild                                 -5.378e+07
      healthYes:intervention_typeGenetic:agechild                                      NA
      healthYes:intervention_typeOther:agechild                                -7.278e+07
      healthYes:intervention_typeProcedure:agechild                            -5.659e+07
      healthYes:intervention_typeRadiation:agechild                                    NA
      healthYes:intervention_typeBiological:ageolder_adult                             NA
      healthYes:intervention_typeCombination Product:ageolder_adult                    NA
      healthYes:intervention_typeDevice:ageolder_adult                                 NA
      healthYes:intervention_typeDiagnostic Test:ageolder_adult                        NA
      healthYes:intervention_typeDietary Supplement:ageolder_adult              1.580e+07
      healthYes:intervention_typeDrug:ageolder_adult                            5.624e+07
      healthYes:intervention_typeGenetic:ageolder_adult                                NA
      healthYes:intervention_typeOther:ageolder_adult                          -2.957e+07
      healthYes:intervention_typeProcedure:ageolder_adult                              NA
      healthYes:intervention_typeRadiation:ageolder_adult                              NA
      healthYes:genderMale:agechild                                            -1.599e+07
      healthYes:genderMale:ageolder_adult                                       1.013e+08
      intervention_typeBiological:genderMale:agechild                          -8.180e+06
      intervention_typeCombination Product:genderMale:agechild                         NA
      intervention_typeDevice:genderMale:agechild                                      NA
      intervention_typeDiagnostic Test:genderMale:agechild                             NA
      intervention_typeDietary Supplement:genderMale:agechild                          NA
      intervention_typeDrug:genderMale:agechild                                -1.328e+07
      intervention_typeGenetic:genderMale:agechild                                     NA
      intervention_typeOther:genderMale:agechild                               -3.170e+07
      intervention_typeProcedure:genderMale:agechild                                   NA
      intervention_typeRadiation:genderMale:agechild                                   NA
      intervention_typeBiological:genderMale:ageolder_adult                            NA
      intervention_typeCombination Product:genderMale:ageolder_adult                   NA
      intervention_typeDevice:genderMale:ageolder_adult                                NA
      intervention_typeDiagnostic Test:genderMale:ageolder_adult                       NA
      intervention_typeDietary Supplement:genderMale:ageolder_adult             1.092e+07
      intervention_typeDrug:genderMale:ageolder_adult                          -6.342e+07
      intervention_typeGenetic:genderMale:ageolder_adult                               NA
      intervention_typeOther:genderMale:ageolder_adult                         -9.472e+07
      intervention_typeProcedure:genderMale:ageolder_adult                             NA
      intervention_typeRadiation:genderMale:ageolder_adult                             NA
      healthYes:intervention_typeBiological:genderMale:agechild                        NA
      healthYes:intervention_typeCombination Product:genderMale:agechild               NA
      healthYes:intervention_typeDevice:genderMale:agechild                            NA
      healthYes:intervention_typeDiagnostic Test:genderMale:agechild                   NA
      healthYes:intervention_typeDietary Supplement:genderMale:agechild                NA
      healthYes:intervention_typeDrug:genderMale:agechild                       1.747e+07
      healthYes:intervention_typeGenetic:genderMale:agechild                           NA
      healthYes:intervention_typeOther:genderMale:agechild                             NA
      healthYes:intervention_typeProcedure:genderMale:agechild                         NA
      healthYes:intervention_typeRadiation:genderMale:agechild                         NA
      healthYes:intervention_typeBiological:genderMale:ageolder_adult                  NA
      healthYes:intervention_typeCombination Product:genderMale:ageolder_adult         NA
      healthYes:intervention_typeDevice:genderMale:ageolder_adult                      NA
      healthYes:intervention_typeDiagnostic Test:genderMale:ageolder_adult             NA
      healthYes:intervention_typeDietary Supplement:genderMale:ageolder_adult          NA
      healthYes:intervention_typeDrug:genderMale:ageolder_adult                        NA
      healthYes:intervention_typeGenetic:genderMale:ageolder_adult                     NA
      healthYes:intervention_typeOther:genderMale:ageolder_adult                       NA
      healthYes:intervention_typeProcedure:genderMale:ageolder_adult                   NA
      healthYes:intervention_typeRadiation:genderMale:ageolder_adult                   NA
                                                                               Pr(>|z|)
      (Intercept)                                                                <2e-16
      healthYes                                                                  <2e-16
      intervention_typeBiological                                                <2e-16
      intervention_typeCombination Product                                       <2e-16
      intervention_typeDevice                                                    <2e-16
      intervention_typeDiagnostic Test                                           <2e-16
      intervention_typeDietary Supplement                                        <2e-16
      intervention_typeDrug                                                      <2e-16
      intervention_typeGenetic                                                   <2e-16
      intervention_typeOther                                                     <2e-16
      intervention_typeProcedure                                                 <2e-16
      intervention_typeRadiation                                                 <2e-16
      genderMale                                                                 <2e-16
      agechild                                                                   <2e-16
      ageolder_adult                                                             <2e-16
      healthYes:intervention_typeBiological                                      <2e-16
      healthYes:intervention_typeCombination Product                                 NA
      healthYes:intervention_typeDevice                                          <2e-16
      healthYes:intervention_typeDiagnostic Test                                 <2e-16
      healthYes:intervention_typeDietary Supplement                              <2e-16
      healthYes:intervention_typeDrug                                            <2e-16
      healthYes:intervention_typeGenetic                                         <2e-16
      healthYes:intervention_typeOther                                           <2e-16
      healthYes:intervention_typeProcedure                                       <2e-16
      healthYes:intervention_typeRadiation                                       <2e-16
      healthYes:genderMale                                                       <2e-16
      intervention_typeBiological:genderMale                                     <2e-16
      intervention_typeCombination Product:genderMale                            <2e-16
      intervention_typeDevice:genderMale                                         <2e-16
      intervention_typeDiagnostic Test:genderMale                                <2e-16
      intervention_typeDietary Supplement:genderMale                             <2e-16
      intervention_typeDrug:genderMale                                           <2e-16
      intervention_typeGenetic:genderMale                                        <2e-16
      intervention_typeOther:genderMale                                          <2e-16
      intervention_typeProcedure:genderMale                                      <2e-16
      intervention_typeRadiation:genderMale                                          NA
      healthYes:agechild                                                         <2e-16
      healthYes:ageolder_adult                                                   <2e-16
      intervention_typeBiological:agechild                                       <2e-16
      intervention_typeCombination Product:agechild                                  NA
      intervention_typeDevice:agechild                                           <2e-16
      intervention_typeDiagnostic Test:agechild                                      NA
      intervention_typeDietary Supplement:agechild                               <2e-16
      intervention_typeDrug:agechild                                             <2e-16
      intervention_typeGenetic:agechild                                              NA
      intervention_typeOther:agechild                                            <2e-16
      intervention_typeProcedure:agechild                                        <2e-16
      intervention_typeRadiation:agechild                                            NA
      intervention_typeBiological:ageolder_adult                                 <2e-16
      intervention_typeCombination Product:ageolder_adult                            NA
      intervention_typeDevice:ageolder_adult                                     <2e-16
      intervention_typeDiagnostic Test:ageolder_adult                                NA
      intervention_typeDietary Supplement:ageolder_adult                         <2e-16
      intervention_typeDrug:ageolder_adult                                       <2e-16
      intervention_typeGenetic:ageolder_adult                                        NA
      intervention_typeOther:ageolder_adult                                      <2e-16
      intervention_typeProcedure:ageolder_adult                                   0.428
      intervention_typeRadiation:ageolder_adult                                  <2e-16
      genderMale:agechild                                                        <2e-16
      genderMale:ageolder_adult                                                  <2e-16
      healthYes:intervention_typeBiological:genderMale                           <2e-16
      healthYes:intervention_typeCombination Product:genderMale                      NA
      healthYes:intervention_typeDevice:genderMale                               <2e-16
      healthYes:intervention_typeDiagnostic Test:genderMale                          NA
      healthYes:intervention_typeDietary Supplement:genderMale                   <2e-16
      healthYes:intervention_typeDrug:genderMale                                 <2e-16
      healthYes:intervention_typeGenetic:genderMale                                  NA
      healthYes:intervention_typeOther:genderMale                                <2e-16
      healthYes:intervention_typeProcedure:genderMale                            <2e-16
      healthYes:intervention_typeRadiation:genderMale                                NA
      healthYes:intervention_typeBiological:agechild                             <2e-16
      healthYes:intervention_typeCombination Product:agechild                        NA
      healthYes:intervention_typeDevice:agechild                                 <2e-16
      healthYes:intervention_typeDiagnostic Test:agechild                            NA
      healthYes:intervention_typeDietary Supplement:agechild                         NA
      healthYes:intervention_typeDrug:agechild                                   <2e-16
      healthYes:intervention_typeGenetic:agechild                                    NA
      healthYes:intervention_typeOther:agechild                                  <2e-16
      healthYes:intervention_typeProcedure:agechild                              <2e-16
      healthYes:intervention_typeRadiation:agechild                                  NA
      healthYes:intervention_typeBiological:ageolder_adult                           NA
      healthYes:intervention_typeCombination Product:ageolder_adult                  NA
      healthYes:intervention_typeDevice:ageolder_adult                               NA
      healthYes:intervention_typeDiagnostic Test:ageolder_adult                      NA
      healthYes:intervention_typeDietary Supplement:ageolder_adult               <2e-16
      healthYes:intervention_typeDrug:ageolder_adult                             <2e-16
      healthYes:intervention_typeGenetic:ageolder_adult                              NA
      healthYes:intervention_typeOther:ageolder_adult                            <2e-16
      healthYes:intervention_typeProcedure:ageolder_adult                            NA
      healthYes:intervention_typeRadiation:ageolder_adult                            NA
      healthYes:genderMale:agechild                                              <2e-16
      healthYes:genderMale:ageolder_adult                                        <2e-16
      intervention_typeBiological:genderMale:agechild                            <2e-16
      intervention_typeCombination Product:genderMale:agechild                       NA
      intervention_typeDevice:genderMale:agechild                                    NA
      intervention_typeDiagnostic Test:genderMale:agechild                           NA
      intervention_typeDietary Supplement:genderMale:agechild                        NA
      intervention_typeDrug:genderMale:agechild                                  <2e-16
      intervention_typeGenetic:genderMale:agechild                                   NA
      intervention_typeOther:genderMale:agechild                                 <2e-16
      intervention_typeProcedure:genderMale:agechild                                 NA
      intervention_typeRadiation:genderMale:agechild                                 NA
      intervention_typeBiological:genderMale:ageolder_adult                          NA
      intervention_typeCombination Product:genderMale:ageolder_adult                 NA
      intervention_typeDevice:genderMale:ageolder_adult                              NA
      intervention_typeDiagnostic Test:genderMale:ageolder_adult                     NA
      intervention_typeDietary Supplement:genderMale:ageolder_adult              <2e-16
      intervention_typeDrug:genderMale:ageolder_adult                            <2e-16
      intervention_typeGenetic:genderMale:ageolder_adult                             NA
      intervention_typeOther:genderMale:ageolder_adult                           <2e-16
      intervention_typeProcedure:genderMale:ageolder_adult                           NA
      intervention_typeRadiation:genderMale:ageolder_adult                           NA
      healthYes:intervention_typeBiological:genderMale:agechild                      NA
      healthYes:intervention_typeCombination Product:genderMale:agechild             NA
      healthYes:intervention_typeDevice:genderMale:agechild                          NA
      healthYes:intervention_typeDiagnostic Test:genderMale:agechild                 NA
      healthYes:intervention_typeDietary Supplement:genderMale:agechild              NA
      healthYes:intervention_typeDrug:genderMale:agechild                        <2e-16
      healthYes:intervention_typeGenetic:genderMale:agechild                         NA
      healthYes:intervention_typeOther:genderMale:agechild                           NA
      healthYes:intervention_typeProcedure:genderMale:agechild                       NA
      healthYes:intervention_typeRadiation:genderMale:agechild                       NA
      healthYes:intervention_typeBiological:genderMale:ageolder_adult                NA
      healthYes:intervention_typeCombination Product:genderMale:ageolder_adult       NA
      healthYes:intervention_typeDevice:genderMale:ageolder_adult                    NA
      healthYes:intervention_typeDiagnostic Test:genderMale:ageolder_adult           NA
      healthYes:intervention_typeDietary Supplement:genderMale:ageolder_adult        NA
      healthYes:intervention_typeDrug:genderMale:ageolder_adult                      NA
      healthYes:intervention_typeGenetic:genderMale:ageolder_adult                   NA
      healthYes:intervention_typeOther:genderMale:ageolder_adult                     NA
      healthYes:intervention_typeProcedure:genderMale:ageolder_adult                 NA
      healthYes:intervention_typeRadiation:genderMale:ageolder_adult                 NA
                                                                                  
      (Intercept)                                                              ***
      healthYes                                                                ***
      intervention_typeBiological                                              ***
      intervention_typeCombination Product                                     ***
      intervention_typeDevice                                                  ***
      intervention_typeDiagnostic Test                                         ***
      intervention_typeDietary Supplement                                      ***
      intervention_typeDrug                                                    ***
      intervention_typeGenetic                                                 ***
      intervention_typeOther                                                   ***
      intervention_typeProcedure                                               ***
      intervention_typeRadiation                                               ***
      genderMale                                                               ***
      agechild                                                                 ***
      ageolder_adult                                                           ***
      healthYes:intervention_typeBiological                                    ***
      healthYes:intervention_typeCombination Product                              
      healthYes:intervention_typeDevice                                        ***
      healthYes:intervention_typeDiagnostic Test                               ***
      healthYes:intervention_typeDietary Supplement                            ***
      healthYes:intervention_typeDrug                                          ***
      healthYes:intervention_typeGenetic                                       ***
      healthYes:intervention_typeOther                                         ***
      healthYes:intervention_typeProcedure                                     ***
      healthYes:intervention_typeRadiation                                     ***
      healthYes:genderMale                                                     ***
      intervention_typeBiological:genderMale                                   ***
      intervention_typeCombination Product:genderMale                          ***
      intervention_typeDevice:genderMale                                       ***
      intervention_typeDiagnostic Test:genderMale                              ***
      intervention_typeDietary Supplement:genderMale                           ***
      intervention_typeDrug:genderMale                                         ***
      intervention_typeGenetic:genderMale                                      ***
      intervention_typeOther:genderMale                                        ***
      intervention_typeProcedure:genderMale                                    ***
      intervention_typeRadiation:genderMale                                       
      healthYes:agechild                                                       ***
      healthYes:ageolder_adult                                                 ***
      intervention_typeBiological:agechild                                     ***
      intervention_typeCombination Product:agechild                               
      intervention_typeDevice:agechild                                         ***
      intervention_typeDiagnostic Test:agechild                                   
      intervention_typeDietary Supplement:agechild                             ***
      intervention_typeDrug:agechild                                           ***
      intervention_typeGenetic:agechild                                           
      intervention_typeOther:agechild                                          ***
      intervention_typeProcedure:agechild                                      ***
      intervention_typeRadiation:agechild                                         
      intervention_typeBiological:ageolder_adult                               ***
      intervention_typeCombination Product:ageolder_adult                         
      intervention_typeDevice:ageolder_adult                                   ***
      intervention_typeDiagnostic Test:ageolder_adult                             
      intervention_typeDietary Supplement:ageolder_adult                       ***
      intervention_typeDrug:ageolder_adult                                     ***
      intervention_typeGenetic:ageolder_adult                                     
      intervention_typeOther:ageolder_adult                                    ***
      intervention_typeProcedure:ageolder_adult                                   
      intervention_typeRadiation:ageolder_adult                                ***
      genderMale:agechild                                                      ***
      genderMale:ageolder_adult                                                ***
      healthYes:intervention_typeBiological:genderMale                         ***
      healthYes:intervention_typeCombination Product:genderMale                   
      healthYes:intervention_typeDevice:genderMale                             ***
      healthYes:intervention_typeDiagnostic Test:genderMale                       
      healthYes:intervention_typeDietary Supplement:genderMale                 ***
      healthYes:intervention_typeDrug:genderMale                               ***
      healthYes:intervention_typeGenetic:genderMale                               
      healthYes:intervention_typeOther:genderMale                              ***
      healthYes:intervention_typeProcedure:genderMale                          ***
      healthYes:intervention_typeRadiation:genderMale                             
      healthYes:intervention_typeBiological:agechild                           ***
      healthYes:intervention_typeCombination Product:agechild                     
      healthYes:intervention_typeDevice:agechild                               ***
      healthYes:intervention_typeDiagnostic Test:agechild                         
      healthYes:intervention_typeDietary Supplement:agechild                      
      healthYes:intervention_typeDrug:agechild                                 ***
      healthYes:intervention_typeGenetic:agechild                                 
      healthYes:intervention_typeOther:agechild                                ***
      healthYes:intervention_typeProcedure:agechild                            ***
      healthYes:intervention_typeRadiation:agechild                               
      healthYes:intervention_typeBiological:ageolder_adult                        
      healthYes:intervention_typeCombination Product:ageolder_adult               
      healthYes:intervention_typeDevice:ageolder_adult                            
      healthYes:intervention_typeDiagnostic Test:ageolder_adult                   
      healthYes:intervention_typeDietary Supplement:ageolder_adult             ***
      healthYes:intervention_typeDrug:ageolder_adult                           ***
      healthYes:intervention_typeGenetic:ageolder_adult                           
      healthYes:intervention_typeOther:ageolder_adult                          ***
      healthYes:intervention_typeProcedure:ageolder_adult                         
      healthYes:intervention_typeRadiation:ageolder_adult                         
      healthYes:genderMale:agechild                                            ***
      healthYes:genderMale:ageolder_adult                                      ***
      intervention_typeBiological:genderMale:agechild                          ***
      intervention_typeCombination Product:genderMale:agechild                    
      intervention_typeDevice:genderMale:agechild                                 
      intervention_typeDiagnostic Test:genderMale:agechild                        
      intervention_typeDietary Supplement:genderMale:agechild                     
      intervention_typeDrug:genderMale:agechild                                ***
      intervention_typeGenetic:genderMale:agechild                                
      intervention_typeOther:genderMale:agechild                               ***
      intervention_typeProcedure:genderMale:agechild                              
      intervention_typeRadiation:genderMale:agechild                              
      intervention_typeBiological:genderMale:ageolder_adult                       
      intervention_typeCombination Product:genderMale:ageolder_adult              
      intervention_typeDevice:genderMale:ageolder_adult                           
      intervention_typeDiagnostic Test:genderMale:ageolder_adult                  
      intervention_typeDietary Supplement:genderMale:ageolder_adult            ***
      intervention_typeDrug:genderMale:ageolder_adult                          ***
      intervention_typeGenetic:genderMale:ageolder_adult                          
      intervention_typeOther:genderMale:ageolder_adult                         ***
      intervention_typeProcedure:genderMale:ageolder_adult                        
      intervention_typeRadiation:genderMale:ageolder_adult                        
      healthYes:intervention_typeBiological:genderMale:agechild                   
      healthYes:intervention_typeCombination Product:genderMale:agechild          
      healthYes:intervention_typeDevice:genderMale:agechild                       
      healthYes:intervention_typeDiagnostic Test:genderMale:agechild              
      healthYes:intervention_typeDietary Supplement:genderMale:agechild           
      healthYes:intervention_typeDrug:genderMale:agechild                      ***
      healthYes:intervention_typeGenetic:genderMale:agechild                      
      healthYes:intervention_typeOther:genderMale:agechild                        
      healthYes:intervention_typeProcedure:genderMale:agechild                    
      healthYes:intervention_typeRadiation:genderMale:agechild                    
      healthYes:intervention_typeBiological:genderMale:ageolder_adult             
      healthYes:intervention_typeCombination Product:genderMale:ageolder_adult    
      healthYes:intervention_typeDevice:genderMale:ageolder_adult                 
      healthYes:intervention_typeDiagnostic Test:genderMale:ageolder_adult        
      healthYes:intervention_typeDietary Supplement:genderMale:ageolder_adult     
      healthYes:intervention_typeDrug:genderMale:ageolder_adult                   
      healthYes:intervention_typeGenetic:genderMale:ageolder_adult                
      healthYes:intervention_typeOther:genderMale:ageolder_adult                  
      healthYes:intervention_typeProcedure:genderMale:ageolder_adult              
      healthYes:intervention_typeRadiation:genderMale:ageolder_adult              
      ---
      Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
      
      (Dispersion parameter for binomial family taken to be 1)
      
          Null deviance:  2884  on 2120  degrees of freedom
      Residual deviance: 53056  on 2047  degrees of freedom
      AIC: 53204
      
      Number of Fisher Scoring iterations: 25
      

# The regression_model(x, y, z, 'without') can return summary of a logistic regression model without interaction terms.

    Code
      m
    Output
      
      Call:
      glm(formula = adverse_status ~ health + intervention_type + gender + 
          age, family = "binomial", data = df)
      
      Deviance Residuals: 
          Min       1Q   Median       3Q      Max  
      -2.5170  -0.9871  -0.5568   1.1213   2.4905  
      
      Coefficients:
                                           Estimate Std. Error z value Pr(>|z|)    
      (Intercept)                           -2.4565     0.3587  -6.849 7.43e-12 ***
      healthYes                             -0.5989     0.1044  -5.734 9.80e-09 ***
      intervention_typeBiological            4.1860     0.4174  10.029  < 2e-16 ***
      intervention_typeCombination Product -11.6501   506.9185  -0.023 0.981664    
      intervention_typeDevice                1.2697     0.3966   3.201 0.001368 ** 
      intervention_typeDiagnostic Test     -11.8136   351.7746  -0.034 0.973210    
      intervention_typeDietary Supplement    1.1342     0.5066   2.239 0.025178 *  
      intervention_typeDrug                  2.5898     0.3567   7.261 3.83e-13 ***
      intervention_typeGenetic               1.3972     1.3270   1.053 0.292405    
      intervention_typeOther                 1.2806     0.3905   3.279 0.001040 ** 
      intervention_typeProcedure             0.6813     0.4928   1.382 0.166855    
      intervention_typeRadiation             1.8547     0.9679   1.916 0.055339 .  
      genderMale                             0.3961     0.1090   3.632 0.000281 ***
      agechild                               0.7510     0.2195   3.421 0.000623 ***
      ageolder_adult                         0.9991     0.3361   2.973 0.002950 ** 
      ---
      Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
      
      (Dispersion parameter for binomial family taken to be 1)
      
          Null deviance: 2884.0  on 2120  degrees of freedom
      Residual deviance: 2461.1  on 2106  degrees of freedom
      AIC: 2491.1
      
      Number of Fisher Scoring iterations: 13
      

