# The summary_stats() returns a tibble of the count, mean and standard deviation of different health groups.

    Code
      s
    Output
      # A tibble: 2 x 4
        health count  mean    sd
        <fct>  <int> <dbl> <dbl>
      1 No     43286 0.258 0.245
      2 Yes    10281 0.106 0.144

# The summary_stats() returns a tibble of the count, mean and standard deviation of different age groups.

    Code
      s
    Output
      # A tibble: 3 x 4
        age         count  mean    sd
        <fct>       <int> <dbl> <dbl>
      1 adult        5790 0.135 0.156
      2 child        3392 0.198 0.197
      3 older_adult   512 0.216 0.254

# The summary_stats() returns a tibble of the count, mean and standard deviation of different intervention type groups.

    Code
      s
    Output
      # A tibble: 11 x 4
         intervention_type   count   mean    sd
         <fct>               <int>  <dbl> <dbl>
       1 Behavioral           5083 0.0480 0.102
       2 Biological           9241 0.355  0.217
       3 Combination Product   163 0.153  0.160
       4 Device              11333 0.0975 0.162
       5 Diagnostic Test       273 0.0628 0.143
       6 Dietary Supplement   1208 0.120  0.183
       7 Drug                77951 0.288  0.243
       8 Genetic               307 0.435  0.260
       9 Other                8534 0.193  0.239
      10 Procedure            4101 0.225  0.263
      11 Radiation            1384 0.408  0.265

# The summary_stats() returns a tibble of the count, mean and standard deviation of different gender groups.

    Code
      s
    Output
      # A tibble: 2 x 4
        gender count  mean    sd
        <fct>  <int> <dbl> <dbl>
      1 Female  4469 0.207 0.237
      2 Male    2135 0.230 0.223

