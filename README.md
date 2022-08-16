# <div align="center"> 403 Error push 오류 </div>
</br>

GitHub - Setting - Developer Setting - Token 만료 확인 - 재생성

SourceTree 원격 url 확인 - https://<토큰 값>@github.com/<사용자명>/<레포지터리명>.git

</br>

# <div align="center"> Starting No_StoryBoard </div>
</br>

1. 프로젝트 생성
2. Main.storyboard 제거
3. info.plist - Storyboard Name 삭제 ("-")
4. Project Targets - General - Deployment Info - Main interface "Main" 삭제
5. SceneDelegate.swift - windowScene 및 rootViewController 추가

</br>

# <div align="center"> Using Snapkit </div>
</br>

let view = UIView() </br>
view.snp.makeConstraints{ </br>
    $0.top.bottom.leading.trailing.equalToSuperView() </br>
    -> 한번에 여러개 가능 </br>
} 
