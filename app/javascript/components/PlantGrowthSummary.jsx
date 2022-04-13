import React from 'react'     
import { useState, useEffect } from 'react'

const PlantGrowthSummary = ({report, image}) => {
  const [growthActive, setGrowthActive] = useState( () => {
    const saved = localStorage.getItem('growthActive')
    return saved || 'overview'
  })

  useEffect( () => {
    localStorage.setItem('growthActive', growthActive)
  }, [growthActive])

  return (
    <>
      <div className="card-header">
        <h6 className="card-title">Plant Report Card</h6>
        { report ? <span>{report.created_at}</span> : null }
      </div>
      <div className="card-body">
        <div className="nav-tabs-navigation">
          <div className="nav-tabs-wrapper">
            <ul id="tabs" className="nav nav-tabs" role="tablist">
              <li className="nav-item" onClick={ () =>  setGrowthActive('diagnosis')}>
                <a className={growthActive === 'diagnosis' ? 'nav-link active' : 'nav-link'} data-toggle="tab" href="#diagnosis" role="tab" aria-expanded={growthActive === 'diagnosis' ? true : false}>Detail</a>
              </li>
              <li className="nav-item" onClick={ () => setGrowthActive('score')}>
                <a className={growthActive === 'score' ? 'nav-link active' : 'nav-link'} data-toggle="tab" href="#score" role="tab" aria-expanded={growthActive === 'score' ? true : false}>Score</a>
              </li>
              <li className="nav-item" onClick={ () => setGrowthActive('image')}>
                <a className={growthActive === 'image' ? 'nav-link active' : 'nav-link'} data-toggle="tab" href="#image" role="tab" aria-expanded={growthActive === 'image' ? true : false}>Image</a>
              </li>
            </ul>
          </div>
        </div>
        <div id="my-tab-content" className="tab-content text-center">
          <div className={growthActive === 'diagnosis' ? 'tab-pane active' : 'tab-pane'} id="detail" role="tabpanel" aria-expanded={growthActive === 'diagnosis' ? true : false}>
            <div>
              <span>Diagnosis</span>
              <h5>
                {report ? report.diagnosis : 'N/A' }
              </h5>
            </div>
            <div>
              <span>Comments</span>
              <h5>
                {report ? report.comments : 'N/A'}
              </h5>
            </div>
          </div>
          <div className={growthActive === 'score' ? 'tab-pane active' : 'tab-pane'} id="score" role="tabpanel" aria-expanded={growthActive === 'score' ? true : false}>
              <h6>Phase</h6>
              <span>PHASE NAME</span>
              <h6>Week in Phase</h6>
              <span>Week 6</span>
              <h6>Average Daily Temp</h6>
              <span>78 F</span>
              <h6>Average Daily Humidity</h6>
              <span>20%</span>
              <h6>Times Watered</h6>
              <span>6</span>
              <h6>Times Fed</h6>
              <span>6</span>
          </div>
          <div className={growthActive === 'image' ? 'tab-pane active' : 'tab-pane'} id="image" role="tabpanel" aria-expanded={growthActive === 'image' ? true : false}>
           <img src={image}></img>
          </div>
        </div>
      </div>
    </>
  )
}

export default PlantGrowthSummary