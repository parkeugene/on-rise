페이스북 로그인 시 필요 설정 사항(Omniauth 설정)
Facebook 로그인 기능 구현에는 APP_ID와 APP_SECRET 값이 필요합니다.
이 두 값을 깃헙 공개 저장소에 바로 올리면 보안상의 문제가 있을 듯 하여
ENV[] 와 bashrc 를 이용해 저의 컴퓨터(현진호의 컴퓨터)에서만 볼 수 있게 해뒀습니다.
로컬에서 돌릴 시 페이스북 로그인이 필요하시다면 슬랙을 통해 저에게 문의주신다면 감사하겠습니다.

### 프로젝트 소개  

###### 목적
  - 번역 프로젝트 리스트 제공, 번역 작업 활성화  

###### 프로젝트 개요
  - 프로젝트 영문 번역에 대한 정보를 제공를 제공하는 앱
    - 해당 프로젝트가 번역이 되어 있을 경우, 이에 대한 정보(url)을 제공
    - 번역이 되어 있지 않을 경우 번역 의뢰를 할 수 있도록 함

### 프로젝트 설치

- Rails 5
- Repository : https://github.com/parkeugene/on-rise
- 티켓관리 waffle : https://waffle.io/parkeugene/on-rise
- CI travis : https://travis-ci.org
- 배포 heroku : https://on-rise.herokuapp.com

### 프로젝트 참여

- 태스크 분배 : 각자 Github에 이슈를 등록
- 자료관리 : Github에 위키 등록

### 워크 플로우 Github flow

1. 이슈 등록
2. 브랜치 생성
3. 브랜치 push
4. 브랜치 PR
5. 코드 리뷰
6. 브랜치 배포
7. master에 merge
