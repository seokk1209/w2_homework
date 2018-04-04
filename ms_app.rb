=begin

자신만의 메소드 사전을 만듭니다!

def 이름_메소드명     #메소드에 대한 설명
  메소드사용
  #=> 예상되는결과
end

다음과 같은 형식으로 아래의 #메소드작성 주석뒤에 코드를 작성합니다.
Ruby On Rails를 사용하면서 가장많이 사용하는 Ruby의 요소는 method 입니다.
method를 많이 알아둔다면 그만큼 코딩이 쉬워질거예요.
가능한 많은 메소드를 직접 irb로 써보세요.
이번과제는 여러분이 공부하는만큼 스스로 가져가는게 많은 과제일거예요.
화이팅하세요! 과제 형식이나 버그에 관련해서는 언제나 질문하세요.

=end

#매번 새로운 변수를 만들기 귀찮다면 아래를 사용해도 되고 각자 만들어 사용해도 됩니다.
var_integer = 123
var_string = "likelion"
var_boolean_1 = true
var_boolean_2 = false
var_array = [1,2,3,4,5]
var_hash = {
  key1: 1,
  key2: 2,
  key3: "likelion",
  key4: "konkuk",
  key5: true,
  key6: false
}

#메소드 만들기 예시
def miyeon_length   #배열이나 문자열의 길이를 측정하는 메소드
  a = [1,2,3]
  b = "likelion"
  puts a.length
  puts b.length
  # => 3
  # => 8
end

#메소드 주석 (여기부터 메소드를 작성하세요.)

def ms_push 	# 1)배열에 추가적인 숫자를 넣는 메소드
	a= [1,2,3]
	puts a.push 3,4,5
	# =>[1,2,3,3,4,5]
end

def ms_pop # 2)배열에서 선언된 n 개의 숫자만큼을 뒤에서 빼는 함수
	a = [1,2,3]
	puts a.pop 2
	puts a

	#=>[2,3]
	#=> [1]
end

def ms_unshift #3) 배열의 앞에서부터 선언된 인자를 넣는 메소드
	a = [1,2,3]
	puts a.unshift 4, 5, 6

	# => 4 5 6 1 2 3
end

def ms_shift # 4) 배열의 앞에서부터 n 개의 숫자만큼을 빼는 메소드
	a = [1,2,3,4,5]
	puts a.shift 3

	# => 1,2,3
end

def ms_values_at # 5) 배열의 특정 위치에서 여러개의 값을 가저오는 메소드
	a = %w(ruby python perl haskell lisp)
	puts a.values_at 0, 2, 3

	# => "ruby", "perl", "haskell"
end

def ms_intern # 6)문자열을 심볼로 변환하는 메소드

	puts 'hello'.intern

	# => :hello
end

def ms_times #7) 특정 횟수만큼 반복하는 메소드
	a = '안녕하세요'
	6.times { puts a}
	#=> 안녕하세요 x 6
end

def ms_reverse! # 8) 특정문자열을 반대로 만드는 메소드
	a ='안녕하세요'
	puts a.reverse!
end

def ms_between?  # 9) 특정값 사이에 있는지를 확인하는 메소드
	a = 50
	if a.between?(0,100)
		puts "yes ! you r in"
	else 
		puts "No you r not in"
	end
	#=>  yes ! you r in
end

def ms_first # 10) 배열의 앞에서 N개의 수를 받아오는 메소드
	a = [*1..100]
	puts a.first(5)

	# => 1,2,3,4,5
end

def ms_last # 11) 배열의 뒤에서 N개의 수를 받아오는 메소드
	a = [*1..100]
	puts a.last(5)

	# => 96, 97, 98, 99, 100
end 

def ms_not # 12) 부정을 해주는 메소드
	a= true
	puts a.!
	# => false
end

