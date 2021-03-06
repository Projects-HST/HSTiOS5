//
//  MeetingDetail.swift
//  Constituent
//
//  Created by Happy Sanz Tech on 22/06/20.
//  Copyright © 2020 HappySanzTech. All rights reserved.
//

import UIKit

class MeetingDetail: UIViewController {

    var meeting_Title = String()
    var meeting_Discrption = String()
    var meeting_Date = String()

    @IBOutlet var meetingTitle: UILabel!
    @IBOutlet var meetingDiscrption: UILabel!
    @IBOutlet var meetingDate: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        /*Set Values*/
        self.addCustomizedBackBtn(title:"  Details of Meeting")
        self.meetingTitle.text = meeting_Title.capitalized
        self.meetingDiscrption.text = meeting_Discrption.capitalized
        self.meetingDate.text =  String(format: "%@ %@", "Date :",meeting_Date)
        let navigationBar = navigationController!.navigationBar
        navigationBar.tintColor = UIColor.black
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
