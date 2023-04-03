# MVVM

<img width="450" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FOwzzZ%2FbtqARwRQICN%2FcVfDt48KVNpEZEASIjoMq0%2Fimg.png">


Model = 앱에서 사용할 데이터

Entity = 서버로부터 가져올 데이터

Repository = Entity 전달

Service = Repository를 통해 Entity -> Model 변환 (state, logic 포함한 핵심)

ViewModel = Service를 통해 Model -> viewModel 변환

ViewController = ViewModel을 통해 화면 세팅



# RIBs 

<img width="600" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FKO03S%2FbtqAYF1WAQ5%2FLOfXc3ViMwoxfWDmRsfrR0%2Fimg.png">


Interactor - Rx subscription 수행 / 상태 변경 & 데이터 저장 위치 & 다른 RIB 붙힐 위치 결정 / 

Router - Interactor를 통해 하위 RIBs의 연결 및 분리 변환 (RIBs간의 직접 연결 대신 reactive communication 

Builder - RIB의 각 구성요소를 위한 Builder 인스턴스화

Component - RIB 외부 종속성에 대한 접근 제공 / 자체 종속성 소유 / 다른 RIB에서 이에 대한 접근 제어 (부모 RIB의 Component -> 자식 RIB Builder에 주입)

Presenter(Optional) - Buisness Model을 ViewModel 또는 그 반대로 변환. 생략시 View or Interactor의 책임

View(Controller)(Optional) - UI Build / Update


Link : https://github.com/uber/RIBs


# SwiftUI

<img width="700" src="https://d33wubrfki0l68.cloudfront.net/2d7c3c8c00eb2d3c3ac126c0fe78eb958d998c89/817d0/images/swiftui-data-flow-1.png">


https://github.com/eunjin3786/SwiftUIPractice/blob/master/MD/5.%20State%20&%20Binding.md

https://zeddios.tistory.com/964


# Concurrency 


1. async throws
2. try await
3. Continuation
4. AsyncSequence / AsyncStream
5. Actor
6. Sendable


# Combine


1. Publishers - 하나 이상의 대상에게 시간이 지남에 따라 값을 방출할 수 있는 유형
2. Operators - Publisher protocol로 선언된 method이며, 선언된 Publishers와 동일하거나 새로운 Publishers로 반환
3. Subscribers - 모든 구독은 subscriber와 함께 종료됨. Subscribers는 일반적으로 방출된 값 또는 완료 이벤트를 통해 "무언가"를 하는 역할


Concurrency > 비동기, 병렬 작업을 위한 기능


Combine > 비동기 이벤트로 변경되는 값의 변화에 대응하기 위한 프레임워크


Link : https://github.com/fimuxd/Combine

