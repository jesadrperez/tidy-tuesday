# Tidy Tuesday

<!-- badges: start -->

<!-- badges: end -->

Is a collection of my submissions to \#TidyTuesday from [Twitter](https://twitter.com/adriaaaaaaan). For more information about \#TidyTuesday see their GitHub [repo](https://github.com/rfordatascience/tidytuesday) or see the latest postings on [Twitter](https://twitter.com/search?q=%23TidyTuesday&f=live).

## Packages

These are the packages I find very useful in developing my charts:

-   [tidyverse](https://tidyverse.tidyverse.org/) - data manipulation and plotting
-   [tidytuesday](https://thebioengineer.github.io/tidytuesdayR/) - importing the *TidyTuesday* data sets
-   [glue](https://glue.tidyverse.org/) - joining strings and more
-   [scales](https://scales.r-lib.org/) - formatting axis and labels
-   [showtext](http://cran.r-project.org/web/packages/showtext/index.html) - importing and customizing fonts
-   [ggtext](https://wilkelab.org/gridtext/) - better text rendering
-   [cowplot](https://wilkelab.org/cowplot/index.html) - combining plots and simply themes
-   [waffle](https://github.com/hrbrmstr/waffle) - making waffle plots

## Look & Feel

### Font

Two fonts families are predominately used: `Lato` and `Merriweather`. `Lato`is a san-serif font that is in the title and `Merriweather` is a serif font used in all other typography. Both are Google fonts. The textual chart components are sized based on their importance and to not distract from the data-encoding objects in the charts.

### Alignment

The title, subtitle, legend, and caption (source and notes) are left aligned. Furthermore, all text should horizontal. For the y-axis' title, it should not be used and the axis will be descirbed in the subtitle.

My font style can be applied with:

``` r
library(showtext)
library(tidyverse)

font_add_google("Lato", "Lato")
font_add_google("Merriweather", "Merriweather")
showtext_auto()

# WIP
theme(
    text = element_text(family = "Merriweather", size = 12),
    plot.title = element_text(family = "Lato", size = rel(1.5)),
    plot.subtitle = element_text(size = rel(1.25)),
    axis.text = element_text(size = rel(0.875)),
    legend.text = element_text(size = rel(0.875)),
  )
```

> The default font size is 12 points, which is ideal for charts smaller than 5 inches wide. For wider fonts, up to 8 inches, use 14 points.

### Colors

(WIP)

## Submissions

### January

#### Week 4

![Avocados From Kenya](/plots/2021-04.png)

### February

### March

#### Week 10

![Sex No Longer Sells](/plots/2021-10.png)

#### Week 11

![Bechdel Test](/plots/2021-11.png)
