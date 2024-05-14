# script 파일 생성
touch myscript.sh

####### 실습 ######
echo "script start"
cd
mkdir my_dir4
cd my_dir4
touch file1.txt
touch file2.txt
echo "hello file1" > file1.txt
echo "hello file2" > file2.txt
cp file1.txt file1_backup.txt
mv file2.txt file2_rename.txt
ls -al
echo "script end"

# if문
if [ 1 -gt 2 ]; then
    echo "hello world1"
else 
    echo "hello world2"
fi

# if문과 변수 활용, 파일(-f)/디렉토리(-d) 존재여부 확인
file_name="second_file.txt"
if [ -f "$file_name" ]; then
    echo "$file_name exists"
else
    echo "$file_name does not exists"
fi

# for문 기본
for a in {1..100}
do
    echo "hello world$a"
done

# if문 실습
echo "start"
if [ -d test_dir ]; then
    cd test_dir # 안 됨
else 
    mkdir test_dir
fi
echo "end"

# if, for문 실습
if [ -f test4.txt ] then;
    echo "test4.txt exists"
else    
    touch test4.txt
fi

for a in {1..100}
do
    echo "hello world$a" >> test4.txt
done

# for문 활용한 count 세기
count=0
for a in {1..100}
do
    ((count++))
done
echo "count is $count"

# for문 활용한 모든 파일, directory 목록 출력하기
for a in *
do
    echo "a is $a"
done


# for문 활용한 directory의 개수와 그 외(else)의 파일 개수 세기.
dir_count=0
others=0
for a in *
do
    if [ -d "$a" ]; then
        ((dir_count++))
    else
        ((others++))
    fi
done
echo "dir_count is $dir_count"
echo "others is $others"
