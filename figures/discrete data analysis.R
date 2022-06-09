## ----echo=FALSE----------------------------------------------------------
source("Rprofile.R")
knitrSet("ch01", fig.pos = 'tb')
.locals$ch01 <- NULL
.pkgs$ch01 <- NULL

## ----arth-head,echo=FALSE------------------------------------------------
data("Arthritis", package = "vcd")
head(Arthritis, 5)

## ----arth-freq,echo=FALSE------------------------------------------------
as.data.frame(xtabs(~ Treatment + Sex + Improved, data = Arthritis))

## ----arth-freq1,echo=FALSE-----------------------------------------------
as.data.frame(xtabs(~ Treatment + Improved, data = Arthritis))

## ----haireye00,echo=FALSE------------------------------------------------
library(vcd)
(HairEye <- margin.table(HairEyeColor, c(1, 2)))

## ----haireye01,echo=FALSE------------------------------------------------
assocstats(HairEye)

## ----haireye02, echo=FALSE, h=6, w=6, out.width='.49\\textwidth', cap='Graphical displays for the hair color and eye color data. Left: mosaic display; right: correspondence analysis plot.'----
# reorder eye color
HairEye <- HairEye[,c(1,3,4,2)]
mosaic(HairEye, shade = TRUE)
library(ca)
op <- par(cex=1.4)
plot(ca(HairEye), main="Hair Color and Eye Color")
title(xlab="Dimension 1 (89.4%)", ylab="Dimension 2 (9.5%)")
par(op)

## ----spaceshuttle0, echo=FALSE, h=5, w=8, out.width='.7\\textwidth', cap='Space shuttle O-ring failure, observed and predicted probabilities. The dotted vertical line at \\degree{31} shows the prediction for the launch of the \\emph{Challenger}.'----
data("SpaceShuttle", package="vcd")
logit2p <- function(logit) 1/(1 + exp(-logit))

plot(nFailures/6 ~ Temperature, data = SpaceShuttle,
     xlim = c(30, 81), ylim = c(0,1),
     main = "NASA Space Shuttle O-Ring Failures",
     ylab = "Estimated failure probability",
     xlab = "Temperature (degrees F)",
     type="n")

fm <- glm(cbind(nFailures, 6 - nFailures) ~ Temperature,
          data = SpaceShuttle,
          family = binomial)
pred <- predict(fm, data.frame(Temperature = 30 : 81), se=TRUE)

predicted <- data.frame(
    Temperature = 30 : 81,
  	prob = logit2p(pred$fit),
		lower = logit2p(pred$fit - 2*pred$se),
		upper = logit2p(pred$fit + 2*pred$se)
		)

with(predicted, {
	polygon(c(Temperature, rev(Temperature)),
	        c(lower, rev(upper)), col="lightpink", border=NA)
	lines(Temperature, prob, lwd=3)
	}
	)
with(SpaceShuttle,
	points(Temperature, nFailures/6, col="blue", pch=19, cex=1.3)
	)

abline(v = 31, lty = 3)
text(32, 0, 'Challenger', cex=1.1)

## ----donner0, echo=FALSE, h=6, w=8, out.width='.7\\textwidth', cap='Donner party data, showing the relationship between age and survival. The blue curve and confidence band give the predicted probability of survival from a linear logistic regression model.'----
data("Donner", package="vcdExtra")
donner.mod <- glm(survived ~ age, data=Donner, family=binomial)
library(ggplot2)
if (packageVersion("ggplot2") < "1.1.0") {
 # old code
ggplot(Donner, aes(age, survived)) + theme_bw() +
  geom_point(position = position_jitter(height = 0.02, width = 0)) +
	stat_smooth(method = "glm", family = binomial, formula = y ~ x,
              fill="blue", alpha = 0.3, size=2)
} else {
 # new code
ggplot(Donner, aes(age, survived)) + theme_bw() +
  geom_point(position = position_jitter(height = 0.02, width = 0)) +
    stat_smooth(method = "glm", method.args = list(family = binomial), formula = y ~ x,
              fill="blue", alpha = 0.3, size=2)
}

## ----donner0-other, echo=FALSE, h=6, w=7, out.width='.49\\textwidth', cap='Donner party data, showing other model-based smoothers for the relationship between age and survival. Left: using a natural spline; right: using a non-parametric loess smoother.', fig.pos="!b"----
library(splines)
ggplot(Donner, aes(age, survived)) + theme_bw() +
  geom_point(position = position_jitter(height = 0.02, width = 0)) +
	stat_smooth(method = "glm", family = binomial, formula = y ~ ns(x, 2),
	color="darkgreen", fill="darkgreen", alpha = 0.3, size=2)
ggplot(Donner, aes(age, survived)) + theme_bw() +
  geom_point(position = position_jitter(height = 0.02, width = 0)) +
	stat_smooth(method = "loess", span=0.9, color="red", fill="red", alpha = 0.2, size=2, na.rm=TRUE) +
	ylim(0,1)


## ----iris-parallel, echo=FALSE, h=6, w=6, out.width='.49\\textwidth', cap='Parallel coordinates plots of the Iris data. Left: Default variable order; right: Variables ordered to make the pattern of correlations more coherent.'----
library(lattice)
data("iris", package="datasets")
vnames <- gsub("\\.", "\\\n", names(iris))
key = list(
         columns = 3, title="Species",
         lines = list(col=c("red", "blue", "green3"), lwd=4),
         col=c("red", "blue", "green3"),
         text = list(c("Setosa", "Versicolor", "Virginica")))
# default variable order
parallelplot(~iris[1:4], data=iris, groups = Species,
  varnames = vnames[1:4], key=key,
  horizontal.axis = FALSE, lwd=4,
  col=c("red", "blue", "green3"))

# effect of order of variables
parallelplot(~iris[c(1,3,4,2)], data=iris, groups = Species,
	varnames = vnames[c(1,3,4,2)], key=key,
  horizontal.axis = FALSE, lwd=8,
  col=c(rgb(1,0,0,.2), rgb(0,0,1,.2), rgb(0,205/255,0,.2) ))

## ----interactive, child="ch01/interactive.Rnw"---------------------------



## ----colors, echo=FALSE, h=3, w=7, out.width='.8\\textwidth', results='hide', cap='Qualitative color palette for the HSV (left) and HCL (right) spaces. The HSV colors are $(H, 100, 100)$ and the HCL colors $(H, 50, 70)$ for the same hues $H$. Note that in a monochrome version of this page, all pie sectors in the right wheel will be shaded with the same gray, i.e., they will appear to be virtually identical.'----
library(colorspace)
par(mfrow = c(1,2), mar = c(1,1,1,1), oma = c(0,0,0,0))
pie(rep(1,9), radius = 1, col = rainbow(9), labels = 360 * 0:8/9)
pie(rep(1,9), radius = 1, col = rainbow_hcl(9), labels = 360 * 0:8/9)

