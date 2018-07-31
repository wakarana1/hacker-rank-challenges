def convert_temp(tempurature, input_scale: , output_scale: 'celsius')
  return tempurature if input_scale == output_scale
  case output_scale.downcase
  when 'celsius'
    (input_scale == 'fahrenheit') ? ((tempurature - 32) / 1.8) : (tempurature - 273.15)
  when 'fahrenheit'
    (input_scale == 'celsius') ? (tempurature * 1.8 + 32) : ((tempurature * (9/5)) - 459.67)
  when 'kelvin'
    (input_scale == 'fahrenheit') ? ((tempurature + 459.67) * (5.0/9.0)) : (tempurature + 273.15)
  end
end
