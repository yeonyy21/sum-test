### About keygen?
    1. 키가 있는지부터 확인하자
        
        ```jsx
        $ cd ~/.ssh
        $ ls
        authorized_keys2  id_dsa       known_hosts
        config            id_dsa.pub
        ```
        
    2.  id_rsa파일 이름에서, .pub라는 확장자가 붙은 파일이 있으면 그것은 공개키다. 
        
        .ssh 디렉터리가 없으면 ssh-keygen 명령어로 프로그램으로 키를 생성해야 한다. 
        
        ```jsx
        $ ssh-keygen
        Generating public/private rsa key pair.
        Enter file in which to save the key (/home/schacon/.ssh/id_rsa):
        Created directory '/home/schacon/.ssh'.
        Enter passphrase (empty for no passphrase):
        Enter same passphrase again:
        Your identification has been saved in /home/schacon/.ssh/id_rsa.
        Your public key has been saved in /home/schacon/.ssh/id_rsa.pub.
        The key fingerprint is:
        d0:82:24:8e:d7:f1:bb:9b:33:53:96:93:49:da:9b:e3 schacon@mylaptop.local
        ```
        
        1. .ssh/id_Rsa를 저장하고 싶은 디렉터리를 입력하고 암호를 2번 입력한다. 암호를 비워두면 키를 사용할 때 암호를 묻지 않는다.
        2. 사용자가 자신의 공개키를 git 서버 관리자에게 보낸다. .pub 내용을 복사하여 이메일을 보내자? 아래는 공개키 내용이다.
            
            ```jsx
            $ cat ~/.ssh/id_rsa.pub
            ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAklOUpkDHrfHY17SbrmTIpNLTGK9Tjom/BWDSU
            GPl+nafzlHDTYW7hdI4yZ5ew18JH4JW9jbhUFrviQzM7xlELEVf4h9lFX5QVkbPppSwg0cda3
            Pbv7kOdJ/MTyBlWXFCR+HAo3FXRitBqxiX1nKhXpHAZsMciLq8V6RjsNAQwdsdMFvSlVK/7XA
            t3FaoJoAsncM1Q9x5+3V0Ww68/eIFmb1zuUFljQJKprrX88XypNDvjYNby6vw/Pb0rwert/En
            mZ+AW4OZPnTPI89ZPmVMLuayrD2cE86Z/il8b+gw3r3+1nKatmIkjn2so1d01QraTlMqVSsbx
            NrRFi9wrf+M7Q== schacon@mylaptop.local
            ```
### git: 파일 변경사항 저장소에 저장
git add sum.*

git status /현재 작업 디렉터리와 인덱스 상태를 보여줍니다.

git commit -m “Add sum modules” /인덱스에 추가된 파일들을 커밋하고, "Add sum modules"라는 메시지를 부여합니다.

git status

git log

g++ -c -o sum.o sum.cpp /sum.cpp 파일을 컴파일하여 sum.o 오브젝트 파일을 생성합니다.

g++ -o sum-test main.o sum.o /main.o와 sum.o 오브젝트 파일을 링크하여 실행 파일 sum-test를 생성합니다.
 
status

make clean

git status

git add Makefile

git commit -m “Add makefile”

git push

git push originmain

cat Makefile

git add sum.cpp

git commit -m “Update sum.cpp”

git push
