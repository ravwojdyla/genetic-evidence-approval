FROM rstudio/r-base:4.0-focal

RUN R -e 'install.packages("markdown", repos = "http://cran.us.r-project.org")'
RUN R -e 'install.packages("knitr", repos = "http://cran.us.r-project.org")'
RUN R -e 'install.packages("dplyr", repos = "http://cran.us.r-project.org")'
RUN R -e 'install.packages("ggplot2", repos = "http://cran.us.r-project.org")'
RUN R -e 'install.packages("cowplot", repos = "http://cran.us.r-project.org")'
RUN R -e 'install.packages("gdata", repos = "http://cran.us.r-project.org")'
RUN R -e 'install.packages("epitools", repos = "http://cran.us.r-project.org")'
RUN R -e 'install.packages("tidyr", repos = "http://cran.us.r-project.org")'

# V8 headers are required for rstan R package to compile
RUN apt-get update \
 && apt-get install libnode-dev -y \
 && rm -rf /var/lib/apt/lists/*

RUN R -e 'install.packages("rstan", repos = "http://cran.us.r-project.org")'
