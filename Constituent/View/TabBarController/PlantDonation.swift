//
//  PlantDonation.swift
//  Constituent
//
//  Created by Happy Sanz Tech on 22/06/20.
//  Copyright © 2020 HappySanzTech. All rights reserved.
//

import UIKit

class PlantDonation: UIViewController, PlantDonationView {

    let plantPresener = PlantDonationPresenter(plantDonationService: PlantDonationService())
    
    @IBOutlet var plantName: UILabel!
    @IBOutlet var plantNumber: UILabel!
    @IBOutlet var recivedDate: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        guard checkInterConnection () else {
            return
        }
        
        self.addCustomizedBackBtn(title:"  Plant Donation")
        plantPresener.attachView(view: self)
        plantPresener.getPlantDonation(user_id: GlobalVariables.shared.user_id,dynamic_db:GlobalVariables.shared.dynamic_Db)
        let navigationBar = navigationController!.navigationBar
        navigationBar.tintColor = UIColor.black
    }
    
    func checkInterConnection () -> Bool
    {
        guard Reachability.isConnectedToNetwork() == true else{
              self.view.isHidden = true
              self.view.backgroundColor = .white
              AlertController.shared.offlineAlert(targetVc: self, complition: {
                //Custom action code
             })
              return false
        }
              return true
    }
    
    func startLoading() {
         
        self.view.activityStartAnimating()
    }
    
    func finishLoading() {
        
        self.view.activityStopAnimating()
    }
    
    func setPlantDonation(plant: PlantDonationData) {

         self.plantName.text = plant.name_of_plant.capitalized
         self.plantNumber.text = plant.no_of_plant
         self.recivedDate.text = plant.created_at
    }
    
    func setEmpty(errorMessage: String) {
         AlertController.shared.showAlert(targetVc: self, title: Globals.alertTitle, message: errorMessage, complition: {
         })
         
         self.plantName.text = "-"
         self.plantNumber.text = "-"
         self.recivedDate.text = "-"
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
