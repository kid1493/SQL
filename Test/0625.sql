# 프로그래머스 sql 문제
# 3개의 테이블에서 주어진 쿼리를 뽑아내는 문제
# 특정 문자열로 시작하는 주소값을 포함하여 , Join 을 여러번 해서 푸는 문제가 나왔음.
# 특정 문자열 검색하는 sql문이 기억이 안나서 끙끙대다가 이름을 기준으로 정렬한 후 출력 결과를 보고 Limit으로 갯수를 조절하며 쿼리를 작성했음.
# 문제는 정상적으로 풀었지만 다음에는 확실하게 맞추자 라는 생각으로 정리..

Select address , name  
From people
Where address like '서울특별시%
Order By Name

# 위와 같은 형태로 Select [Field] From [Table] Where [Field] 를 사용한다.
# Like '서울 특별시%' -> '서울 특별시'로 '시작하는'  데이터 검색
# Like '%서울 특별시' -> '서울 특별시'로 '끝나는' 데이터 검색
# Like '%서울 특별시%' -> '서울 특별시'를 '포함하는' 데이터 검색!

# 추가적으로 REGEXP 연산자가 있다고 한다...
# 복수개의 특정 문자열을 포함하는 연산자 검색..!
# SELECT [필드명] FROM [테이블명] WHERE [필드명] REGEXP '특정 문자열|특정 문자열2';
# 물론 성능은 Like 가 훨씬 빠른듯 하다..
# 관련 링크 : https://engineering.huiseoul.com/mysql-regexp-%ED%8D%BC%ED%8F%AC%EB%A8%BC%EC%8A%A4-%EA%B0%84%EB%8B%A8-%ED%85%8C%EC%8A%A4%ED%8A%B8-4336af0b55b

# SQL 은 실제 직무에서 많이 사용할 가능성이 높으니까 틈틈히 정리해두기...!!
