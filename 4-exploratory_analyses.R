#============================================================
# Diverse exploratory tests
#============================================================

library(ggplot2)
library(ggstatsplot)
library(dplyr)
library(rio)
library(effectsize)

dat <- import("processed_data/Rep01_processed.csv")

# Alternative Version of log transformation for H1:
# Use the balance1_log measure (with +1 added before log transformation)
# ========================================================

# H1: Relative to a neutral control condition, the original awe inducing video increases humility in a behavioral measure.

# This time, do *not* exclude the zero-weakness cases. Also keep the outliers.
  dat_H1_alt <- dat %>%
    filter(condition %in% c("exp_old", "control"))

ggbetweenstats(
  data = dat_H1_alt,
  x    = condition,
  y    = balance1_log,
  type = "parametric"
)

t.test(
  dat_H1_alt$balance1_log[dat_H1_alt$condition == "control"],
  dat_H1_alt$balance1_log[dat_H1_alt$condition == "exp_old"],
  alternative = "greater",
  var.equal = TRUE
)




## Prereg I4: Exploratory research questions
#---------------------------------------------------------------

# E1: The new (more modern) awe inducing video leads to higher awe ratings compared to the old awe inducing video.


# E2: The new (more modern) awe inducing video leads to more behavioral humility compared to the old awe inducing video.
# ========================================================
# Apply the exclusion criteria for the behavioral humility measure
# and select participants from the old and new awe video conditions.
dat_E2 <- dat %>%
  filter(!has_outlier, !has_zero_weaks) %>%
  filter(condition %in% c("exp_old", "exp_new"))

# Check the total sample size and sample sizes per condition.
nrow(dat_E2)
table(dat_E2$condition)

# Compute descriptive statistics for behavioral humility by condition.
dat_E2 %>%
  group_by(condition) %>%
  summarise(
    n = n(),
    M = mean(balance_log, na.rm = TRUE),
    SD = sd(balance_log, na.rm = TRUE)
  )

# Test the difference in behavioral humility between the old and new
# awe video conditions using the preregistered two-sided t-test.
t_E2 <- t.test(
  dat_E2$balance_log[dat_E2$condition == "exp_new"],
  dat_E2$balance_log[dat_E2$condition == "exp_old"],
  alternative = "two.sided",
  var.equal = TRUE
)

t_E2

# Compute the effect size for the group difference.
effectsize(t_E2)

# Visualize individual values, group means, and 95% confidence intervals.
ggplot(dat_E2, aes(x = condition, y = balance_log)) +
  geom_jitter(
    width = 0.1,
    alpha = 0.5
  ) +
  stat_summary(
    fun = mean,
    geom = "point",
    size = 3
  ) +
  stat_summary(
    fun.data = mean_cl_normal,
    geom = "errorbar",
    width = 0.15
  ) +
  scale_x_discrete(
    labels = c(
      "exp_new" = "Neues Ehrfurchtsvideo",
      "exp_old" = "Ursprüngliches Ehrfurchtsvideo"
    )
  ) +
  theme_minimal() +
  labs(
    x = "Bedingung",
    y = "Demut"
  )

# E3: The screen size moderates the awe inducing effect of the video (awe video vs. control condition), with larger screens leading to larger effects.


# E4: We will explore alternative ways of operationalizing the behavioral measure which do not discard participants with zero reported weaknesses.


# E5: We will exclude participants based on some post-randomization control questions (being aware of consequences for causal inference due to the breaking of randomization)


# E6: We explore the moderating effect of participants’ self-reported attentiveness on the awe-inducing effect of the video (awe video vs. control condition).

