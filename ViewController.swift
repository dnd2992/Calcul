//
//  ViewController.swift
//  CalculatorApp
//
//  Created by t2023-m0115 on 6/24/24.
//
/*
import UIKit
import SnapKit

class ViewController: UIViewController {
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI() {
        view.backgroundColor = .black
        label.textColor = .white
        label.text = "0"
        label.textAlignment = .right
        label.font = UIFont.boldSystemFont(ofSize: 60)
        
        [label].forEach { view.addSubview($0) }
        
        label.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(30)
            $0.trailing.equalToSuperview().offset(-30)
            $0.top.equalToSuperview().offset(200)
            $0.height.equalTo(100)
        }
        
        func makeHorizontalStackView(_ views: [UIView]) -> UIStackView {
            let stackView = UIStackView(arrangedSubviews: views)
            stackView.axis = .horizontal
            stackView.backgroundColor = .black
            stackView.spacing = 10
            stackView.distribution = .fillEqually
            
            stackView.snp.makeConstraints { make in
                make.height.equalTo(80)
            }
            
            return stackView
        }
        
        func createButtons(count: Int, titles: [String], orangeButtons: [Int]) -> [UIButton] {
            var buttons = [UIButton]()
            for i in 0..<count {
                let button = UIButton()
                button.titleLabel?.font = .boldSystemFont(ofSize: 30)
                button.setTitle(titles[i], for: .normal)
                button.setTitleColor(.white, for: .normal)
                button.backgroundColor = orangeButtons.contains(i) ? UIColor.orange : UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
                button.layer.cornerRadius = 40
                buttons.append(button)
            }
            return buttons
        }
        
        let verticalStackView = UIStackView()
        verticalStackView.axis = .vertical
        verticalStackView.backgroundColor = .black
        verticalStackView.spacing = 10
        verticalStackView.distribution = .fillEqually
        view.addSubview(verticalStackView)
        
        verticalStackView.snp.makeConstraints {
            $0.top.equalTo(label.snp.bottom).offset(60)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(350)
        }
        let titles = ["7", "8", "9", "+", "4", "5", "6", "-", "1", "2", "3", "*", "AC", "0", "=", "/"]
        let orangeButtons = [3, 7, 11, 12, 14, 15] // 사칙연산, AC, = 버튼 인덱스
        
        let horizontalStackView1 = makeHorizontalStackView(createButtons(count: 4, titles: Array(titles[0..<4]), orangeButtons: orangeButtons))
        let horizontalStackView2 = makeHorizontalStackView(createButtons(count: 4, titles: Array(titles[4..<8]), orangeButtons: orangeButtons))
        let horizontalStackView3 = makeHorizontalStackView(createButtons(count: 4, titles: Array(titles[8..<12]), orangeButtons: orangeButtons))
        let horizontalStackView4 = makeHorizontalStackView(createButtons(count: 4, titles: Array(titles[12..<16]), orangeButtons: orangeButtons))
        
        verticalStackView.addArrangedSubview(horizontalStackView1)
        verticalStackView.addArrangedSubview(horizontalStackView2)
        verticalStackView.addArrangedSubview(horizontalStackView3)
        verticalStackView.addArrangedSubview(horizontalStackView4)
    }
}
        
        /* 아이폰 계산기 버튼 모양
         
         let titles = ["C", "+/-", "%", "/", "7", "8", "9", "X", "4", "5", "6", "-", "1", "2", "3", "+"]
         let orangeButtons = [3, 7, 11, 15]
         
        // 0, ., = 버튼 추가
        let zeroButton = UIButton()
        zeroButton.titleLabel?.font = .boldSystemFont(ofSize: 30)
        zeroButton.setTitle("0", for: .normal)
        zeroButton.setTitleColor(.white, for: .normal)
        zeroButton.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        zeroButton.layer.cornerRadius = 40
        
        let dotButton = UIButton()
        dotButton.titleLabel?.font = .boldSystemFont(ofSize: 30)
        dotButton.setTitle(".", for: .normal)
        dotButton.setTitleColor(.white, for: .normal)
        dotButton.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        dotButton.layer.cornerRadius = 40
        
        let equalButton = UIButton()
        equalButton.titleLabel?.font = .boldSystemFont(ofSize: 30)
        equalButton.setTitle("=", for: .normal)
        equalButton.setTitleColor(.white, for: .normal)
        equalButton.backgroundColor = UIColor.orange
        equalButton.layer.cornerRadius = 40
        
        let bottomStackView = UIStackView(arrangedSubviews: [zeroButton, dotButton, equalButton])
        bottomStackView.axis = .horizontal
        bottomStackView.backgroundColor = .black
        bottomStackView.spacing = 10
        bottomStackView.distribution = .equalCentering
        
        zeroButton.snp.makeConstraints { make in
            make.width.equalTo(160) // 0 버튼 너비 설정 (기본 버튼 너비의 두 배)
        }
        
        dotButton.snp.makeConstraints{ make in
            make.width.equalTo(80)}
        
        equalButton.snp.makeConstraints{ make in
            make.width.equalTo(80)}
        

        verticalStackView.addArrangedSubview(bottomStackView)
    }
}
         */
