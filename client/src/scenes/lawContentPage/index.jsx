import React, { useState, useEffect } from 'react';
import { useParams } from 'react-router-dom';
import '../../styles/general.css';
import '../../styles/content.css';
import Form from './Form';
import axios from 'axios';

  const formatContent = (content) => {
    const sectionPattern = /Section \d+\./g;
    return content.replace(sectionPattern, (match) => `<br /><br /><strong>${match}</strong><br />`);
  };

  const fetchLawContent = async (lawID, setLawContent, setFormattedContent) => {
    try {
      const response = await axios.get(`http://localhost/LawPhil2.0_Server/lawCRUD/getSpecificLaw.php`, {
        params: {
          lawID: lawID, 
        },
      });

      // log lawID
      console.log('LawContentPage lawID:', lawID);
  
      if (response.status === 200) {
        const data = response.data;
        const content = data.content;
        const formatted = formatContent(content);
        setLawContent(data);
        setFormattedContent(formatted);
      } else {
        // Handle unexpected status codes here
        console.error('Unexpected status code:', response.status);
      }
    } catch (error) {
      // Handle Axios-related errors
      console.error('Error fetching law content:', error);
      if (error.response) {
        console.error('Response data:', error.response.data);
        console.error('Response status:', error.response.status);
      }
    }
  };

const LawContentPage = () => {
  const { lawID } = useParams();
  const [lawContent, setLawContent] = useState(null);
  const [formattedContent, setFormattedContent] = useState(null);

  useEffect(() => {
    fetchLawContent(lawID, setLawContent, setFormattedContent);

    const interval = setInterval(() => {
      fetchLawContent(lawID, setLawContent, setFormattedContent);
    }, 5000);

    return () => {
      clearInterval(interval);
    };
  }, [lawID]);

  return (
    <Form 
      lawContent={lawContent}
      formattedContent={formattedContent}
    />
  );
};

export default LawContentPage;
