# <div align="center"> Study </div>
1. https://swiftbysundell.com/
2. https://www.hackingwithswift.com/
3. https://howtoinswift.tech/

</br>

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
</br>

# <div align="center"> MVVM </div>

<div align="center">
    <img width="450" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FOwzzZ%2FbtqARwRQICN%2FcVfDt48KVNpEZEASIjoMq0%2Fimg.png">
</div>

</br>
Model = 앱에서 사용할 데이터 </br>
Entity = 서버로부터 가져올 데이터 </br>
Repository = Entity 전달 </br>
Service = Repository를 통해 Entity -> Model 변환 (state, logic 포함한 핵심) </br>
ViewModel = Service를 통해 Model -> viewModel 변환 </br>
ViewController = ViewModel을 통해 화면 세팅 </br>

</br></br>
# <div align="center"> RIBs </div>

<div align="center">
    <img width="600" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FKO03S%2FbtqAYF1WAQ5%2FLOfXc3ViMwoxfWDmRsfrR0%2Fimg.png">
</div>

</br>
Interactor - Rx subscription 수행 / 상태 변경 & 데이터 저장 위치 & 다른 RIB 붙힐 위치 결정 / 
</br>
Router - Interactor를 통해 하위 RIBs의 연결 및 분리 변환 (RIBs간의 직접 연결 대신 reactive communication 
</br>
Builder - RIB의 각 구성요소를 위한 Builder 인스턴스화
</br>
Component - RIB 외부 종속성에 대한 접근 제공 / 자체 종속성 소유 / 다른 RIB에서 이에 대한 접근 제어 (부모 RIB의 Component -> 자식 RIB Builder에 주입)
</br>
Presenter(Optional) - Buisness Model을 ViewModel 또는 그 반대로 변환. 생략시 View or Interactor의 책임으로
</br>
View(Controller)(Optional) - UI Build / Update
</br>

</br></br>
# <div align="center"> RxSwift </div>
</br>

Rx = Reactive Extension
</br>
Observable - asynchrous sequence, 일정 기간 동안 계속해서 이벤트 생성(방출)
</br>
Operator - ObservableType과 Observable 클래스에는 복잡한 논리를 구현하기 위해 많은 메서드가 포함 - 이 메서드들을 Operator라고 부름
</br>
Schedulers - like Dispatch Queue

</br></br>
# <div align="center"> Combine </div>
</br>

1. Publishers - 하나 이상의 대상에게 시간이 지남에 따라 값을 방출할 수 있는 유형
2. Operators - Publisher protocol로 선언된 method이며, 선언된 Publishers와 동일하거나 새로운 Publishers로 반환
3. Subscribers - 모든 구독은 subscriber와 함께 종료됨. Subscribers는 일반적으로 방출된 값 또는 완료 이벤트를 통해 "무언가"를 하는 역할
