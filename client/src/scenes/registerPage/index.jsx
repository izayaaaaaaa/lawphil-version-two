import 'bootstrap/dist/css/bootstrap.min.css';
import '../../styles/general.css';
import '../../styles/register.css';
import Form from "./Form";
import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import axios from 'axios';

const RegisterPage = () => {
    const navigate = useNavigate();
    
    const [formData, setFormData] = useState({
        email: '',
        username: '',
        password: '',
        // confirmPassword: '',
    });
    
    const handleChange = (e) => {
        setFormData({
            ...formData,
            [e.target.id]: e.target.value,
        });
    };
    
    // REGISTER API
    const handleSubmit = async (e) => {
        e.preventDefault();
        
        const url = `http://localhost:8000/api/register`;
        
        try {
            const response = await axios.post(url, formData);
            
            if (response.data.success) {
                console.log("Registration successful");
                navigate('http://localhost:3000/');
            } 
        } catch (error) {
            console.log("Registration failed:", error.message);
        }
    };
    
    return (
        <div className="container-fluid d-flex align-items-center justify-content-center">
            <Form
                formData={formData}
                handleChange={handleChange}
                handleSubmit={handleSubmit}
            />
        </div>
    );
};
    
export default RegisterPage;