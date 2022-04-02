import React from 'react'

const PlantTimelineHealth = ({report}) => {
  return(
    <li>
      <div class="timeline-badge success">
        <i class="nc-icon nc-sun-fog-29"></i>
      </div>
      <div class="timeline-panel">
        <div class="timeline-heading">
          <span class="badge badge-pill badge-success">Checkup</span>
        </div>
        <div class="timeline-body">
          <div style={{display: 'flex', justifyContent: 'space-around'}}>
            <div>
              <h6>
                Height(in centimeters)
              </h6>
              <span>{report.height_in_centimeters}</span>
            </div>
            <div>
              <h6>
                ph
              </h6>
              <span>{report.ph}</span>
            </div>
          </div>
          <div>
            <div>
              <h6>Diagnosis</h6>
              <span>{report.diagnosis}</span>
            </div>
          </div>
          <h6>Comments</h6>
          <p>
            {report.comments}
          </p>
        </div>
      </div>
    </li>
  )
}

export default PlantTimelineHealth