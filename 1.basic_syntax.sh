# 사용자가 현재 위치해 있는 폴더 경로 출력 명령어
pwd

# 현재 위치에서 파일, 폴더 목록 출력
ls

# + 자세히
ls -l

# + 숨김파일까지 출력
ls -al

# + 시간 순서로 정렬 등등...
ls -alrt

# 디렉토리 생성
mkdir my_dir

# 특정 디렉토리로 이동
cd my_dir

# 루트 디렉토리(최상단의 디렉토리)로 이동
cd /

# 절대 경로 폴더로 이동
cd /home/root1/my_dir

# 상대 경로 폴더로 이동
# 일반적으로 .. 은 1단계 상위 폴더를 의미 '.' 하나는 현재 폴더를 의미
cd .. 

# 특정 계정의 home 경로로 이동
cd

# 직전 위치의 폴더로 이동
cd -

# 파일 생성(비어있는)
touch first_file.txt

# 파일 내용 조회
cat first_file.txt

# 터미널 창에 문자열을 출력하는 명령어
echo "hello world"

# echo를 통해 파일에 문자열을 write 하는 방법
# > 하나를 쓰면 덮어쓰기 모드, >> 두개를 쓰면 추가 모드
echo "hello world" > first_file.txt

# history 명령어를 통해 이전에 실행했던 명령어 조회
history

# 입력 중인 명령창 정리
clear

# mv는 이동명령어
# "mv a.txt b.txt" 형식으로 사용 => 사실상 이름 변경
# "mv a.txt ../a.txt" => 잘라내서 붙이기

# 복사 명령어는 cp, 디렉토리까지 복사시에는 -r 옵션 추가
cp second_file.txt third_file.txt

# rm은 삭제 명령어. -r 옵션을 통해 디렉토리까지 삭제
# 리눅스마다 차이가 있으나 삭제할지 말지 물어보는 경우가 있는데,
# -f 옵션은 묻지 않고 삭제가 가능하게 한다.
rm -f third_file.txt

# 묻지 않고, 디렉토리까지 모두 삭제하는 명령어는
rm -rf my_dir3

# 현재 폴더에 있는 모든 파일 삭제
rm -rf *

# head는 cat처럼 파일을 출력하는 것인데, 상위 n개 행 조회
# tail은 하위 n개 행 조회
head first_file.txt # 기본은 상위 10줄 출력
head -5 first_file.txt # 상위 5줄만 출력

# nano 편집기 사용
nano 파일명

