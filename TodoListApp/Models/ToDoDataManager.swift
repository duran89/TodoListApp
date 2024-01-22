//
//  ToDoDataManager.swift
//  TodoListApp
//
//  Created by 권정근 on 1/23/24.
//

import Foundation


class ToDoDataManager {
    
    private var ToDoDataArray: [ToDo] = []
    
    func makeToDoDataArray() {
        ToDoDataArray = [
            ToDo(Title: "빨래하기", Description: "드라이할 옷은 따로 구분할 것"),
            ToDo(Title: "장 보기", Description: "고기, 물, 야채 살 것"),
            ToDo(Title: "병원 다녀오기", Description: "병원가서 물어볼 것 확인할 것"),
            ToDo(Title: "친구 만나기", Description: "저녁 7시 약속"),
            ToDo(Title: "영화 보기", Description: "영화관 가기 "),
        ]
    }
    
    func getToDoDataArray() -> [ToDo] {
        return ToDoDataArray
    }
}
