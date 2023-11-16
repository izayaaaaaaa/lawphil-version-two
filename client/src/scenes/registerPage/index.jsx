import 'bootstrap/dist/css/bootstrap.min.css';
import '../../styles/general.css';
import '../../styles/register.css';
import Form from "./Form";
import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';

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
        
        const requestOptions = {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(formData),
        };
        
        const url = `http://localhost/LawPhil2.0_Server/userCRUD/registerUser.php`;
        
        try {
            const response = await fetch(url, requestOptions);
            
            if (!response.ok) {
                throw new Error(`Network response was not ok`);
            }
            
            const responseData = await response.json(); 
            
            if (responseData.success) {
                console.log("Registration successful!");
                navigate('/');
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