require 'pry'

def domain_name(url)
  new_string = ""
  a = url.split('/')
  # a = url.split('/')
  # new_string = a.last
  # b = new_string.split('.')
  # new_string = b.first
  binding.pry
  # b = a.split('.')
  # new = url.delete("http://")
  # new = new.delete(".com")
  new_string

end

# Test.assert_equals(domain_name("http://google.com"), "google")
# Test.assert_equals(domain_name("http://google.co.jp"), "google")
# Test.assert_equals(domain_name("www.xakep.ru"), "xakep")
# Test.assert_equals(domain_name("https://youtube.com"), "youtube")

# p domain_name("http://google.com")
#google
p domain_name("http://google.co.jp")
p domain_name("www.xakep.ru")
# p domain_name("https://youtube.com")
