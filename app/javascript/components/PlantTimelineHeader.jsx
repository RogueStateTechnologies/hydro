import React from 'react'

const PlantTimelineHeader = () => {
  return(
    <div className="card-header">
      <button className="btn btn-info btn-sm">All Reports</button>
      <button className="btn btn-info btn-sm active">Health Reports</button>
      <button className="btn btn-info btn-sm">Harvest Reports</button> 
      <div style={{display: 'flex', justifyContent: 'space-around'}}>
        <div>
          <span className="card-category">
            Most Recent Health Report
          </span>
          <h5 className="card-title">
            Month Day
          </h5>
        </div>
        <div>
          <span className="card-category">Current Height</span>
          <h5 className="card-title">1000cm</h5>
        </div>
        <div>
          <span className="card-category">Container Size</span>
          <h5 className="card-title">15gal</h5>
        </div>
        <div>
          <span className="card-category">Current Diagnosis</span>
          <h5 className="card-title">Healthy</h5>
        </div>
      </div>
      <hr/>
    </div>
  )
}

export default PlantTimelineHeader