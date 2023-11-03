// navbar
import React from 'react';
import { useNavigate } from 'react-router-dom';
import { Link, useLocation } from 'react-router-dom';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faSearch } from '@fortawesome/free-solid-svg-icons'; // Assuming you have the search icon imported
import 'bootstrap/dist/css/bootstrap.min.css';
import 'bootstrap/dist/js/bootstrap.bundle.min.js';
import '../../styles/general.css';
import '../../styles/navbar.css';

const Navbar = () => {
  const location = useLocation();
  const navigate = useNavigate();

  const handleLawsButtonClick = () => {
    const queryParams = new URLSearchParams();
    queryParams.append('searchQuery', '');
    navigate(`/search-results/?${queryParams.toString()}`);
  };

  return (
    <nav className="navbar navbar-expand-lg navbar-light bg-light">
      <div className="container-fluid">
        
        <div className="btn-group">
          <div>
            <img src="/logo.png" className="logo-sm mx-2"/>
          </div>
          <ul className="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <li><Link to="/link1">Log In</Link></li>
            <li><Link to="/admin-dashboard">Admin Dashboard</Link></li>
            <li><Link to="/link3">Example</Link></li>
          </ul>
        </div>

        <Link className="navbar-brand" to="/">ARELLANO LAW FOUNDATION</Link>

        {location.pathname.startsWith("/search-results") ? (
          <Link className="nav-link active" aria-current="page" to="/">
            <FontAwesomeIcon icon={faSearch} />
          </Link>
        ) : (
          <button className="nav-link active" onClick={handleLawsButtonClick}>
            LAWS
          </button>
        )}
      </div>
    </nav>
  );
};

export default Navbar;
