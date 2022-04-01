import React from 'react'
import { useState } from 'react'

const PlantPlanSummary = () => {
  const [active, setActive] = useState('')
  return(
    <div className="card-body">
      <div className="row">
        <div className="col-lg-4 col-md-5 col-sm-4 col-6">
          <div className="nav-tabs-navigation verical-navs">
            <div className="nav-tabs-wrapper">
              <ul className="nav nav-tabs flex-column nav-stacked" role="tablist">
                <li className="nav-item">
                  <a className="nav-link active" href="#info" role="tab" data-toggle="tab">Phase 1</a>
                </li>
                <li className="nav-item">
                  <a className="nav-link" href="#description" role="tab" data-toggle="tab">Phase 2</a>
                </li>
                <li className="nav-item">
                  <a className="nav-link" href="#concept" role="tab" data-toggle="tab">Phase 3</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <div className="col-lg-8 col-md-7 col-sm-8 col-6">
          <div className="tab-content">
            <div className="tab-pane active" id="info">
              <p>Phase 1 details</p>
            </div>
            <div className="tab-pane" id="description">
              <p>Phase 2 details</p>
            </div>
            <div className="tab-pane" id="concept">
              <p>Phase 3 details</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}

export default PlantPlanSummary 