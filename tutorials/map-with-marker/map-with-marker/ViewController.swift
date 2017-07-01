/*
 * Copyright 2016 Google Inc. All rights reserved.
 *
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this
 * file except in compliance with the License. You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software distributed under
 * the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
 * ANY KIND, either express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import UIKit
import GoogleMaps

class ViewController: UIViewController {

  override func loadView() {

    // Create a GMSCameraPosition that tells the map to display the
    // coordinate -33.86,151.20 at zoom level 6.
    let camera = GMSCameraPosition.camera(withLatitude:13.3571264 , longitude: 80.14286040000002, zoom: 8.0)
    let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
    view = mapView

    // Creates a marker in the center of the map.
    let marker = GMSMarker()
    marker.position = CLLocationCoordinate2D(latitude: 12.35, longitude: 80.142)
    marker.title = "Sydney"
    marker.snippet = "Australia"
    marker.map = mapView
    
    let marker2 = GMSMarker()
    marker2.position = CLLocationCoordinate2D(latitude: 13.3571264, longitude : 80.14286040000002)
    marker2.title = "RMK"
    marker2.snippet = "Chennai"
    marker2.map = mapView
    

  }

}

