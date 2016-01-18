# get_username
#
# <@B> <<호에에> 이은하> <누구>랑 술 먹고 싶다
# <@G-bot> <호에에> 이은하, 술 좀 그만 마셔

def get_username(str)
  arr = str.split ""
  flag = 0
  index = 0
  arr.each do |c|
    if c == '<'
      flag += 1
    elsif c == '>'
      flag -= 1
    end
    if flag == 0
      break
    end
    index += 1
  end
  return arr[1..index - 1].join("")
end
