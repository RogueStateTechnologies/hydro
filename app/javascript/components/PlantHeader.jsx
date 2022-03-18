import React from "react"
import { useState } from "react"

const PlantHeader = () => {

  const [active, setActive] = useState("overview")

  if(active === "details"){
    return(
      <>
        <div className="card-header">
            <div>
              <button className="overview btn btn-sm" onClick={() => setActive("overview")}>Overview</button>
              <button className="details btn btn-sm" onClick={() => setActive("details")}>Details</button>
            </div>
          <div>
            <button className="btn btn-sm">X</button>
          </div>
        </div>
        <div className="card-body">
          <div className="details">
            <h5 className="card-category">Plant Height</h5>
            <h6>100cm</h6>
            <h5 className="card-category">Container Size</h5>
            <h6>10 Gallons</h6>
            <h5 className="card-category">Watering Volume</h5>
            <h6>5 Gallans</h6>
            <h5 className="card-category">Average Ph</h5>
            <h6>10</h6>
            <h5 className="card-category">Light Intensity</h5>
            <h6>9001</h6>
            <h5 className="card-category">Light Schedule</h5>
            <h6>8hr</h6>
            <h5 className="card-category">Next Scheduled Feeding</h5>
            <h6> Mar 24, 2022</h6>
            <h5 className="card-category">Next Scheduled Health Report</h5>
          </div>
        </div>
      </>
    )

  } else{
    return (
      <>
      <div className="card-header">
          <div>
            <button className="overview btn btn-sm" onClick={() => setActive("overview")}>Overview</button>
            <button className="details btn btn-sm" onClick={() => setActive("details")}>Details</button>
          </div>
        <div>
          <button className="btn btn-sm">X</button>
        </div>
      </div>
      <div className="card-body">
        <div className="overview">
          <h5 className="card-category">Crop</h5>
          <h6>Cannabis</h6>
          <h5 className="card-category">Variant</h5>
          <h6>OG Kush</h6>
          <h5 className="card-category">Start Date</h5>
          <h6>Mar 20, 2022</h6>
          <h5 className="card-category">Growth Plan</h5>
          <h6>Flora Grow</h6>
          <h5 className="card-category">Phase</h5>
          <h6>P3:W5</h6>
          <h5 className="card-category">Estimated Harvest Date</h5>
          <h6>Mar 31, 2022</h6>
          <h5 className="card-category">Overall Health Score</h5>
          <h6>8/10</h6>
        </div>
      </div>
    </>
    )
  }
}

export default PlantHeader