def ms_split # 13) 문자열을 각각의 문자로 분리하는 메소드
	alpha  = "qwertyuiasdfghjklzxcvbnm"
	puts alpha
	alpha = alpha.split(//)
	puts alpha

	# = > qwer..bnm/ q w r t ... b n m


end

def ms_zip # 14) 문자열을 열단위로 묶어주는 메소드
	a = [1,2]
	b =[[2,4,8],[10,12,16]]
	puts a.zip b
	# => 1 2 4 8  2 10 12 16
end

def ms_clear # 15) 배열의 원소를 모두 제거하는 메소드
	a = %w[a b c d e]
	a.clear
	puts a
	# => 

end

def ms_collect # 16 ) 배열의 각 원소와 다른 원소를 결합하는 
	a = %w[a b c d e]
	puts a
	a= a.collect do |x|
		x+"!"
	end
	puts a
	#=> a! b! c! d! e!
end

def ms_each_index # 17) 배열의 각원소의 인텍스를 툴력하는 메소드
	a = %w[a b c d e]
	a.each_index {|x| puts x , ","}
	#=> 0,1,2,3,4
end

def ms_count # 18) 배열의 원소의 갯수를 카운트하는 메소드
	arr = [1,3,5,7,9]
	puts arr.count
	puts arr.count(7)
	#=> 5 1
end

def ms_eql? # 19) 같은 배열인지를 확인하는 메소드
	a=[1,2,3]
	b=[1,2,3]

	puts a.eql?(b)
	#=> true
end

def ms_drop # 20) 앞에서부터 n 개의 원소를 버리고 남은 원소를 리턴해주는 메소드
	a = [1,2,3,4,5,6,7]
	puts a.drop(4)
	# => 5,6,7
end

def ms_include? # 21) 배열안에 특정 원소가 있는지를 확인해주는 메소드
	a = ["a","b","c","d","e","f","g"]
	puts a.include?("a")

	# => true

end

def ms_insert #22) 배열의 n 번째에 원소를 추가하는 메소드
	a = %w[a b c d]
	a.insert(2,99)
	puts a

	#=> a b 99 c d
end

def ms_uniq! # 23) 배열의 유일원소를 뽑아내는 메소드
	a = %w[a b c d e e e b a]
	puts a.uniq!

	# => a b c d e
end

def ms_sort # 24) 배열의 원소를 소팅하는 메소드
	a = %w[c a b d f e g]
	puts a.sort
	#=> a b c d e f g
end

def ms_shuffle # 25) 배열의 원소를 섞는 메소드
	a = %w[a b c d e]
	puts a.shuffle
	# => 랜넘소팅
end

def ms_compact # 26) 배열에 원소중 nil 값을 가지는 원소를 제거하는 메소드
	a = ["a", "b", nil, "c", nil, "d", "e"]
	puts a.compact

	# => a b c d e 
end

def ms_transpose # 27) 배열의 열과 행을 바꿔주는 메소드
	a = [[1,2],[3,4],[5,6]]
	puts a.transpose

	#=> [[1,2,3],[4,5,6]]
end

def ms_rotate #28) 배열의 원소를 돌리는 메소드
	a = %w[1 2 3 4 5]
	puts a.rotate

	#=> 23451
end
def ms_map #29) 배열의 원소를 하나씩 접근하는 메소드
	a = %w[1 2 4 5 6 7 8]
	a.map { |x| puts x 
	}

	#=> 1 2 3 4 5 6 7 8
end

def ms_empty #30) 배열의 원소가 모두 비어있는지 확인하는 메소드
	puts [].empty?
	puts [].any?

	# => true false
end
def cheers
  puts "beers! yeah!"
end
#여기 이 두 주석 사이에 메소드를 작성하시면 됩니다~

puts "==================================="
puts "==================================="

dic_flag = 0

while dic_flag == 0
  puts "1. 검색         2. 종료"

  user_input = gets.chomp.to_i

  case user_input
  when 1
    puts "검색할 메소드를 입력하세요"
    send(gets.chomp)
  when 2
    puts "종료합니다"
    dic_flag += 1
  else
    puts "1과 2중 다시 입력해주세요."
  end
end
