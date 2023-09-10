
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Introduce

The Chinese ID number contains a lot of information, this package helps you get the date of birth, age, age based on year, gender, region, zodiac, constellation information from the Chinese ID number.

## Installation

``` r
# Install development version from GitLab
remotes::install_gitlab("chuxinyuan/CNID")
# Install from CRAN
install.packages("CNID")
```

## Usage

Obtain full information by ID number.

``` r
id = c(
  "652801197305161555", 
  "110101840116177"
)
cnid_info(id)
```

Obtain days of a given year and month, such as february 2022.

``` r
mdays(2, 2022)
```

Obtain date of birth, age, gender, etc.

``` r
id = c(
  "652801197305161555", 
  "110101840116177"
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

ecce is free and open source software, licensed under MIT + file
LICENSE.
