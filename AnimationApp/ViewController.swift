import UIKit

 
 

class ViewController: UIViewController {
    
    
    
    var imgIndex: Int = 1
    
    
    
    var isAnimating: Bool = false
    var timer : Timer?
    
    
    @IBOutlet weak var imgGoodnight: UIImageView!
    
    
    
    @IBOutlet weak var btnToggleAnimation: UIButton!
    
    @IBOutlet weak var btnResetTimer: UIButton!
    
    @IBAction func btnReset(_ sender: Any) {
        
        resetAnimation()
        isAnimating = false
        checkAnimating()
        
    }
    
    
    
    func updateImage() {
        
        print("goodnight-images/goodnight\(imgIndex)")
        
        imgGoodnight.image = UIImage(named: "goodnight-images/goodnight\(imgIndex)")
        
        
    }
    func startTimer(){
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in self.changeToNextImage(self.btnNextImage)
        }
        updateImage()
    }
    func stopTimer(){
        timer?.invalidate()
        timer = nil
    }
    func startAnimation(){
        startTimer()
    }
    func pauseAnimation(){
        stopTimer()
    }
    func updateAnimation(){
        
    }
    func resetAnimation(){
        
        stopTimer()
        imgIndex = 1
        updateImage()
        
        
    }
    
    
    
    @IBAction func changeToNextImage(_ sender: UIButton) {
        
        if (imgIndex >= 37) {
            
            imgIndex = 1
            
        } else {
            
            imgIndex += 1
            
        }
        
        updateImage()
        
    }
    
    @IBOutlet weak var btnNextImage: UIButton!
    
    
    @IBAction func toggleAnimation(_ sender: Any) {
     checkAnimating()
        
        // Nếu isAnimating == true thì
    }
    
    func checkAnimating(){
        
        if (isAnimating) { //animation đã chạy
            
            //isAnimating = false
            btnResetTimer.isHidden = false
            isAnimating = false
            
            //Nội dung nút: Pause
            
            btnToggleAnimation.setTitle("Pause", for: .normal)
            
            //Màu nút: Cam
            btnToggleAnimation.setTitleColor(.white, for: .normal)
            btnToggleAnimation.backgroundColor = .systemOrange
            pauseAnimation()
        } else {
            btnResetTimer.isHidden = true
            //isAnimating = true
            
            isAnimating = true
            
            //Nội dung nút: Pause
            
            btnToggleAnimation.setTitle("Animation", for: .normal)
            
            //Màu nút: Xanh lá
            btnToggleAnimation.setTitleColor(.white, for: .normal)
            btnToggleAnimation.backgroundColor = .systemGreen
            startAnimation()
        }
        
    }

    

     

     

    override func viewDidLoad() {

        super.viewDidLoad()

        // Do any additional setup after loading the view.

         

        imgIndex = 1

        

         

         

        //Giá trị của isAnimating là true.

        isAnimating = true

 
 

        //Màu tintColor của nút nhấn btnToggleAnimation là màu System Green Color

        btnToggleAnimation.backgroundColor = .systemGreen
        btnToggleAnimation.setTitleColor(.white, for: .normal)
 
 

        //Nội dung hiển thị trên nút nhấn là Animation

        btnToggleAnimation.setTitle("Animation", for: .normal)
        btnResetTimer.isHidden = false

    }

 
 

 
 

}

 
