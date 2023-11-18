import React, { useContext, useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { UserContext } from '../../userContext';
import Form from './Form';
import axios from 'axios';

const UserProfile = () => {
    const [userData, setUserData] = useState(null);
    const [isEditing, setIsEditing] = useState(false);
    const [editedData, setEditedData] = useState({
        username: '',
        email: '',
    });
    const navigate = useNavigate();
    const { user } = useContext(UserContext);
    const userID = user.id;

    // const [modifiedUser, setModifiedUser] = useState(false);
    
    useEffect(() => {
        console.log('User ID:', userID);

        // Check for a valid userId before proceeding
        if (!userID) {
            console.error('Invalid user ID');
            return;
        }

        // Asynchronous function to fetch user data
        const fetchData = async () => {
            try {
                const token = localStorage.getItem('auth_token');
                const response = await axios.get(`http://localhost:8000/api/users/${userID}`, {
                    headers: {
                        'Authorization': `Bearer ${token}`,
                    },
                });
                if (response.status !== 200) {
                    throw new Error(`HTTP error! status: ${response.status}`);
                }
                const data = response.data;
                if (data.error) {
                    throw new Error(`Backend error! ${data.error}`);
                }
                setUserData(data);
                setEditedData(data); // Initialize editedData with fetched user data
            } catch (error) {
                console.error('Error fetching user data:', error);
            }
        };

        fetchData();
    }, [userID]); // Dependency array for effect
    
    const handleEditClick = () => {
        setIsEditing(true);
    };
    
    // Handler for saving updates to the user profile
    const handleSaveClick = async () => {
        try {
            const response = await fetch(`http://localhost/LawPhil2.0_Server/updateUserProfile.php`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    id: userID,
                    username: editedData.username,
                    email: editedData.email,
                }),
            });
            if (!response.ok) {
                throw new Error(`HTTP error! status: ${response.status}`);
            }
            const data = await response.json();
            if (data.error) {
                throw new Error(`Backend error! ${data.error}`);
            }
            console.log('Update response:', data);
            setIsEditing(false); // Exit editing mode after successful update
        } catch (error) {
            console.error('Error updating user profile:', error);
        }
    };
    
    const handleDeleteClick = async () => {
        try {
            const response = await fetch(`http://localhost/LawPhil2.0_Server/deleteUserProfile.php`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    id: userID,
                }),
            });
            if (!response.ok) {
                throw new Error(`HTTP error! status: ${response.status}`);
            }
            const data = await response.json();
            if (data.error) {
                throw new Error(`Backend error! ${data.error}`);
            }
            console.log('Delete response:', data);
            // Assuming user is logged out upon deletion, clear local storage and redirect
            localStorage.clear();
            navigate('/');
        } catch (error) {
            console.error('Error deleting user profile:', error);
        }
    };
    
    // Handler for form input changes
    const handleInputChange = (e) => {
        const { name, value } = e.target;
        setEditedData((prevData) => ({
            ...prevData,
            [name]: value,
        }));
    };
    
    // Render loading state if user data is not yet available
    if (!userData) {
        return <div>Loading...</div>;
    }

    // Render the user profile form
    return (
        <div>
            <h1>User Profile</h1>
            <Form
                isEditing={isEditing}
                editedData={editedData}
                handleInputChange={handleInputChange}
                handleSaveClick={handleSaveClick}
                userData={userData} 
                handleEditClick={handleEditClick}
                handleDeleteClick={handleDeleteClick}
            />
        </div>
    );
};

export default UserProfile;