import React, { useContext, useEffect, useState } from 'react';
import { UserContext } from '../../userContext';
import { useNavigate } from "react-router-dom";
import "bootstrap/dist/css/bootstrap.min.css";
import '../../styles/general.css';
import '../../styles/login.css';
import Form from "./Form";
import axios from 'axios';
// TODO:
//  1. feature to navigate to admin dashboard if account is an admin account

// FIXME: 
//  1. login form position is off

const LoginPage = () => {
    const { user, dispatch } = useContext(UserContext);   
    const navigate = useNavigate();
    
    const [formData, setFormData] = useState({
        email: '',
        password: '',
    });    

    const [shouldNavigate, setShouldNavigate] = useState(false);

    const handleChange = (e) => {
        setFormData({
            ...formData,
            [e.target.id]: e.target.value,
        });
    };

    // This effect redirects the user after login, based on their role
    useEffect(() => {
        if (user && shouldNavigate) {
            console.log('Preparing to navigate...');  // Log for debugging
            console.log('Current user object:', user);
            // Reset the navigation flag
            setShouldNavigate(false);

            // Determine the destination based on the user's role
            const destination = user.is_admin === 1 ? '/admin-dashboard' : '/search';

            // Navigate to the new destination
            try {
                console.log('Navigated to:', destination);
                navigate(destination);
            } catch (error) {
                console.error('Navigation error:', error);
            }
        }
    }, [user, navigate, shouldNavigate]);
    
    const handleSubmit = async (e) => {
        e.preventDefault();
        
        const url = `http://localhost:8000/api/login`;
        
        try {
            const response = await axios.post(url, formData, {
                headers: {
                    'Content-Type': 'application/json',
                },
            });
            const responseData = response.data;

            console.log('Response Data: ', responseData);
            
            if (responseData.token) {  
                const newUser = {
                    id: responseData.id,  
                    is_admin: responseData.is_admin,
                };
    
                console.log('Dispatching user:', newUser);
                dispatch({
                    type: 'SET_USER',
                    payload: newUser,
                });

                localStorage.setItem('auth_token', responseData.token);
    
                setShouldNavigate(true);
            } else {
                console.log("Login failed:", responseData.message);
            }
        } catch (error) {
            console.error("Login failed:", error.message);
        }
    };
    
    return (
        <div>
            <div className="container-user d-flex align-items-center min-vh-100">
                <Form
                    className="text-center"
                    formData={formData}
                    handleChange={handleChange}
                    handleSubmit={handleSubmit}
                />
            </div>
        </div>
    );
};
    
export default LoginPage;