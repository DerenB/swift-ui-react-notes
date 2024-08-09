import { useState } from "react"

const Home = () => {

    const [name, setName] = useState()

    const handleClick = () => {
        setName('Yoshi')
    }

    const handleClickAgain = (name) => {
        console.log(name)
    }

    return (
        <div className="home">
            <h2>Homepage</h2>
            <button onClick={handleClick}>Click Me</button>

            <button onClick={() => handleClickAgain('Luigi')}>
                Click me Again
            </button>
            
            <div>
                {name}
            </div>
        </div>
    )
}

export default Home