
import Navbar from '../components/Navbar'
import Home from '../components/Home'
import List from '../components/List'

function App() {
  return (
    <div className='App'>
      <Navbar />
      <div className='content'>
        <Home/> 
        <List />
      </div>
    </div>
  )
}

export default App
