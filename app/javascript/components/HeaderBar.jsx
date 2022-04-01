import React from 'react'

const ShowHeader = ({setActive}) => {
  return(
    <>
      <button className="overview btn btn-sm" onClick={() => setActive("overview")}>Overview</button>
      <button className="details btn btn-sm" onClick={() => setActive("schedule")}>Schedule</button>
      <button className="plan btn btn-sm" onClick={() => setActive("plan")}>Feeding Plan</button>
      <button className="charts btn btn-sm" onClick={() => setActive("charts")}>Charts</button>
    </>
  )
}

export default ShowHeader