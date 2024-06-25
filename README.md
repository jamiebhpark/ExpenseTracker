# Expense_Tracker_App

---

### 프로젝트 개요

ExpenseTracker는 사용자가 지출을 기록하고 분석할 수 있는 iOS 애플리케이션입니다. 이 프로젝트는 Swift와 SwiftUI를 사용하여 개발되었으며, Core Data를 통한 로컬 데이터 저장, Charts를 통한 데이터 시각화, Local Notifications을 통한 알림 기능을 구현했습니다.

### 프로젝트 후기

이 프로젝트를 통해 Swift와 SwiftUI, Core Data, 그리고 Charts를 사용하여 복잡한 데이터 관리와 시각화를 구현하는 방법을 학습했습니다. 특히, 사용자 인터페이스 디자인과 데이터 시각화 부분에서 많은 경험을 쌓을 수 있었으며, 이를 통해 실무에서의 적용 가능성을 높였습니다.

---

### 주요 기능

- **지출 기록 및 분류**: 사용자는 다양한 카테고리의 지출을 기록하고, 날짜별로 저장할 수 있습니다.
- **월별 지출 내역 그래프 시각화**: 사용자는 월별 지출 내역을 바 차트로 시각화하여 확인할 수 있습니다.
- **카테고리별 지출 분석**: Pie Chart를 통해 카테고리별 지출 비율을 확인할 수 있습니다.
- **예산 초과 알림**: 설정된 예산을 초과하면 알림을 통해 사용자에게 경고 메시지를 제공합니다.

---

### 기술 스택

- **Swift**: iOS 앱 개발을 위한 프로그래밍 언어.
- **SwiftUI**: 선언적인 방식으로 사용자 인터페이스를 구축할 수 있는 애플의 UI 프레임워크.
- **Core Data**: 데이터 영구 저장 및 관리를 위한 애플의 데이터 관리 프레임워크.
- **Charts**: 데이터를 시각화하기 위한 라이브러리.
- **UserNotifications**: 로컬 알림을 관리하기 위한 프레임워크.

---

### 구현 과정

1. **프로젝트 설정 및 초기화**: Xcode에서 프로젝트를 생성하고 Core Data를 설정하여 데이터 관리를 구현했습니다.
2. **지출 데이터 모델링**: Expense 엔티티를 생성하여 지출 항목을 저장할 수 있도록 했습니다.
3. **지출 데이터 기록 및 저장**: 사용자가 지출을 입력하고 저장할 수 있는 폼을 구현했습니다.
4. **데이터 시각화**: Charts 라이브러리를 사용하여 바 차트와 파이 차트를 구현했습니다.
5. **알림 기능**: 예산을 초과할 경우 사용자에게 알림을 보내는 기능을 추가했습니다.

---

### 스크린샷

1. 메인 화면
    
    ![스크린샷 2024-06-12 오후 1.50.19.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/f9f35de7-0091-4a79-819a-501ef9435828/0bb0f907-aef6-4a19-8272-006a7b7edc61/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA_2024-06-12_%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE_1.50.19.png)
    
2. 지출 추가 화면
    
    ![스크린샷 2024-06-12 오후 1.51.07.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/f9f35de7-0091-4a79-819a-501ef9435828/6034ce89-d2ae-4d9d-b323-87a15c6bf500/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA_2024-06-12_%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE_1.51.07.png)
    

1. 바 차트 화면
    
    ![스크린샷 2024-06-12 오후 1.51.13.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/f9f35de7-0091-4a79-819a-501ef9435828/00c3a8ac-ef37-4cae-be35-9e3bfa729109/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA_2024-06-12_%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE_1.51.13.png)
    
