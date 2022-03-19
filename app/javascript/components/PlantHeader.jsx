import React from "react"
import { useState } from "react"

const PlantHeader = ({crop, variant, startDate, phase, plan, plantHeight, containerSize, 
                      wateringVolume, averagePh, lightIntensity, lightSchedule}) => {

  const [active, setActive] = useState("overview")

  const header = {
    display: "flex",
    "justify-content": "space-between",
  }
  const body = {
    display: "flex",
    "justify-content": "space-around",
    "text-align": "center"
  }

  if(active === "details"){
    return(
      <>
        <div className="card-header" style={header}>
            <div>
              <button className="overview btn btn-sm" onClick={() => setActive("overview")}>Overview</button>
              <button className="details btn btn-sm" onClick={() => setActive("details")}>Details</button>
            </div>
          <div>
            <button className="btn btn-sm">X</button>
          </div>
        </div>
        <div className="card-body">
          <div className="details" style={body}>
            <div>
              <h5 className="card-category">Plant Height</h5>
              <h6>100cm</h6>
            </div>
            <div>
              <h5 className="card-category">Container Size</h5>
              <h6>10 Gallons</h6>
            </div>
            <div>
              <h5 className="card-category">Watering Volume</h5>
              <h6>5 Gallons</h6>
            </div>
            <div>
              <h5 className="card-category">Average Ph</h5>
              <h6>10</h6>
            </div>
            <div>
              <h5 className="card-category">Light Intensity</h5>
              <h6>9001</h6>
            </div>
            <div>
              <h5 className="card-category">Light Schedule</h5>
              <h6>8hr</h6>
            </div>
            <div>
              <h5 className="card-category">Next Scheduled Feeding</h5>
              <h6> Mar 24, 2022</h6>
            </div>
            <div>
              <h5 className="card-category">Next Scheduled Health Report</h5>
              <h6>Mar 22, 2022</h6>
            </div>
          </div>
        </div>
      </>
    )
  } else{
    return (
      <>
        <div className="card-header" style={header}>
          <div>
            <button className="overview btn btn-sm" onClick={() => setActive("overview")}>Overview</button>
            <button className="details btn btn-sm" onClick={() => setActive("details")}>Details</button>
          </div>
          <div>
            <button className="btn btn-sm">X</button>
          </div>
        </div>
        <div className="card-body">
          <div className="overview" style={body}>
            <div>
              <h5 className="card-category">Crop</h5>
              <h6>{crop.name}</h6>
            </div>
            <div>
              <h5 className="card-category">Variant</h5>
              <h6>{variant.name}</h6>
          </div>
          <div>
            <h5 className="card-category">Start Date</h5>
            <h6>{startDate}</h6>
          </div>
          <div>
            <h5 className="card-category">Growth Plan</h5>
            <h6>{plan.name}</h6>
          </div>
          <div>
            <h5 className="card-category">Phase</h5>
            <h6>P3:W5</h6>
          </div>
          <div>
            <h5 className="card-category">Estimated Harvest Date</h5>
            <h6>Mar 31, 2022</h6>
          </div>
          <div>
            <h5 className="card-category">Overall Health Score</h5>
            <h6>8/10</h6>
          </div>
        </div>
      </div>
    </>
    )
  }
}

export default PlantHeader