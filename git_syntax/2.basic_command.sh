# 현재 working directory, staging area상태 확인
git status

# .은 모든 수정/추가 사항 add
git add .

# 특정파일만  add 할 경우
git add test_folder/test1.txt

# commit을 통해 메시지타이틀과 메시지내용을 커밋이력으로 생성
git commit -m "메시지제목" -m "메시지내용"
# git commit만 입력하고 엔터시 vi모드 -> 첫줄 : 타이틀, 두번쨰줄부터 내용 -> :wq저장후 종료시 커밋id생성
git commit

# commit 이력 확인
git log
git log --oneline
# head하단의 로그만 보이는 것이 아니라 모든 commit 이력을 조회하는 명령어
# head : 현재 사용하고 있는 commitid를 의미
git log --all

# 원격저장소로 업로드
git push origin 브랜치명
# 충돌발생시 충돌무시하고, 로컬기준의 코드를 원격에 덮어쓰기(절대 사용하지 말 것)
git push origin 브랜치면 --force

# pull은 원격사항을 local로  내려받는 것(fetch-merge)
git pull origin main
# fetch는 변경사항을 local로 가져오되, 병합은 하지 않는 것
gt fetch origin main

# commitID간 또는 브랜치 사이의 비교 명령어
git diff commitID1 commitID2
git diff 브랜치1 브랜치2

# 취소상황
# workingdirectory -> 그냥 취소
# staging area -> UI
# local repo -> commitID발생 -> commitID취소
# 가장 최신의 커밋 취소
git reset head~1
git reset head^
# origin repo -> revert commit
# 이미 push commit사항을 되돌리는 새로운 commit 생성(기존의 커밋 지워지는 것 아님!)
git revert 커밋ID 

# 작업중인 사항을 임시저장
git stash
# 임시저장한 작업사항을 다시적용
git stash pop
# 저장한 작업목록 조회
git stash list
# 저장한 목록 전체 삭제
git stash clear