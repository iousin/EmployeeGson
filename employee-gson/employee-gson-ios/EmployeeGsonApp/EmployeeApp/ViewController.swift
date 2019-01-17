import UIKit
import EmployeeGsonLib

class ViewController: UIViewController {

    @IBOutlet weak var lblLog: UILabel!

    @IBOutlet weak var txtNumberOfEmployees: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func generateGson(_ sender: UIButton) {
        let numberOfEmployees = Int32(txtNumberOfEmployees.text ?? "10") ?? Int32(10)
        let startTime = Date().timeIntervalSince1970
        EmpEmployeeGsonExample.convertEmployees(with: numberOfEmployees)
        let endTime = Date().timeIntervalSince1970
        NSLog("Time=\(endTime - startTime)")
    }
    
    @IBAction func generateGsonAutorelease(_ sender: UIButton) {
        autoreleasepool {
            let numberOfEmployees = Int32(txtNumberOfEmployees.text ?? "10") ?? Int32(10)
            EmpEmployeeGsonExample.convertEmployees(with: numberOfEmployees)
        }
    }
}

