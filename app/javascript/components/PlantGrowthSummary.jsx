import React from 'react'

const PlantGrowthSummary = () => {
  return (
    <>
      <div class="card-header">
        <h6 class="card-title">Plant Growth Summary</h6>
        <span class="card-category">Last Updated: Month Day</span>
      </div>
      <div className="card-body">
        <div className="nav-tabs-navigation">
          <div className="nav-tabs-wrapper">
            <ul id="tabs" className="nav nav-tabs" role="tablist">
              <li className="nav-item">
                <a className="nav-link active" data-toggle="tab" href="#home" role="tab" aria-expanded="true">Home</a>
              </li>
              <li className="nav-item">
                <a className="nav-link" data-toggle="tab" href="#profile" role="tab" aria-expanded="false">Profile</a>
              </li>
              <li className="nav-item">
                <a className="nav-link" data-toggle="tab" href="#messages" role="tab" aria-expanded="false">Messages</a>
              </li>
            </ul>
          </div>
        </div>
        <div id="my-tab-content" className="tab-content text-center">
          <div className="tab-pane active" id="home" role="tabpanel" aria-expanded="true">
            <p>
              Larger, yet dramatically thinner. More powerful, but remarkably power efficient. With a smooth metal surface that seamlessly meets  the new Retina HD display.
            </p>
          </div>
          <div className="tab-pane" id="profile" role="tabpanel" aria-expanded="false">
            <p>
              Here is your profile.
            </p>
          </div>
          <div className="tab-pane" id="messages" role="tabpanel" aria-expanded="false">
            <p>
              Here are your messages.
            </p>
          </div>
        </div>
      </div>
    </>
  )
}

export default PlantGrowthSummary