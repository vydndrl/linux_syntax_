# 문자열 검색
grep -rni "hello"
ps -ef | grep "nginx"

# 파일 또는 디렉토리 검색 : find
find . -name "*.sh"

# 파일 검색 후 해당 내용에서 원하는 문자열 찾을 때
# xargs : 넘겨운 파일 목록을 한 줄 한 줄 읽겠다라는 의미
find . -name "*.sh" | xargs grep -n "hello"

# exec 옵션을 통한 find와 grep
find . -name "*.sh" -exec grep -n "hello" {} \;