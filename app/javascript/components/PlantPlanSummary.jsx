import React from 'react'
import { useState, useEffect } from 'react'

const PlantPlanSummary = ({plan}) => {
  const [planActive, setPlanActive] = useState( () => {
    const saved = localStorage.getItem('planActive')
    return saved || 'overview'
  })

  useEffect( () => {
    localStorage.setItem('planActive', planActive)
  }, [planActive])

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
                  <li className="nav-item" onClick={ () => setPlanActive('overview') }>
                    <a className={ planActive === 'overview' ? 'nav-link active' : 'nav-link'} href="#overview" role="tab" data-toggle="tab">Overview</a>
                  </li>
                  <li className="nav-item" onClick={ () => setPlanActive('phase')}>
                    <a className={ planActive === 'phase' ? 'nav-link active' : 'nav-link'} href="#phase" role="tab" data-toggle="tab">Current Phase</a>
                  </li>
                  <li className="nav-item" onClick={ () => setPlanActive('projections')}>
                    <a className={planActive === 'projections' ? 'nav-link active' : 'nav-link'} href="#extra" role="tab" data-toggle="tab">Projections</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <div className="col-lg-8 col-md-7 col-sm-8 col-6">
            <div className="tab-content">
              <div className={ planActive === 'overview' ? 'tab-pane active' : 'tab-pane' } id="info">
                <div>
                  <span>Plan Name</span>
                  <h6>
                    {plan.name}
                  </h6>
                </div>
                <div>
                  <span>Duration</span>
                  <h6>
                    10 Weeks
                  </h6>
                </div>
                <div>
                  <span>Current Phase</span>
                  <h6>
                    Phase 5
                  </h6>
                </div>
                <div>
                  <span>Weeks Left In Phase</span>
                  <h6>
                    3
                  </h6>
                </div>
              </div>
              <div className={planActive === 'phase' ? 'tab-pane active' : 'tab-pane'} id="phase">
                <h5>PHASE NAME</h5>
                <span>phase description</span>
                <h6>Base Duration</h6>
                <span>4 Weeks</span>
                <h6>Nutirents</h6>
                <ul>
                  <li>Nute</li>
                  <li>Nute</li>
                  <li>Nute</li>
                  <li>Nute</li>
                </ul>
              </div>
              <div className={planActive === 'phase2' ? 'tab-pane active' : 'tab-pane'} id="concept">
                <p>
                  It’s one continuous form where hardware and software function in perfect unison, creating a new generation of phone that’s better by any measure.
                </p>
                <p>
                  Larger, yet dramatically thinner. More powerful, but remarkably power efficient. With a smooth metal surface that seamlessly meets the new Retina HD display.
                </p>
              </div>
              <div className={planActive === 'projections' ? 'tab-pane active' : 'tab-pane'} id="support">
                <h5>Phase Projections</h5>
                <h6>Height</h6>
                <span>100 cm</span>
                {/* some other things */}
                <h5>Plan Projections</h5>
                <h6>Height</h6>
                <span>100cm</span>
                <h6>Harvested Weight (wet)</h6>
                <span>100g</span>
                <h6>Harvested Weight (dry)</h6>
                <span>75g</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </>
  )
}

export default PlantPlanSummary 