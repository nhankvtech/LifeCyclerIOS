private func addLeftTopView(top: CGFloat, left: CGFloat, width: CGFloat, height: CGFloat) {
        let subView = UIView(frame: CGRect(x: 0, y: 0, width: .zero, height: .zero))
        subView.translatesAutoresizingMaskIntoConstraints = false
        subView.backgroundColor = UIColor.red
        mainView.addSubview(subView)
        
        // set chiều cao của view con = 25% so với view cha.
        // set chiều rộng của view con = 80% so với view cha.
        NSLayoutConstraint.activate([
            subView.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.25),
              subView.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.8),
              subView.topAnchor.constraint(equalTo: mainView.topAnchor),
              subView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor),
          ])

        print("width \(subView.bounds.width) - height \(subView.bounds.height)")
    }
