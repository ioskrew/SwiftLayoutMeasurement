//
//  NativeApiView.swift
//  SwiftLayout-Performance-Test
//
//  Created by aiden_h on 2022/03/19.
//

import UIKit
import SnapKit

class SnapKitView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        let date = Date()
        loadView()
        print("NativeApiView loadView time: \(-date.timeIntervalSinceNow)")
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadView()
    }

    func loadView() {
        self.backgroundColor = .systemBackground

        let headerView = UIView()
        let headerLabel = UILabel()
        headerLabel.font = UIFont.systemFont(ofSize: 23.0, weight: .semibold)
        headerLabel.text = "Hello SwiftLayout"
        headerLabel.textColor = .label
        let headerButton0 = UIButton()
        headerButton0.tintColor = .label
        headerButton0.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        let headerButton1 = UIButton()
        headerButton1.tintColor = .label
        headerButton1.setImage(UIImage(systemName: "qrcode.viewfinder"), for: .normal)
        let headerButton2 = UIButton()
        headerButton2.tintColor = .label
        headerButton2.setImage(UIImage(systemName: "music.note"), for: .normal)
        let headerButton3 = UIButton()
        headerButton3.tintColor = .label
        headerButton3.setImage(UIImage(systemName: "gearshape"), for: .normal)
        headerButton3.contentMode = .scaleAspectFit

        let walletView = UIView()
        walletView.backgroundColor = .systemBrown
        let walletHeaderView = UIView()
        let walletHeaderTitle = UILabel()
        walletHeaderTitle.font = UIFont.systemFont(ofSize: 21.0, weight: .medium)
        walletHeaderTitle.text = "Wallet"
        walletHeaderTitle.textColor = .black
        let walletHeaderTitleArrow = UIImageView()
        walletHeaderTitleArrow.tintColor = .separator
        walletHeaderTitleArrow.image = UIImage(systemName: "chevron.right")
        walletHeaderTitleArrow.contentMode = .scaleAspectFit
        let walletHeaderCertificationButton = UIButton()
        walletHeaderCertificationButton.tintColor = .black
        walletHeaderCertificationButton.setTitleColor(.black, for: .normal)
        walletHeaderCertificationButton.setImage(UIImage(systemName: "lock.shield"), for: .normal)
        walletHeaderCertificationButton.setTitle("Certification", for: .normal)
        walletHeaderCertificationButton.titleLabel?.font = UIFont.systemFont(ofSize: 14.0, weight: .medium)
        let walletHeaderButtonSeparator = UIView()
        walletHeaderButtonSeparator.alpha = 0.5
        walletHeaderButtonSeparator.backgroundColor = .separator
        let walletHeaderQRCheckinButton = UIButton()
        walletHeaderQRCheckinButton.tintColor = .black
        walletHeaderQRCheckinButton.setTitleColor(.black, for: .normal)
        walletHeaderQRCheckinButton.setImage(UIImage(systemName: "qrcode"), for: .normal)
        walletHeaderQRCheckinButton.setTitle("QR Check in", for: .normal)
        walletHeaderQRCheckinButton.titleLabel?.font = UIFont.systemFont(ofSize: 14.0, weight: .medium)
        let walletNoticeView = UIView()
        walletNoticeView.backgroundColor = .white
        let walletNoticeIcon = UIImageView()
        walletNoticeIcon.tintColor = .black
        walletNoticeIcon.image = UIImage(systemName: "qrcode")
        walletNoticeIcon.contentMode = .scaleAspectFit
        let walletNoticeTitle = UILabel()
        walletNoticeTitle.font = UIFont.systemFont(ofSize: 15.0, weight: .regular)
        walletNoticeTitle.text = "Notice"
        walletNoticeTitle.textColor = .black
        let walletNoticeArrow = UIImageView()
        walletNoticeArrow.tintColor = .black
        walletNoticeArrow.image = UIImage(systemName: "chevron.right")
        walletNoticeArrow.contentMode = .scaleAspectFit
        let walletPayView = UIView()
        let walletPayIcon = UIImageView()
        walletPayIcon.tintColor = .black
        walletPayIcon.image = UIImage(systemName: "applelogo")
        walletPayIcon.contentMode = .scaleAspectFit
        let walletPayTitle = UILabel()
        walletPayTitle.font = UIFont.systemFont(ofSize: 16.0, weight: .medium)
        walletPayTitle.text = "pay"
        walletPayTitle.textColor = .black
        let walletPayBalance = UILabel()
        walletPayBalance.font = UIFont.systemFont(ofSize: 14.0, weight: .regular)
        walletPayBalance.text = "$ 235,711.13"
        walletPayBalance.textColor = .black
        let walletPayTransferButton = UIButton()
        walletPayTransferButton.tintColor = .black
        walletPayTransferButton.setTitleColor(.black, for: .normal)
        walletPayTransferButton.setTitle("transfer", for: .normal)
        walletPayTransferButton.titleLabel?.font = UIFont.systemFont(ofSize: 14.0, weight: .regular)
        let walletPayButtonSeparator0 = UIView()
        walletPayButtonSeparator0.backgroundColor = .separator
        let walletPayPaymentButton = UIButton()
        walletPayPaymentButton.tintColor = .black
        walletPayPaymentButton.setTitleColor(.black, for: .normal)
        walletPayPaymentButton.setTitle("payment", for: .normal)
        walletPayPaymentButton.titleLabel?.font = UIFont.systemFont(ofSize: 14.0, weight: .regular)
        let walletPayButtonSeparator1 = UIView()
        walletPayButtonSeparator1.backgroundColor = .separator
        let walletPayAssetsButton = UIButton()
        walletPayAssetsButton.tintColor = .black
        walletPayAssetsButton.setTitleColor(.black, for: .normal)
        walletPayAssetsButton.setTitle("assets", for: .normal)
        walletPayAssetsButton.titleLabel?.font = UIFont.systemFont(ofSize: 14.0, weight: .regular)
        let walletPayPurchasesButton = UIButton()
        walletPayPurchasesButton.tintColor = .black
        walletPayPurchasesButton.setTitleColor(.black, for: .normal)
        walletPayPurchasesButton.setImage(UIImage(systemName: "cart"), for: .normal)
        walletPayPurchasesButton.setTitle(" Purchases", for: .normal)
        walletPayPurchasesButton.titleLabel?.font = UIFont.systemFont(ofSize: 15.0, weight: .regular)

        let serviceList0View = UIView()
        let serviceItem0 = UIView()
        let serviceItem0Image = UIImageView()
        serviceItem0Image.tintColor = .label
        serviceItem0Image.image = UIImage(systemName: "envelope")
        serviceItem0Image.contentMode = .scaleAspectFit
        let tmpa668d0UILabel = UILabel()
        tmpa668d0UILabel.font = UIFont.systemFont(ofSize: 12.0, weight: .regular)
        tmpa668d0UILabel.text = "Mail"
        tmpa668d0UILabel.textColor = .label
        let tmpa2fb30UIView = UIView()
        tmpa2fb30UIView.backgroundColor = .systemRed
        let serviceItem1 = UIView()
        let serviceItem1Image = UIImageView()
        serviceItem1Image.tintColor = .label
        serviceItem1Image.image = UIImage(systemName: "calendar")
        serviceItem1Image.contentMode = .scaleAspectFit
        let tmpa67f30UILabel = UILabel()
        tmpa67f30UILabel.font = UIFont.systemFont(ofSize: 12.0, weight: .regular)
        tmpa67f30UILabel.text = "Calendar"
        tmpa67f30UILabel.textColor = .label
        let tmpa68210UIView = UIView()
        tmpa68210UIView.backgroundColor = .systemRed
        let serviceItem2 = UIView()
        let serviceItem2Image = UIImageView()
        serviceItem2Image.tintColor = .label
        serviceItem2Image.image = UIImage(systemName: "folder")
        serviceItem2Image.contentMode = .scaleAspectFit
        let tmpa6a080UILabel = UILabel()
        tmpa6a080UILabel.font = UIFont.systemFont(ofSize: 12.0, weight: .regular)
        tmpa6a080UILabel.text = "Folder"
        tmpa6a080UILabel.textColor = .label
        let tmpa6a360UIView = UIView()
        tmpa6a360UIView.backgroundColor = .systemRed
        let serviceItem3 = UIView()
        let serviceItem3Image = UIImageView()
        serviceItem3Image.tintColor = .label
        serviceItem3Image.image = UIImage(systemName: "puzzlepiece")
        serviceItem3Image.contentMode = .scaleAspectFit
        let tmpa6dfa0UILabel = UILabel()
        tmpa6dfa0UILabel.font = UIFont.systemFont(ofSize: 12.0, weight: .regular)
        tmpa6dfa0UILabel.text = "Puzzle"
        tmpa6dfa0UILabel.textColor = .label
        let tmpa4e8c0UIView = UIView()
        tmpa4e8c0UIView.backgroundColor = .systemRed

        let serviceList1View = UIView()
        let serviceItem4 = UIView()
        let serviceItem4Image = UIImageView()
        serviceItem4Image.tintColor = .label
        serviceItem4Image.image = UIImage(systemName: "envelope")
        serviceItem4Image.contentMode = .scaleAspectFit
        let tmpa6e290UILabel = UILabel()
        tmpa6e290UILabel.font = UIFont.systemFont(ofSize: 12.0, weight: .regular)
        tmpa6e290UILabel.text = "Mail"
        tmpa6e290UILabel.textColor = .label
        let tmpa31380UIView = UIView()
        tmpa31380UIView.backgroundColor = .systemRed
        let serviceItem5 = UIView()
        let serviceItem5Image = UIImageView()
        serviceItem5Image.tintColor = .label
        serviceItem5Image.image = UIImage(systemName: "calendar")
        serviceItem5Image.contentMode = .scaleAspectFit
        let tmpa6e570UILabel = UILabel()
        tmpa6e570UILabel.font = UIFont.systemFont(ofSize: 12.0, weight: .regular)
        tmpa6e570UILabel.text = "Calendar"
        tmpa6e570UILabel.textColor = .label
        let tmpa342e0UIView = UIView()
        tmpa342e0UIView.backgroundColor = .systemRed
        let serviceItem6 = UIView()
        let serviceItem6Image = UIImageView()
        serviceItem6Image.tintColor = .label
        serviceItem6Image.image = UIImage(systemName: "folder")
        serviceItem6Image.contentMode = .scaleAspectFit
        let tmpa6e850UILabel = UILabel()
        tmpa6e850UILabel.font = UIFont.systemFont(ofSize: 12.0, weight: .regular)
        tmpa6e850UILabel.text = "Folder"
        tmpa6e850UILabel.textColor = .label
        let tmpa517f0UIView = UIView()
        tmpa517f0UIView.backgroundColor = .systemRed
        let serviceItem7 = UIView()
        let serviceItem7Image = UIImageView()
        serviceItem7Image.tintColor = .label
        serviceItem7Image.image = UIImage(systemName: "puzzlepiece")
        serviceItem7Image.contentMode = .scaleAspectFit
        let tmpa6eb30UILabel = UILabel()
        tmpa6eb30UILabel.font = UIFont.systemFont(ofSize: 12.0, weight: .regular)
        tmpa6eb30UILabel.text = "Puzzle"
        tmpa6eb30UILabel.textColor = .label
        let tmpa581e0UIView = UIView()
        tmpa581e0UIView.backgroundColor = .systemRed

        let introductionView = UIView()
        introductionView.backgroundColor = .separator
        let introductionImage = UIImageView()
        introductionImage.tintColor = .init(red: 240/255, green: 80/255, blue: 58/255, alpha: 1)
        introductionImage.image = UIImage(systemName: "square.stack.3d.down.forward")
        introductionImage.contentMode = .scaleAspectFit
        let introductionTitle = UILabel()
        introductionTitle.font = UIFont.systemFont(ofSize: 20.0, weight: .semibold)
        introductionTitle.text = "Hello SwiftLayout"
        introductionTitle.textColor = .label
        let introductionDescription = UILabel()
        introductionDescription.font = UIFont.systemFont(ofSize: 12.0, weight: .regular)
        introductionDescription.numberOfLines = 0
        introductionDescription.text = "SwiftLayout is a DSL library that composes views and creates constraints through a more swifty syntax when using UIKit/AppKit."
        introductionDescription.textColor = .label

        let newsView = UIView()
        let newsTitle = UILabel()
        newsTitle.font = UIFont.systemFont(ofSize: 20.0, weight: .semibold)
        newsTitle.text = "News"
        newsTitle.textColor = .label
        let newsTopic1 = UIView()
        newsTopic1.backgroundColor = .separator
        let newsTopic1Title = UILabel()
        newsTopic1Title.font = UIFont.systemFont(ofSize: 21.0, weight: .semibold)
        newsTopic1Title.text = "Topic 1"
        newsTopic1Title.textColor = .label
        let newsTopic1Description = UILabel()
        newsTopic1Description.font = UIFont.systemFont(ofSize: 10.0, weight: .regular)
        newsTopic1Description.numberOfLines = 0
        newsTopic1Description.text = "DSL features for addSubview and removeFromSuperview DSL features for NSLayoutConstraint, NSLayoutAnchor and activation"
        newsTopic1Description.textColor = .label
        let tmpa71a50UIImageView = UIImageView()
        tmpa71a50UIImageView.tintColor = .label
        tmpa71a50UIImageView.image = UIImage(systemName: "newspaper")
        tmpa71a50UIImageView.contentMode = .scaleAspectFit
        let newsTopic2 = UIView()
        newsTopic2.backgroundColor = .separator
        let newsTopic2Title = UILabel()
        newsTopic2Title.font = UIFont.systemFont(ofSize: 21.0, weight: .semibold)
        newsTopic2Title.text = "Topic 2"
        newsTopic2Title.textColor = .label
        let newsTopic2Description = UILabel()
        newsTopic2Description.font = UIFont.systemFont(ofSize: 10.0, weight: .regular)
        newsTopic2Description.numberOfLines = 0
        newsTopic2Description.text = "using conditional and loop statements like if else, swift case, for in view hierarhcy and autolayout constraints."
        newsTopic2Description.textColor = .label
        let tmpa72bb0UIImageView = UIImageView()
        tmpa72bb0UIImageView.tintColor = .label
        tmpa72bb0UIImageView.image = UIImage(systemName: "doc.text")
        tmpa72bb0UIImageView.contentMode = .scaleAspectFit

        let optionView = UIView()
        let optionRow0 = UIView()
        let tmpa74120UILabel = UILabel()
        tmpa74120UILabel.font = UIFont.systemFont(ofSize: 17.0, weight: .regular)
        tmpa74120UILabel.text = "Option 1"
        tmpa74120UILabel.textColor = .label
        let tmpa74620UISwitch = UISwitch()
        let tmp805290UIView = UIView()
        tmp805290UIView.backgroundColor = .separator
        let optionRow1 = UIView()
        let tmp80bc70UILabel = UILabel()
        tmp80bc70UILabel.font = UIFont.systemFont(ofSize: 17.0, weight: .regular)
        tmp80bc70UILabel.text = "Option 2"
        tmp80bc70UILabel.textColor = .label
        let tmp808e30UISwitch = UISwitch()
        let tmp811f90UIView = UIView()
        tmp811f90UIView.backgroundColor = .separator

        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        headerButton0.translatesAutoresizingMaskIntoConstraints = false
        headerButton1.translatesAutoresizingMaskIntoConstraints = false
        headerButton2.translatesAutoresizingMaskIntoConstraints = false
        headerButton3.translatesAutoresizingMaskIntoConstraints = false
        walletView.translatesAutoresizingMaskIntoConstraints = false
        walletHeaderView.translatesAutoresizingMaskIntoConstraints = false
        walletHeaderTitle.translatesAutoresizingMaskIntoConstraints = false
        walletHeaderTitleArrow.translatesAutoresizingMaskIntoConstraints = false
        walletHeaderCertificationButton.translatesAutoresizingMaskIntoConstraints = false
        walletHeaderButtonSeparator.translatesAutoresizingMaskIntoConstraints = false
        walletHeaderQRCheckinButton.translatesAutoresizingMaskIntoConstraints = false
        walletNoticeView.translatesAutoresizingMaskIntoConstraints = false
        walletNoticeIcon.translatesAutoresizingMaskIntoConstraints = false
        walletNoticeTitle.translatesAutoresizingMaskIntoConstraints = false
        walletNoticeArrow.translatesAutoresizingMaskIntoConstraints = false
        walletPayView.translatesAutoresizingMaskIntoConstraints = false
        walletPayIcon.translatesAutoresizingMaskIntoConstraints = false
        walletPayTitle.translatesAutoresizingMaskIntoConstraints = false
        walletPayBalance.translatesAutoresizingMaskIntoConstraints = false
        walletPayTransferButton.translatesAutoresizingMaskIntoConstraints = false
        walletPayButtonSeparator0.translatesAutoresizingMaskIntoConstraints = false
        walletPayPaymentButton.translatesAutoresizingMaskIntoConstraints = false
        walletPayButtonSeparator1.translatesAutoresizingMaskIntoConstraints = false
        walletPayAssetsButton.translatesAutoresizingMaskIntoConstraints = false
        walletPayPurchasesButton.translatesAutoresizingMaskIntoConstraints = false
        serviceList0View.translatesAutoresizingMaskIntoConstraints = false
        serviceItem0.translatesAutoresizingMaskIntoConstraints = false
        serviceItem0Image.translatesAutoresizingMaskIntoConstraints = false
        tmpa668d0UILabel.translatesAutoresizingMaskIntoConstraints = false
        tmpa2fb30UIView.translatesAutoresizingMaskIntoConstraints = false
        serviceItem1.translatesAutoresizingMaskIntoConstraints = false
        serviceItem1Image.translatesAutoresizingMaskIntoConstraints = false
        tmpa67f30UILabel.translatesAutoresizingMaskIntoConstraints = false
        tmpa68210UIView.translatesAutoresizingMaskIntoConstraints = false
        serviceItem2.translatesAutoresizingMaskIntoConstraints = false
        serviceItem2Image.translatesAutoresizingMaskIntoConstraints = false
        tmpa6a080UILabel.translatesAutoresizingMaskIntoConstraints = false
        tmpa6a360UIView.translatesAutoresizingMaskIntoConstraints = false
        serviceItem3.translatesAutoresizingMaskIntoConstraints = false
        serviceItem3Image.translatesAutoresizingMaskIntoConstraints = false
        tmpa6dfa0UILabel.translatesAutoresizingMaskIntoConstraints = false
        tmpa4e8c0UIView.translatesAutoresizingMaskIntoConstraints = false
        serviceList1View.translatesAutoresizingMaskIntoConstraints = false
        serviceItem4.translatesAutoresizingMaskIntoConstraints = false
        serviceItem4Image.translatesAutoresizingMaskIntoConstraints = false
        tmpa6e290UILabel.translatesAutoresizingMaskIntoConstraints = false
        tmpa31380UIView.translatesAutoresizingMaskIntoConstraints = false
        serviceItem5.translatesAutoresizingMaskIntoConstraints = false
        serviceItem5Image.translatesAutoresizingMaskIntoConstraints = false
        tmpa6e570UILabel.translatesAutoresizingMaskIntoConstraints = false
        tmpa342e0UIView.translatesAutoresizingMaskIntoConstraints = false
        serviceItem6.translatesAutoresizingMaskIntoConstraints = false
        serviceItem6Image.translatesAutoresizingMaskIntoConstraints = false
        tmpa6e850UILabel.translatesAutoresizingMaskIntoConstraints = false
        tmpa517f0UIView.translatesAutoresizingMaskIntoConstraints = false
        serviceItem7.translatesAutoresizingMaskIntoConstraints = false
        serviceItem7Image.translatesAutoresizingMaskIntoConstraints = false
        tmpa6eb30UILabel.translatesAutoresizingMaskIntoConstraints = false
        tmpa581e0UIView.translatesAutoresizingMaskIntoConstraints = false
        introductionView.translatesAutoresizingMaskIntoConstraints = false
        introductionImage.translatesAutoresizingMaskIntoConstraints = false
        introductionTitle.translatesAutoresizingMaskIntoConstraints = false
        introductionDescription.translatesAutoresizingMaskIntoConstraints = false
        newsView.translatesAutoresizingMaskIntoConstraints = false
        newsTitle.translatesAutoresizingMaskIntoConstraints = false
        newsTopic1.translatesAutoresizingMaskIntoConstraints = false
        newsTopic1Title.translatesAutoresizingMaskIntoConstraints = false
        newsTopic1Description.translatesAutoresizingMaskIntoConstraints = false
        tmpa71a50UIImageView.translatesAutoresizingMaskIntoConstraints = false
        newsTopic2.translatesAutoresizingMaskIntoConstraints = false
        newsTopic2Title.translatesAutoresizingMaskIntoConstraints = false
        newsTopic2Description.translatesAutoresizingMaskIntoConstraints = false
        tmpa72bb0UIImageView.translatesAutoresizingMaskIntoConstraints = false
        optionView.translatesAutoresizingMaskIntoConstraints = false
        optionRow0.translatesAutoresizingMaskIntoConstraints = false
        tmpa74120UILabel.translatesAutoresizingMaskIntoConstraints = false
        tmpa74620UISwitch.translatesAutoresizingMaskIntoConstraints = false
        tmp805290UIView.translatesAutoresizingMaskIntoConstraints = false
        optionRow1.translatesAutoresizingMaskIntoConstraints = false
        tmp80bc70UILabel.translatesAutoresizingMaskIntoConstraints = false
        tmp808e30UISwitch.translatesAutoresizingMaskIntoConstraints = false
        tmp811f90UIView.translatesAutoresizingMaskIntoConstraints = false

        self.addSubview(headerView)
        headerView.addSubview(headerLabel)
        headerView.addSubview(headerButton0)
        headerView.addSubview(headerButton1)
        headerView.addSubview(headerButton2)
        headerView.addSubview(headerButton3)
        self.addSubview(walletView)
        walletView.addSubview(walletHeaderView)
        walletHeaderView.addSubview(walletHeaderTitle)
        walletHeaderView.addSubview(walletHeaderTitleArrow)
        walletHeaderView.addSubview(walletHeaderCertificationButton)
        walletHeaderView.addSubview(walletHeaderButtonSeparator)
        walletHeaderView.addSubview(walletHeaderQRCheckinButton)
        walletView.addSubview(walletNoticeView)
        walletNoticeView.addSubview(walletNoticeIcon)
        walletNoticeView.addSubview(walletNoticeTitle)
        walletNoticeView.addSubview(walletNoticeArrow)
        walletView.addSubview(walletPayView)
        walletPayView.addSubview(walletPayIcon)
        walletPayView.addSubview(walletPayTitle)
        walletPayView.addSubview(walletPayBalance)
        walletPayView.addSubview(walletPayTransferButton)
        walletPayView.addSubview(walletPayButtonSeparator0)
        walletPayView.addSubview(walletPayPaymentButton)
        walletPayView.addSubview(walletPayButtonSeparator1)
        walletPayView.addSubview(walletPayAssetsButton)
        walletPayView.addSubview(walletPayPurchasesButton)
        self.addSubview(serviceList0View)
        serviceList0View.addSubview(serviceItem0)
        serviceItem0.addSubview(serviceItem0Image)
        serviceItem0.addSubview(tmpa668d0UILabel)
        serviceItem0.addSubview(tmpa2fb30UIView)
        serviceList0View.addSubview(serviceItem1)
        serviceItem1.addSubview(serviceItem1Image)
        serviceItem1.addSubview(tmpa67f30UILabel)
        serviceItem1.addSubview(tmpa68210UIView)
        serviceList0View.addSubview(serviceItem2)
        serviceItem2.addSubview(serviceItem2Image)
        serviceItem2.addSubview(tmpa6a080UILabel)
        serviceItem2.addSubview(tmpa6a360UIView)
        serviceList0View.addSubview(serviceItem3)
        serviceItem3.addSubview(serviceItem3Image)
        serviceItem3.addSubview(tmpa6dfa0UILabel)
        serviceItem3.addSubview(tmpa4e8c0UIView)
        self.addSubview(serviceList1View)
        serviceList1View.addSubview(serviceItem4)
        serviceItem4.addSubview(serviceItem4Image)
        serviceItem4.addSubview(tmpa6e290UILabel)
        serviceItem4.addSubview(tmpa31380UIView)
        serviceList1View.addSubview(serviceItem5)
        serviceItem5.addSubview(serviceItem5Image)
        serviceItem5.addSubview(tmpa6e570UILabel)
        serviceItem5.addSubview(tmpa342e0UIView)
        serviceList1View.addSubview(serviceItem6)
        serviceItem6.addSubview(serviceItem6Image)
        serviceItem6.addSubview(tmpa6e850UILabel)
        serviceItem6.addSubview(tmpa517f0UIView)
        serviceList1View.addSubview(serviceItem7)
        serviceItem7.addSubview(serviceItem7Image)
        serviceItem7.addSubview(tmpa6eb30UILabel)
        serviceItem7.addSubview(tmpa581e0UIView)
        self.addSubview(introductionView)
        introductionView.addSubview(introductionImage)
        introductionView.addSubview(introductionTitle)
        introductionView.addSubview(introductionDescription)
        self.addSubview(newsView)
        newsView.addSubview(newsTitle)
        newsView.addSubview(newsTopic1)
        newsTopic1.addSubview(newsTopic1Title)
        newsTopic1.addSubview(newsTopic1Description)
        newsTopic1.addSubview(tmpa71a50UIImageView)
        newsView.addSubview(newsTopic2)
        newsTopic2.addSubview(newsTopic2Title)
        newsTopic2.addSubview(newsTopic2Description)
        newsTopic2.addSubview(tmpa72bb0UIImageView)
        self.addSubview(optionView)
        optionView.addSubview(optionRow0)
        optionRow0.addSubview(tmpa74120UILabel)
        optionRow0.addSubview(tmpa74620UISwitch)
        optionRow0.addSubview(tmp805290UIView)
        optionView.addSubview(optionRow1)
        optionRow1.addSubview(tmp80bc70UILabel)
        optionRow1.addSubview(tmp808e30UISwitch)
        optionRow1.addSubview(tmp811f90UIView)

        headerView.snp.makeConstraints { make in
            make.top.leading.trailing.equalTo(self.safeAreaLayoutGuide)
            make.height.equalTo(60.0)
        }
        
        headerLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(16.0)
        }
        
        headerButton0.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.width.height.equalTo(40.0)
        }
        
        headerButton1.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(headerButton0.snp.trailing).offset(2.0)
            make.width.height.equalTo(40.0)
        }
        
        headerButton2.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(headerButton1.snp.trailing).offset(2.0)
            make.height.width.equalTo(40.0)
        }
        
        headerButton3.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(headerButton2.snp.trailing).offset(2.0)
            make.height.width.equalTo(40.0)
            make.trailing.equalTo(-8.0)
        }
        
        walletView.snp.makeConstraints { make in
            make.top.equalTo(headerView.snp.bottom)
            make.leading.trailing.equalTo(self.safeAreaLayoutGuide)
            make.height.equalTo(190.0)
        }
        
        walletHeaderView.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalTo(60.0)
        }
        
        walletHeaderTitle.snp.makeConstraints { make in
            make.leading.equalTo(16.0)
            make.centerY.equalToSuperview()
            make.height.equalTo(40.0)
        }
        
        walletHeaderTitleArrow.snp.makeConstraints { make in
            make.leading.equalTo(walletHeaderTitle.snp.trailing)
            make.centerY.equalTo(walletHeaderTitle)
            make.height.width.equalTo(20.0)
        }
        walletHeaderCertificationButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.size.equalTo(CGSize(width: 135.0, height: 31.0))
        }
        walletHeaderButtonSeparator.snp.makeConstraints { make in
            make.leading.equalTo(walletHeaderCertificationButton.snp.trailing).offset(3.0)
            make.centerY.equalToSuperview()
            make.size.equalTo(CGSize(width: 1.0, height: 15.0))
        }
        walletHeaderQRCheckinButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(walletHeaderButtonSeparator.snp.trailing).offset(3.0)
            make.trailing.equalTo(walletHeaderView.snp.trailing).offset(-8.0)
            make.size.equalTo(CGSize(width: 130.0, height: 31.0))
        }
        walletNoticeView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(walletView).offset(-32.0)
            make.top.equalTo(walletHeaderView.snp.bottom)
            make.height.equalTo(40.0)
        }
        walletNoticeIcon.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(10.0)
            make.height.width.equalTo(20.0)
        }
        walletNoticeTitle.snp.makeConstraints { make in
            make.leading.equalTo(walletNoticeIcon.snp.trailing).offset(5.0)
            make.centerY.equalToSuperview()
        }
        walletNoticeArrow.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.width.height.equalTo(15.0)
            make.trailing.equalTo(-10.0)
        }
        walletPayView.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview()
            make.top.equalTo(walletNoticeView.snp.bottom).offset(15.0)
        }
        walletPayIcon.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(16.0)
            make.centerY.equalTo(walletPayTitle)
            make.width.height.equalTo(15.0)
        }
        walletPayTitle.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalTo(walletPayIcon.snp.trailing).offset(2.0)
        }
        walletPayBalance.snp.makeConstraints { make in
            make.centerY.equalTo(walletPayTitle)
            make.trailing.equalTo(-16.0)
        }
        walletPayTransferButton.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(6.0)
            make.top.equalTo(walletPayTitle.snp.bottom).offset(10.0)
            make.size.equalTo(CGSize(width: 75, height: 31))
        }
        walletPayButtonSeparator0.snp.makeConstraints { make in
            make.leading.equalTo(walletPayTransferButton.snp.trailing)
            make.centerY.equalTo(walletPayTransferButton)
            make.height.equalTo(15.0)
            make.width.equalTo(1.0)
        }
        walletPayPaymentButton.snp.makeConstraints { make in
            make.centerY.equalTo(walletPayTransferButton)
            make.leading.equalTo(walletPayButtonSeparator0.snp.trailing)
            make.size.equalTo(CGSize(width: 80.0, height: 31.0))
        }
        walletPayButtonSeparator1.snp.makeConstraints { make in
            make.centerY.equalTo(walletPayTransferButton)
            make.leading.equalTo(walletPayPaymentButton.snp.trailing)
            make.width.equalTo(1.0)
            make.height.equalTo(15.0)
        }
        walletPayAssetsButton.snp.makeConstraints { make in
            make.leading.equalTo(walletPayButtonSeparator1.snp.trailing)
            make.centerY.equalTo(walletPayPaymentButton)
            make.size.equalTo(CGSize(width: 66, height: 31))
        }
        walletPayPurchasesButton.snp.makeConstraints { make in
            make.centerY.equalTo(walletPayTransferButton)
            make.trailing.equalTo(-5.0)
            make.size.equalTo(CGSize(width: 130, height: 32))
        }

        serviceList0View.snp.makeConstraints { make in
            make.leading.trailing.equalTo(self.safeAreaLayoutGuide)
            make.top.equalTo(walletView.snp.bottom).offset(15.0)
            make.height.equalTo(75.0)
        }
        serviceItem0.snp.makeConstraints { make in
            make.top.leading.bottom.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.25)
        }
        serviceItem0Image.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10.0)
            make.centerX.equalToSuperview()
            make.height.width.equalTo(40.0)
        }
        tmpa668d0UILabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(serviceItem0Image.snp.bottom).offset(4.0)
        }
        tmpa2fb30UIView.snp.makeConstraints { make in
            make.trailing.top.equalTo(serviceItem0Image)
            make.width.height.equalTo(4.0)
        }
        serviceItem1.snp.makeConstraints { make in
            make.leading.equalTo(serviceItem0.snp.trailing)
            make.top.bottom.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.25)
        }
        serviceItem1Image.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10.0)
            make.centerX.equalToSuperview()
            make.height.width.equalTo(40.0)
        }
        tmpa67f30UILabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(serviceItem1Image.snp.bottom).offset(4.0)
        }
        tmpa68210UIView.snp.makeConstraints { make in
            make.trailing.top.equalTo(serviceItem1Image)
            make.width.height.equalTo(4.0)
        }
        serviceItem2.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.leading.equalTo(serviceItem1.snp.trailing)
            make.width.equalToSuperview().multipliedBy(0.25)
        }
        serviceItem2Image.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10.0)
            make.centerX.equalToSuperview()
            make.height.width.equalTo(40.0)
        }
        tmpa6a080UILabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(serviceItem2Image.snp.bottom).offset(4.0)
        }
        tmpa6a360UIView.snp.makeConstraints { make in
            make.trailing.top.equalTo(serviceItem2Image)
            make.width.height.equalTo(4.0)
        }
        serviceItem3.snp.makeConstraints { make in
            make.top.bottom.trailing.equalToSuperview()
            make.leading.equalTo(serviceItem2.snp.trailing)
        }
        serviceItem3Image.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10.0)
            make.centerX.equalToSuperview()
            make.height.width.equalTo(40.0)
        }
        tmpa6dfa0UILabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(serviceItem3Image.snp.bottom).offset(4.0)
        }
        tmpa4e8c0UIView.snp.makeConstraints { make in
            make.trailing.top.equalTo(serviceItem3Image)
            make.width.height.equalTo(4.0)
        }
        serviceList1View.snp.makeConstraints { make in
            make.top.equalTo(serviceList0View.snp.bottom)
            make.leading.trailing.equalTo(self.safeAreaLayoutGuide)
            make.height.equalTo(75.0)
        }
        serviceItem4.snp.makeConstraints { make in
            make.top.leading.bottom.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.25)
        }
        serviceItem4Image.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10.0)
            make.centerX.equalToSuperview()
            make.height.width.equalTo(40.0)
        }
        tmpa6e290UILabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(serviceItem4Image.snp.bottom).offset(4.0)
        }
        tmpa31380UIView.snp.makeConstraints { make in
            make.trailing.top.equalTo(serviceItem4Image)
            make.width.height.equalTo(4.0)
        }
        serviceItem5.snp.makeConstraints { make in
            make.leading.equalTo(serviceItem4.snp.trailing)
            make.top.bottom.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.25)
        }
        serviceItem5Image.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10.0)
            make.centerX.equalToSuperview()
            make.height.width.equalTo(40.0)
        }
        tmpa6e570UILabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(serviceItem5Image.snp.bottom).offset(4.0)
        }
        tmpa342e0UIView.snp.makeConstraints { make in
            make.trailing.top.equalTo(serviceItem5Image)
            make.width.height.equalTo(4.0)
        }
        serviceItem6.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.leading.equalTo(serviceItem5.snp.trailing)
            make.width.equalToSuperview().multipliedBy(0.25)
        }
        serviceItem6Image.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10.0)
            make.centerX.equalToSuperview()
            make.height.width.equalTo(40.0)
        }
        tmpa6e850UILabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(serviceItem6Image.snp.bottom).offset(4.0)
        }
        tmpa517f0UIView.snp.makeConstraints { make in
            make.trailing.top.equalTo(serviceItem6Image)
            make.width.height.equalTo(4.0)
        }
        serviceItem7.snp.makeConstraints { make in
            make.top.bottom.trailing.equalToSuperview()
            make.leading.equalTo(serviceItem6.snp.trailing)
        }
        serviceItem7Image.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10.0)
            make.centerX.equalToSuperview()
            make.height.width.equalTo(40.0)
        }
        tmpa6eb30UILabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(serviceItem7Image.snp.bottom).offset(4.0)
        }
        tmpa581e0UIView.snp.makeConstraints { make in
            make.trailing.top.equalTo(serviceItem7Image)
            make.width.height.equalTo(4.0)
        }
        introductionView.snp.makeConstraints { make in
            make.leading.equalTo(self.safeAreaLayoutGuide).offset(16.0)
            make.trailing.equalTo(self.safeAreaLayoutGuide).offset(-16.0)
            make.top.equalTo(serviceList1View.snp.bottom).offset(8.0)
            make.height.equalTo(80.0)
        }
        introductionImage.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(10.0)
            make.centerY.equalToSuperview()
            make.height.width.equalTo(70.0)
        }
        introductionTitle.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(8.0)
            make.leading.equalTo(introductionImage.snp.trailing).offset(10.0)
            make.height.equalTo(24.0)
        }
        introductionDescription.snp.makeConstraints { make in
            make.top.equalTo(introductionTitle.snp.bottom).offset(5.0)
            make.leading.equalTo(introductionImage.snp.trailing).offset(10.0)
            make.bottom.equalTo(-8.0)
            make.trailing.equalTo(-10.0)
        }
        newsView.snp.makeConstraints { make in
            make.top.equalTo(introductionView.snp.bottom).offset(8.0)
            make.leading.equalTo(self.safeAreaLayoutGuide).offset(16.0)
            make.trailing.equalTo(self.safeAreaLayoutGuide).offset(-16.0)
            make.height.equalTo(170.0)
        }
        newsTitle.snp.makeConstraints { make in
            make.leading.top.equalToSuperview()
            make.height.equalTo(24.0)
        }
        newsTopic1.snp.makeConstraints { make in
            make.top.equalTo(newsTitle.snp.bottom).offset(8.0)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(newsTopic2).multipliedBy(1.0)
        }
        newsTopic1Title.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(8.0)
            make.leading.equalToSuperview().offset(10.0)
            make.height.equalTo(18.0)
        }
        newsTopic1Description.snp.makeConstraints { make in
            make.leading.equalTo(newsTopic1Title)
            make.top.equalTo(newsTopic1Title.snp.bottom).offset(2.0)
            make.bottom.equalTo(-8.0)
        }
        tmpa71a50UIImageView.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(newsTopic1Description.snp.trailing).offset(10.0)
            make.height.width.equalTo(50.0)
            make.trailing.equalTo(-10.0)
        }
        newsTopic2.snp.makeConstraints { make in
            make.top.equalTo(newsTopic1.snp.bottom).offset(8.0)
            make.leading.trailing.bottom.equalToSuperview()
        }
        newsTopic2Title.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(8.0)
            make.leading.equalToSuperview().offset(10.0)
            make.height.equalTo(18.0)
        }
        newsTopic2Description.snp.makeConstraints { make in
            make.leading.equalTo(newsTopic2Title)
            make.top.equalTo(newsTopic2Title.snp.bottom).offset(2.0)
            make.bottom.equalTo(-8.0)
        }
        tmpa72bb0UIImageView.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(newsTopic2Description.snp.trailing).offset(10.0)
            make.height.width.equalTo(50.0)
            make.trailing.equalTo(-10.0)
        }
        optionView.snp.makeConstraints { make in
            make.leading.trailing.equalTo(self.safeAreaLayoutGuide)
            make.top.equalTo(newsView.snp.bottom).offset(8.0)
        }
        optionRow0.snp.makeConstraints { make in
            make.top.leading.trailing.equalToSuperview()
            make.height.equalTo(50.0)
        }
        tmpa74120UILabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(16.0)
            make.centerY.equalToSuperview()
        }
        tmpa74620UISwitch.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.trailing.equalTo(-16.0)
        }
        tmp805290UIView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(16.0)
            make.trailing.equalTo(-16.0)
            make.bottom.equalToSuperview()
            make.height.equalTo(1.0)
        }
        optionRow1.snp.makeConstraints { make in
            make.top.equalTo(optionRow0.snp.bottom)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(50.0)
        }
        tmp80bc70UILabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(16.0)
            make.centerY.equalToSuperview()
        }
        tmp808e30UISwitch.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.trailing.equalTo(-16.0)
        }
        tmp811f90UIView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(16.0)
            make.trailing.equalTo(-16.0)
            make.bottom.equalToSuperview()
            make.height.equalTo(1.0)
        }
    }
}

import SwiftUI
struct SnapKitSwiftUIView: UIViewRepresentable {
    func makeUIView(context: Context) -> SnapKitView {
        let view = SnapKitView()
        view.loadView()
        return view
    }
    func updateUIView(_ uiView: SnapKitView, context: Context) {
        
    }
}

struct SnapKitView_Previews: PreviewProvider {
    static var previews: some View {
        SnapKitSwiftUIView().previewDevice(.init("iPhone 13 Pro Max"))
    }
}
