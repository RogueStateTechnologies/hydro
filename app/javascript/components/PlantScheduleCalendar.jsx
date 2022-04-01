import React from 'react'
import Calendar from 'react-calendar'

const PlantScheduleCalendar = () => {
  return(
      <div class="row">
        <div class="col-md-10 mx-auto">
          <div class="card">
            <div class="card-header">
              <h5 class="card-title">Calendar Header</h5>
              <span class="card-category">Calendar SubHeader</span>
            </div>
            <div class="card-body">
              <div class="card-calendar">
                <Calendar className="fc fc-ltr fc-unthemed" />
              </div>
            </div>
          </div>
        </div>
      </div>
  )
}

export default PlantScheduleCalendar