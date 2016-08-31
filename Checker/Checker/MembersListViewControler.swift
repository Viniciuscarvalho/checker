//
//  MembersViewControler.swift
//  Checker
//
//  Created by Vinicius Carvalho on 25/06/16.
//  Copyright © 2016 Vinicius Carvalho. All rights reserved.
//

import UIKit
import RxSwift

class MembersListViewController : UIViewController {

    // MARK: Static Properties
    let kCloseCellHeight: CGFloat = 100
    let kOpenCellHeigjt: CGFloat = 200
    
    var cellHeights = [CGFloat]()
    
    // MARK: IBOutlets
    @IBOutlet private weak var tableView: UITableView! {
        didSet {
            tableView.rowHeight = UITableViewAutomaticDimension
        }
    }
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Participantes"
        setup()
    }
    
}

// MARK: Setup
extension MembersListViewController {

    private func setup() {
        bindTableView()
        viewModel.requestMembersList()
        
        for _ in 0...kRowsCount {
            cellHeights.append(kCloseCellHeight)
        }
    }
    
    private func bindTableView() {
    
        override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
            let cell = tableView.cellForRowAtIndexPath(indexPath) as! FoldingCell
            
            var duration = 0.0
            if cellHeights[indexPath.row] == kCloseCellHeight { // open cell
                cellHeights[indexPath.row] = kOpenCellHeight
                cell.selectedAnimation(true, animated: true, completion: nil)
                duration = 0.5
            } else {// close cell
                cellHeights[indexPath.row] = kCloseCellHeight
                cell.selectedAnimation(false, animated: true, completion: nil)
                duration = 1.1
            }
            
            UIView.animateWithDuration(duration, delay: 0, options: .CurveEaseOut, animations: { () -> Void in
                tableView.beginUpdates()
                tableView.endUpdates()
                }, completion: nil)
        }
    }
    
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if cell is FoldingCell {
            let foldingCell = cell as! FoldingCell
            
            if cellHeights![indexPath.row] == kCloseCellHeight {
                foldingCell.selectedAnimation(false, animated: false, completion:nil)
            } else {
                foldingCell.selectedAnimation(true, animated: false, completion: nil)
            }
        }
    }
    
    override func animationDuration(itemIndex:NSInteger, type:AnimationType)-> NSTimeInterval {
        
        // durations count equal it itemCount
        let durations = [0.33, 0.26, 0.26] // timing animation for each view
        return durations[itemIndex]
    }
}

// MARK: Segues
extension MembersListViewController {

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        <#code#>
    }
}



