import React from 'react'
import { useState } from 'react'

const PlantPlanSummary = () => {
  const [active, setActive] = useState('')
  return(
    <>
      <div className="card-header">
        <h5>Vertical Tabs</h5>
      </div>
      <div className="card-body">
        <div className="row">
          <div className="col-lg-4 col-md-5 col-sm-4 col-6">
            <div className="nav-tabs-navigation verical-navs">
              <div className="nav-tabs-wrapper">
                <ul className="nav nav-tabs flex-column nav-stacked" role="tablist">
                  <li className="nav-item">
                    <a className="nav-link active" href="#info" role="tab" data-toggle="tab">Info</a>
                  </li>
                  <li className="nav-item">
                    <a className="nav-link" href="#description" role="tab" data-toggle="tab">Description</a>
                  </li>
                  <li className="nav-item">
                    <a className="nav-link" href="#concept" role="tab" data-toggle="tab">Concept</a>
                  </li>
                  <li className="nav-item">
                  <a className="nav-link" href="#support" role="tab" data-toggle="tab">Support</a>
                  </li>
                  <li className="nav-item">
                    <a className="nav-link" href="#extra" role="tab" data-toggle="tab">Extra</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <div className="col-lg-8 col-md-7 col-sm-8 col-6">
            <div className="tab-content">
              <div className="tab-pane active" id="info">
                <p>
                  Larger, yet dramatically thinner. More powerful, but remarkably power efficient. With a smooth metal surface that seamlessly meets the new Retina HD display.
                </p>
                <p>
                  It’s one continuous form where hardware and software function in perfect unison, creating a new generation of phone that’s better by any measure.
                </p>
              </div>
              <div className="tab-pane" id="description">
                <p>
                  The first thing you notice when you hold the phone is how great it feels in your hand. The cover glass curves down around the sides to meet the anodized aluminum enclosure in a remarkable, simplified design.
                </p>
                <p>
                  There are no distinct edges. No gaps. Just a smooth, seamless bond of metal and glass that feels like one continuous surface.
                </p>
              </div>
              <div className="tab-pane" id="concept">
                <p>
                  It’s one continuous form where hardware and software function in perfect unison, creating a new generation of phone that’s better by any measure.
                </p>
                <p>
                  Larger, yet dramatically thinner. More powerful, but remarkably power efficient. With a smooth metal surface that seamlessly meets the new Retina HD display.
                </p>
              </div>
              <div className="tab-pane" id="support">
                <p>
                  From the seamless transition of glass and metal to the streamlined profile, every detail was carefully considered to enhance your experience. So while its display is larger, the phone feels just right.
                </p>
                <p>
                  It’s one continuous form where hardware and software function in perfect unison, creating a new generation of phone that’s better by any measure.
                </p>
              </div>
              <div className="tab-pane" id="extra">
                <p>
                  It’s one continuous form where hardware and software function in perfect unison, creating a new generation of phone that’s better by any measure.
                </p>
                <p>
                  Larger, yet dramatically thinner. More powerful, but remarkably power efficient. With a smooth metal surface that seamlessly meets the new Retina HD display. 
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </>
  )
}

export default PlantPlanSummary 