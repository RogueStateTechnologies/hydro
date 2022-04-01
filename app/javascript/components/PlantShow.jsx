import React from "react"
import { useState } from "react"

import HeaderBar from './HeaderBar'

const PlantShow = ({ crop, variant, plan, phase, plant, nutrients }) => {

  const [active, setActive] = useState("overview")

  const header = {
    display: "flex",
    justifyContent: "space-between",
  }
  const body = {
    display: "flex",
    justifyContent: "space-around",
    textAlign: "center"
  }
  console.log(active)
  switch(active){
    case "overview":
      return (
        <>
        {/* descriptions should be at least a sentence or two to make it worth while for them to be on the screen; health score can be broken down into multiple aspects and can be based on growth prediction / benchmarks */}
          <div className="card-header" style={header}>
            <div>
              <HeaderBar setActive={setActive}/>
            </div>
          </div>
          <div className="card-body">
            <div className="overview" style={body}>
              <div>
                <h4 className="card-category">Crop</h4>
                <h5>{crop.name}</h5>
                <span>{crop.description}</span>
              </div>
              <div>
                <h4 className="card-category">Variant</h4>
                <h5>{variant.name}</h5>
                <span>{variant.description}</span>
              </div>
              <div>
                <h4 className="card-category">Overall Health Score</h4>
                <h5>8/10</h5>
              </div>
            </div>
          </div>
        </>
      )
    case "schedule":
      return (
        <>
          {/* add a dates model to hold all of the different dates i need for a given plant; a plant has many dates; a date belongs to a plant; date will have a date_type column and the date column */}
          <div className="card-header" style={header}>
            <div>
              <HeaderBar setActive={setActive}/>
            </div>
          </div>
          <div className="card-body">
            <div className="schedule" style={body}>
              <div>
                <h4 className="card-category">Next Scheduled Checkup</h4>
                <h5>{plant.next_notification_date}</h5>
              </div>
              <div>
                <h4 className="card-category">Next Feeding</h4>
                <h5>Month Day</h5>
              </div>
              <div>
                <h4 className="card-category">Estimated Harvest</h4>
                <h5>Month Day</h5>
              </div>
            </div>
          </div>
        </>
      )
      case "plan":
        return (
          <>
            <div className="card-header" style={header}>
              <div>
                <HeaderBar setActive={setActive}/>
              </div>
            </div>
            <div className="card-body">
              <div className="plan" style={body}>
                <div>
                  <h4 className="card-category">Growth Plan</h4>
                  <h5>{plan.name}</h5>
                  <span>{plan.description}</span>
                </div>
                <div>
                  <h4 className="card-category">Phase</h4>
                  <h5>{phase.name}</h5>
                  <span>{phase.description}</span>
                </div>
                <div>
                  <h4 className="card-category">Phase Nutrients</h4>
                  <ul>
                    {nutrients.map((nute) => (
                      <li key={nute.name}>{nute.name}</li>
                    ))}
                  </ul>
                </div>
                <div>
                  <h4 className="card-category">Next Phase Start</h4>
                  <h5>Month Day</h5>
                </div>
              </div>
            </div>
          </>
        )
      case "charts":
        return (
          <>
            <h1>UNDER CONSTRUCTION</h1>
            {/* will need to figure out how to integrate charts here */}
          </>
        )
  }
}

export default PlantShow