import UIKit

class ViewController: UIViewController {
    
    
    var newImage: UIImageView!
    var button: UIButton!
    var newLabel: UILabel!
    var scrollView: UIScrollView!
    var container: UIStackView!
    let firstView =  OnboardingPage()
    let secondView = OnboardingPage()
    let thirdView = OnboardingPage()
    
    
    override func loadView() {
        super.loadView()
        
        scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        view.addSubview(scrollView)
        
        container = UIStackView()
        container.axis = .horizontal
        container.spacing = 0
        container.translatesAutoresizingMaskIntoConstraints = false
        container.distribution = .fillEqually
        
        scrollView.addSubview(container)
        container.addArrangedSubview(firstView)
        container.addArrangedSubview(secondView)
        container.addArrangedSubview(thirdView)
        
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        container.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        container.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        container.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        container.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        container.heightAnchor.constraint(equalTo: scrollView.heightAnchor).isActive = true
        
        firstView.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        secondView.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        thirdView.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true

        firstView.button.isHidden = true
        secondView.button.isHidden = true
//        thirdView.button.isEnabled = true
        
        
        firstView.newLabel.text = "A Revolutionary new Crypto"
        secondView.newLabel.text = "Introducing FritzCoin"
        thirdView.newLabel.text = "One Time Price Now"
        
        secondView.newImage.image = UIImage(named: "img2")
        thirdView.newImage.image = UIImage(named: "img3")
       
        
        
        
        
    }
    
    
    func addGradientToView(view: UIView)
    {
        //gradient layer
        let gradientLayer = CAGradientLayer()
        
        //define colors
        gradientLayer.colors = [UIColor.green.cgColor, UIColor.white.cgColor, UIColor.yellow.cgColor]
        
        //define locations of colors as NSNumbers in range from 0.0 to 1.0
        //if locations not provided the colors will spread evenly
        gradientLayer.locations = [0.0, 0.5, 0.8]
        
        //define frame
        gradientLayer.frame = view.bounds
        
        //insert the gradient layer to the view layer
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addGradientToView(view: self.view)
        
    }
}
