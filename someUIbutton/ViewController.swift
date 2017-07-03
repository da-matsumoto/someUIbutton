//
//  ViewController.swift
//  someUIbutton
//
//  Created by 松本大佑 on 2017/07/03.
//  Copyright © 2017年 daisuke.matsumoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  private var myInfoDarkButton: UIButton!
  private var myInfoLightButton: UIButton!
  private var myAddButton: UIButton!
  private var myDetailButton: UIButton!
  private var mySystemButton: UIButton!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    //ボタンを作成
    myInfoDarkButton = UIButton(type: .infoDark)
    myInfoLightButton = UIButton(type: .infoLight)
    myAddButton = UIButton(type: .contactAdd)
    myDetailButton = UIButton(type: .detailDisclosure)
    mySystemButton = UIButton(type: .system)
    
    //ボタンの位置を指定する
    let posX: CGFloat = self.view.frame.width/2
    myInfoDarkButton.layer.position = CGPoint(x: posX, y: 50)
    myInfoLightButton.layer.position = CGPoint(x: posX, y: 100)
    myAddButton.layer.position = CGPoint(x: posX, y: 150)
    myDetailButton.layer.position = CGPoint(x: posX, y: 200)
    
    //systemボタンのサイズ
    let sWidth: CGFloat = 200
    let sHeight: CGFloat = 50
    //systemボタンの配置するx,y座標
    let sposX: CGFloat = self.view.frame.width/2 - sWidth/2
    let sposY: CGFloat = 250
    
    //systemボタンに配置するx,y座標とサイズを指定
    mySystemButton.frame = CGRect(x: sposX, y: sposY, width: sWidth, height: sHeight)
    
    //systemボタンにタイトルを設定する
    mySystemButton.setTitle("MySystemButton", for: .normal)
    
    
    //タグを設定する
    myInfoDarkButton.tag = 1
    myInfoLightButton.tag = 2
    myAddButton.tag = 3
    myDetailButton.tag = 4
    mySystemButton.tag = 5

    
    //イベントを追加する
    myInfoDarkButton.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchDown)
    myInfoLightButton.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchDown)
    myAddButton.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchDown)
    myDetailButton.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchDown)
    mySystemButton.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchDown)
    
    //ボタンをViewに追加する
    self.view.addSubview(myInfoDarkButton)
    self.view.addSubview(myInfoLightButton)
    self.view.addSubview(myAddButton)
    self.view.addSubview(myDetailButton)
    self.view.addSubview(mySystemButton)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  internal func onClickMyButton(sender: UIButton) {
    print("onClickMyButton:")
    print("sender.currentTitile: \(sender.currentTitle)")
    print("sender.tag \(sender.tag)")
  }


}