*/
// 과제버튼
import UIKit
import SnapKit

class ViewController: UIViewController {
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI() {
        view.backgroundColor = .black
        label.textColor = .white
        label.text = "0"
        label.textAlignment = .right
        label.font = UIFont.boldSystemFont(ofSize: 60)
        
        [label].forEach { view.addSubview($0) }
        
        label.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(30)
            $0.trailing.equalToSuperview().offset(-30)
            $0.top.equalToSuperview().offset(200)
            $0.height.equalTo(100)
        }
        
        func makeHorizontalStackView(_ views: [UIView]) -> UIStackView {
            let stackView = UIStackView(arrangedSubviews: views)
            stackView.axis = .horizontal
            stackView.backgroundColor = .black
            stackView.spacing = 10
            stackView.distribution = .fillEqually
            
            stackView.snp.makeConstraints { make in
                make.height.equalTo(80)
            }
            
            return stackView
        }
        
        func createButtons(titles: [String], orangeButtons: [Int]) -> [UIButton] {
            var buttons = [UIButton]()
            for i in 0..<titles.count {
                let button = UIButton()
                button.titleLabel?.font = .boldSystemFont(ofSize: 30)
                button.setTitle(titles[i], for: .normal)
                button.setTitleColor(.white, for: .normal)
                button.backgroundColor = orangeButtons.contains(i) ? UIColor.orange : UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
                button.layer.cornerRadius = 40
                buttons.append(button)
            }
            return buttons
        }
        
        let verticalStackView = UIStackView()
        verticalStackView.axis = .vertical
        verticalStackView.backgroundColor = .black
        verticalStackView.spacing = 10
        verticalStackView.distribution = .fillEqually
        view.addSubview(verticalStackView)
        
        verticalStackView.snp.makeConstraints {
            $0.top.equalTo(label.snp.bottom).offset(60)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(350)
        }
        
        let titles = ["7", "8", "9", "+", "4", "5", "6", "-", "1", "2", "3", "*", "AC", "0", "=", "/"]
        let orangeButtons = [3, 7, 11, 12, 14, 15, 16] // 사칙연산, AC, = 버튼 인덱스

        // 버튼 생성
        let buttons = createButtons(titles: titles, orangeButtons: orangeButtons)
        
        // 스택뷰 배열 생성
        let horizontalStackView1 = makeHorizontalStackView(Array(buttons[0..<4]))
        let horizontalStackView2 = makeHorizontalStackView(Array(buttons[4..<8]))
        let horizontalStackView3 = makeHorizontalStackView(Array(buttons[8..<12]))
        let horizontalStackView4 = makeHorizontalStackView(Array(buttons[12..<16]))
        
        // 수직 스택뷰에 수평 스택뷰 추가
        verticalStackView.addArrangedSubview(horizontalStackView1)
        verticalStackView.addArrangedSubview(horizontalStackView2)
        verticalStackView.addArrangedSubview(horizontalStackView3)
        verticalStackView.addArrangedSubview(horizontalStackView4)
    }
}
