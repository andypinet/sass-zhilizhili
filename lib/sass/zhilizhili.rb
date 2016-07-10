require "sass/zhilizhili/version"
require "sass"
require "cmath"
require 'image_size'

module Sass
  module Zhilizhili
    def self.hello
      p "hello from my gem"
    end
  end
end

module Sass::Script::Functions
  def zl_std_reverse(string)
    assert_type string, :String
    Sass::Script::Value::String.new(string.value.reverse)
  end
  declare :zl_std_reverse, [:string]

  def zl_std_run(cwd)
    assert_type cwd, :String
    plainvalue = `#{unquote(cwd)}`
    value = plainvalue[0, plainvalue.length - 1]
    Sass::Script::Value::String.new(value)
  end
  declare :zl_std_run, [:string]

  def zl_std_sqrt(num)
    numeric_transformation(num) {|num| CMath.sqrt(num) }
  end
  declare :zl_std_sqrt, [:number]

  def zl_std_utils_strip_unit(num)
    assert_type num, :Number
    number(num.value)
  end
  declare :zl_std_utils_strip_unit, [:number]

  def zl_std_math_sqrt(num)
    numeric_transformation(num) {|num| CMath.sqrt(num) }
  end
  declare :zl_std_math_sqrt, [:number]

  def zl_std_math_pi()
    pi = 3.1415926
    Sass::Script::Number.new(pi)
  end
  declare :zl_std_math_pi, []

  def zl_std_math_cos(num)
    numeric_transformation(num) {|num| CMath.cos(num) }
  end
  declare :zl_std_math_cos, [:number]

  def zl_std_math_sin(num)
    numeric_transformation(num) {|num| CMath.sin(num) }
  end
  declare :zl_std_math_sin, [:number]

  def zl_std_math_tan(num)
    numeric_transformation(num) {|num| CMath.tan(num) }
  end
  declare :zl_std_math_tan, [:number]

  def zl_std_math_acos(num)
    numeric_transformation(num) {|num| CMath.acos(num) }
  end
  declare :zl_std_math_acos, [:number]

  def zl_std_math_asin(num)
    numeric_transformation(num) {|num| CMath.asin(num) }
  end
  declare :zl_std_math_asin, [:number]

  def zl_std_math_atan(num)
    numeric_transformation(num) {|num| CMath.atan(num) }
  end
  declare :zl_std_math_atan, [:number]

  def zl_std_str_match(str, regexp)
    if res = str.value.scan(/#{regexp.value}/)
      ret = res.map {|str| 
        Sass::Script::Value::String.new(str)
      }
      list(ret, :comma)
    else
      list(Array.new, :comma)
    end  
  end
  declare :zl_std_str_match, [:string, :string]

  def zl_std_image_size(path) 
    if res = ImageSize.path(path.value).size
      ret = res.map {|size| 
        Sass::Script::Value::Number.new(size)
      }
      list(ret, :comma)
    else
      list(Array.new, :comma)
    end
  end
  declare :zl_std_image_size, [:string]
end