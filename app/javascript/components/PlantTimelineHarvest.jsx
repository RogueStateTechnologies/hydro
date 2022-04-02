import React from 'react'

const PlantTimelineHarvest = ({report}) => {
  return(
    <li>
      <div class="timeline-badge warning">
        <i class="nc-icon nc-sun-fog-29"></i>
      </div>
      <div class="timeline-panel">
        <div class="timeline-heading">
          <span class="badge badge-pill badge-warning">Checkup</span>
        </div>
        <div class="timeline-body">
          <div style={{display: 'flex', justifyContent: 'space-around'}}>
            <div>
              <h6>
                Height(in centimeters)
              </h6>
              <span>{report['height_in_centimeters']}</span>
            </div>
            <div>
              <h6>
                Weight Wet
              </h6>
              <span>{report.weight_wet_in_grams}</span>
            </div>
            <div>
              <h6>
                Weight Dry
              </h6>
              <span>{report.weight_dry_in_grams}</span>
            </div>
          </div>
        </div>
      </div>
    </li>
  )
}

export default PlantTimelineHarvest