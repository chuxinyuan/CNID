
#------------------------------------------------------------------------------#

idcard_info = function(id) {
  
  # 提取出生年、月、日、性别、地区基础信息
  birth_year = character(length(id))
  birth_month = character(length(id))
  birth_day = character(length(id))
  gender_code = character(length(id))
  region_code = character(length(id))
  
  for (i in 1:length(id)) {
    if (nchar(id[i]) == 15) {
      # 15位身份证号码
      birth_year[i] = paste0("19", substr(id[i], 7, 8))
      birth_month[i] = substr(id[i], 9, 10)
      birth_day[i] = substr(id[i], 11, 12)
      gender_code[i] = as.numeric(substr(id[i], 15, 15))
      region_code[i] = substr(id[i], 1, 6)
    } else if (nchar(id[i]) == 18) {
      # 18位身份证号码
      birth_year[i] = substr(id[i], 7, 10)
      birth_month[i] = substr(id[i], 11, 12)
      birth_day[i] = substr(id[i], 13, 14)
      gender_code[i] = as.numeric(substr(id[i], 17, 17))
      region_code[i] = substr(id[i], 1, 6)
    } else {
      birth_year[i] = NA
      birth_month[i] = NA
      birth_day[i] = NA
      gender_code[i] = NA
      region_code[i] = NA
    }
  }
  
  # 解析出生日期
  birth_date = seq(
    as.Date("1900/1/1"), 
    by = "month", 
    length.out = length(id)
  )
  for (i in 1:length(id)) {
    y = birth_year[i]
    m = birth_month[i]
    d = birth_day[i]
    if (is.na(y)) {
      birth_date[i] = NA
    } else {
      birth_date[i] = as.Date(paste(y, m, d, sep = "-"))
    }
  }
  
  # 精确计算年龄
  current_year = as.numeric(format(Sys.Date(), "%Y"))
  current_month = as.numeric(format(Sys.Date(), "%m"))
  current_day = as.numeric(format(Sys.Date(), "%d"))
  
  birth_year = as.numeric(birth_year)
  birth_month = as.numeric(birth_month)
  birth_day = as.numeric(birth_day)
  
  age = numeric(length(id))
  for (i in 1:length(id)) {
    y = birth_year[i]
    m = birth_month[i]
    d = birth_day[i]
    if (is.na(y)) {
      age[i] = NA
    } else {
      if (
        current_month < m || 
        (current_month == m && current_day < d)
      ) {
        age[i] = current_year - y - 1
      } else {
        age[i] = current_year - y
      }
    }
  }
  
  # 按年份计算年龄
  age_by_year = numeric(length(id))
  for (i in 1:length(id)) {
    y = birth_year[i]
    if (is.na(y)) {
      age_by_year[i] = NA
    } else {
      age_by_year[i] = current_year - y
    }
  }
  
  # 解析性别
  gender_code = as.numeric(gender_code)
  gender = ifelse(gender_code %% 2 == 0, "女", "男")
  
  
  # 解析地区
  region_code_base = data.frame(
    code = c(
    ),
    name = c(
    )
  )
  
  region_code = as.numeric(region_code)
  region = character(length = length(id))
  for (i in 1:length(id)) {
    rc = region_code[i]
    if (is.na(rc)) {
      region[i] = NA
    } else {
      region[i] = region_code_base$name[
        region_code_base$code == rc
      ]
    }
  }
  
  # 解析生肖
  zodiacs = c(
    "鼠", "牛", "虎", "兔", "龙", "蛇",
    "马", "羊", "猴", "鸡", "狗", "猪"
  )
  zodiac = character(length = length(id))
  for (i in 1:length(id)) {
    y = birth_year[i]
    if (is.na(y)) {
      zodiac[i] = NA
    } else {
      zodiac[i] = zodiacs[(y - 1900) %% 12 + 1]
    }
  }
  
  # 解析星座
  get_constellation = function(birth_month, birth_day) {
    constellations = c(
      "水瓶座", "双鱼座", "白羊座", "金牛座",
      "双子座", "巨蟹座", "狮子座", "处女座",
      "天秤座", "天蝎座", "射手座", "摩羯座"
    )
    xinzuo = character(length = length(birth_month))
    for (i in 1:length(birth_month)) {
      m = birth_month[i]
      d = birth_day[i]
      if (m < 1 || m > 12 || d < 1 || d > 31 || is.na(m)) {
        xinzuo[i] = "无效的出生日期"
      } else if ((m == 1 && d >= 20) ||(m == 2 && d <= 18)) {
        xinzuo[i] = constellations[1]  # 水瓶座 (1月20日 - 2月18日)
      } else if ((m == 2 && d >= 19) || (m == 3 && d <= 20)) {
        xinzuo[i] = constellations[2]  # 双鱼座 (2月19日 - 3月20日)
      } else if ((m == 3 && d >= 21) ||(m == 4 && d <= 19)) {
        xinzuo[i] = constellations[3]  # 白羊座 (3月21日 - 4月19日)
      } else if ((m == 4 && d >= 20) ||(m == 5 && d <= 20)) {
        xinzuo[i] = constellations[4]  # 金牛座 (4月20日 - 5月20日)
      } else if ((m == 5 && d >= 21) ||(m == 6 && d <= 20)) {
        xinzuo[i] = constellations[5]  # 双子座 (5月21日 - 6月20日)
      } else if ((m == 6 && d >= 21) ||(m == 7 && d <= 22)) {
        xinzuo[i] = constellations[6]  # 巨蟹座 (6月21日 - 7月22日)
      } else if ((m == 7 && d >= 23) ||(m == 8 && d <= 22)) {
        xinzuo[i] = constellations[7]  # 狮子座 (7月23日 - 8月22日)
      } else if ((m == 8 && d >= 23) ||(m == 9 && d <= 22)) {
        xinzuo[i] = constellations[8]  # 处女座 (8月23日 - 9月22日)
      } else if ((m == 9 && d >= 23) ||(m == 10 && d <= 22)) {
        xinzuo[i] = constellations[9]  # 天秤座 (9月23日 - 10月22日)
      } else if ((m == 10 && d >= 23) ||(m == 11 && d <= 21)) {
        xinzuo[i] = constellations[10]  # 天蝎座 (10月23日 - 11月21日)
      } else if ((m == 11 && d >= 22) ||(m == 12 && d <= 21)) {
        xinzuo[i] = constellations[11]  # 射手座 (11月22日 - 12月21日)
      } else if ((m == 12 && d >= 22) ||(m == 1 && d <= 19)) {
        xinzuo[i] = constellations[12]  # 摩羯座 (12月22日 - 1月19日)
      } else {
        xinzuo[i] = NA
      }
    }
    return(xinzuo)
  }
  constellation = get_constellation(birth_month, birth_day)
  
  # 生成结果列表
  result = list(
    birth_year = birth_year,
    birth_month = birth_month,
    birth_day = birth_day,
    birth_date = birth_date,
    age = age,
    age_by_year = age_by_year,
    gender = gender,
    region = region,
    zodiac = zodiac,
    constellation = constellation
  )
  
  # 提出提示信息
  if (all(nchar(id) %in% c(15, 18)) == FALSE) {
    warning("There are cases where the ID number is not 15 or 18 digits.")
  }
  
  # 返回最终结果
  return(result)
  
}

#------------------------------------------------------------------------------#

id = c(
  "653127198403151777",
  "653127198509151787", 
  "65312719850315177",
  "653127850315177"
)
idcard_info(id)