2. 파이 차트 화면
    
    ![스크린샷 2024-06-12 오후 1.51.17.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/f9f35de7-0091-4a79-819a-501ef9435828/c34ec7eb-834a-4da8-a09a-c688a4dbc113/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA_2024-06-12_%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE_1.51.17.png)
    
    ---
    
    ### 주요 코드 스니펫 및 상세 설명
    
    **1. 지출 저장**
    
    ```swift
    func saveExpense() {
        let newExpense = Expense(context: viewContext)
        newExpense.amount = Double(amount) ?? 0.0
        newExpense.category = category
        newExpense.date = Date()
        do {
            try viewContext.save()
            if newExpense.amount > 100 {
                LocalNotificationsManager.shared.scheduleNotification(title: "Budget Alert", body: "You have exceeded your budget!")
            }
        } catch {
            // Error handling
        }
    }
    
    ```
    
    **상세 설명**:
    
    - **newExpense 초기화**: `Expense` 엔티티의 새 인스턴스를 생성하여 `viewContext`에 추가합니다. `viewContext`는 Core Data의 관리 객체 컨텍스트로, 데이터를 영구 저장할 수 있습니다.
    - **속성 설정**: `amount`, `category`, `date` 속성을 설정합니다. `amount`는 사용자가 입력한 문자열을 `Double`로 변환하여 저장하며, 변환 실패 시 0.0을 기본값으로 사용합니다. `category`는 사용자가 입력한 문자열을 저장하고, `date`는 현재 날짜와 시간을 저장합니다.
    - **저장 시도**: `viewContext.save()`를 호출하여 변경 사항을 영구 저장소에 커밋합니다. 이 과정에서 오류가 발생하면 catch 블록에서 오류를 처리합니다.
    - **예산 초과 알림**: 지출 금액이 100을 초과하면 `LocalNotificationsManager`를 사용하여 예산 초과 알림을 예약합니다.
    
    **2. 지출 바 차트**
    
    ```swift
    import SwiftUI
    import Charts
    
    struct BarChartView: View {
        var data: [ExpenseItem]
        var body: some View {
            Chart {
                ForEach(data) { item in
                    BarMark(
                        x: .value("Category", item.category),
                        y: .value("Amount", item.amount)
                    )
                    .foregroundStyle(by: .value("Category", item.category))
                }
            }
            .frame(height: 300)
            .padding()
            .navigationTitle("Bar Chart")
        }
    }
    
    ```
    
    **상세 설명**:
    
    - **데이터 소스**: `data` 배열은 `ExpenseItem` 구조체의 인스턴스로 구성되어 있으며, 각 인스턴스는 카테고리와 금액을 포함합니다.
    - **Chart 구성**: `Chart` 뷰를 사용하여 데이터를 시각화합니다. `ForEach` 루프를 사용하여 `data` 배열의 각 항목을 반복합니다.
    - **BarMark**: 각 지출 항목을 `BarMark`로 표시합니다. `x` 축에는 카테고리를, `y` 축에는 지출 금액을 표시합니다.
    - **색상 스타일**: `foregroundStyle(by:)` 수정자를 사용하여 각 바의 색상을 카테고리별로 다르게 설정합니다.
    - **레이아웃 설정**: 차트의 높이를 300 포인트로 설정하고, 패딩을 추가하여 레이아웃을 조정합니다. `navigationTitle`을 설정하여 화면 상단에 제목을 표시합니다.
    
    **3. 지출 파이 차트**
    
    ```swift
    import SwiftUI
    import Charts
    
    struct PieChartView: View {
        var data: [ExpenseItem]
        var body: some View {
            Chart(data) { item in
                SectorMark(
                    angle: .value("Amount", item.amount),
                    innerRadius: .ratio(0.5),
                    angularInset: 2
                )
                .foregroundStyle(by: .value("Category", item.category))
                .annotation(position: .overlay, alignment: .center) {
                    Text("\(item.amount, specifier: "%.2f")")
                        .foregroundColor(.white)
                        .font(.caption)
                }
            }
            .frame(height: 300)
            .padding()
            .navigationTitle("Pie Chart")
        }
    }
    
    ```
    
    **상세 설명**:
    
    - **데이터 소스**: `data` 배열은 `ExpenseItem` 구조체의 인스턴스로 구성되어 있으며, 각 인스턴스는 카테고리와 금액을 포함합니다.
    - **Chart 구성**: `Chart` 뷰를 사용하여 데이터를 시각화합니다.
    - **SectorMark**: 각 지출 항목을 파이 차트의 섹터로 표시합니다. `angle`은 각 섹터의 각도를 지출 금액에 따라 설정하며, `innerRadius`는 도넛 형태의 차트를 만들기 위해 내부 반지름을 설정합니다. `angularInset`은 각 섹터 사이의 간격을 설정합니다.
    - **색상 스타일**: `foregroundStyle(by:)` 수정자를 사용하여 각 섹터의 색상을 카테고리별로 다르게 설정합니다.
    - **annotation**: `annotation` 수정자를 사용하여 각 섹터의 중심에 지출 금액을 텍스트로 표시합니다. 텍스트는 흰색으로 설정하고, 소수점 이하 두 자리까지 표시합니다.
    - **레이아웃 설정**: 차트의 높이를 300 포인트로 설정하고, 패딩을 추가하여 레이아웃을 조정합니다. `navigationTitle`을 설정하여 화면 상단에 제목을 표시합니다.
