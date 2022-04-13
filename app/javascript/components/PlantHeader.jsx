import React from 'react'

const PlantHeader = ({plant, crop, variant}) => {
  return(
    <>
      <div style={{display: 'flex', justifyContent: 'space-around'}}>
        <div>
          <h5>{crop.name}</h5>
          <h6>Crop Scientific Name</h6>
          <p>{crop.description}</p>
        </div>
        <div>
          <h5>{variant.name}</h5>
          <h6>Variant Scientific Name</h6>
          <p>{variant.description}</p>
        </div>
      </div>
    </>
  )
}

export default PlantHeader