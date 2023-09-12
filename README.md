
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Introduce

The Chinese ID number contains a lot of information, this package helps you get the date of birth, age, age based on year, gender, region, zodiac, constellation information from Chinese ID number.

## Installation

``` r
# Install development version from GitLab
remotes::install_gitlab("chuxinyuan/cnid")
# Install from CRAN
install.packages("CNID")
```

## Usage

Get full information by ID number.

``` r
id = c(
  "652801197305161555", 
  "110101841125178"
)
cnid_info(id)
```

Get days of a given year and month, such as february 2022.

``` r
mdays(2, 2022)
```

Get date of birth, age, gender, etc.

``` r
id = c(
  "652801197305161555", 
  "110101841125178"
)

birth_year(id)
birth_month(id)
birth_day(id)
birth_date(id)
age(id)
age_by_year(id)
gender(id)
region(id)
zodiac(id)
constellation(id)
```

## License

CNID is free and open source software, licensed under MIT + file LICENSE.
