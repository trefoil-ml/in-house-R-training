
<!-- rnb-text-begin -->

---
title: "Model Basics"
author: "Exercises III"
date: "2017-11-29"
output:
  html_notebook:
    highlight: pygments
    number_sections: no
    theme: cosmo
    toc: yes
    toc_float: yes
  html_document:
    df_print: paged
    toc: yes
  word_document:
    toc: yes
---


### Exercises

1.  What happens if you repeat the analysis of `sim2` using a model without
    an intercept. What happens to the model equation? What happens to the
    predictions?
    
2.  Use `model_matrix()` to explore the equations generated for the models
    I fit to `sim3` and `sim4`. Why is `*` a good shorthand for interaction?

3.  Using the basic principles, convert the formulas in the following two
    models into functions. (Hint: start by converting the categorical variable
    into 0-1 variables.)
    

<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->

    
<!-- rnb-source-begin eyJkYXRhIjpbIm1vZDEgPC0gbG0oeSB+IHgxICsgeDIsIGRhdGEgPSBzaW0zKSIsIm1vZDIgPC0gbG0oeSB+IHgxICogeDIsIGRhdGEgPSBzaW0zKSJdfQ== -->
    
    ```r
    mod1 <- lm(y ~ x1 + x2, data = sim3)
    mod2 <- lm(y ~ x1 * x2, data = sim3)
    ```
<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


4.   For `sim4`,  which of `mod1` and `mod2` is better? I think `mod2` does a 
     slightly better job at removing patterns, but it's pretty subtle. Can you 
     come up with a plot to support my claim? 
     

<!-- rnb-text-end -->

