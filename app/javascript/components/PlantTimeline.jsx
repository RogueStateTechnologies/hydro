import React from 'react'
import { useState } from 'react'
import PlantTimelineHealth from './PlantTimelineHealth'
import PlantTimelineHarvest from './PlantTimelineHarvest'

const PlantTimeline = ({healthReports, harvestReports}) => {
  const [display, setDisplay] = useState('all');
  return(
    <>
      <div className="card-header" style={{display: 'flex', justifyContent: 'right'}}>
        <button className="btn btn-info btn-sm active">All Reports</button>
        <button className="btn btn-info btn-sm">Health Reports</button>
        <button className="btn btn-info btn-sm">Harvest Reports</button> 
      </div>
      <div class="card card-timeline card-plain" style={{overflow: 'scroll', height: '400px'}}>
        <div class="card-body">
          <ul class="timeline">
            {healthReports.map( report => <PlantTimelineHealth report={report} />)}
            {harvestReports.map(report => <PlantTimelineHarvest report={report} />)}
          </ul>
        </div>
      </div>
    </>
  )
}

export default PlantTimeline