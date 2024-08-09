import { useState, useEffect } from "react";

import BlogList from "./BlogList";

const List = () => {

    const [blogs, setBlogs] = useState([
        { title: 'Post 1', body: 'lorem upsum', author: 'mario', id: 1},
        { title: 'Post 2', body: 'lorem opsum', author: 'luigi', id: 2},
        { title: 'Post 3', body: 'lorem ipsum', author: 'yoshi', id: 3},
    ]);

    const [name, setName] = useState('mario')

    const handleDelete = (id) => {
        const newBlogs = blogs.filter(blog => blog.id !== id);

        setBlogs(newBlogs);
    }

    // Runs every time there is a re-render
    // Adding dependencies will call the useEffect when their state changes
    useEffect(() => {
        console.log('use effect ran')
    }, [name])

    return (
        <div className="home">
            <BlogList 
                blogs={blogs} 
                title="All Blogs" 
                handleDelete={handleDelete} 
            />

            <BlogList 
                blogs={blogs.filter((blog) => blog.author === 'mario')} 
                title="Mario's Blogs"
                handleDelete={handleDelete}
            />

            <button onClick={() => setName('Luigi')}>Change Name</button>
            <p>{name}</p>
        </div>
    )
}

export default List;