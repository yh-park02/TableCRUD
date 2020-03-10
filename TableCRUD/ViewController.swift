//
//  ViewController.swift
//  TableCRUD
//
//  Created by TJOEUN-304 on 2020/03/05.
//  Copyright © 2020 TJOEUN-304. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //텓스트 필드
    @IBOutlet weak var t_name: UITextField!
    
    @IBOutlet weak var t_gender: UITextField!
    
    @IBOutlet weak var t_age: UITextField!
    
    //버튼 이벤트
    @IBAction func btnClick(_ sender: Any) {
        regist()
    }
    
    //테이블 리스트의 레퍼런스
    var memberListController:MemberListController!
    
    func regist(){
        let name=t_name.text!
        let gender=t_gender.text!
        let age = Int(t_age.text!)!
    
        let member = Member(name: name, gender: gender, age: age)
        
        //배열에 담자
        memberListController.memberArray.append(member)
        print("member count is ", memberListController.memberArray.count)
        
        //테이블 뷰 데이터 갱신
        memberListController.tableView.reloadData()
        
        //등록 후 목록, 프로그래밍적으로 이동하기
        self.navigationController?.popToRootViewController(animated: true)
        
        
    }
    //회원 1명을 담을 구조체 인스턴스 생성후 배열에 탑재
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //뷰가 보여질때 한번 해놓자
        //그래야 나중에 두고두고 써먹는다.
        memberListController = self.navigationController?.viewControllers[0] as! MemberListController
        
    }
}
