const createIncident = (incident_id, incident) => {
  fetch('/api/incidents'), {
    method: 'POST',
    credentials: 'same-origin'
  }
  .then(response => response.json())
  .then(json => {
    return json;
  })
  .catch(error => {
    console.error(error);
  });
}

const showIncidents = () => {
  fetch('/api/incidents'),{
    method: 'GET',
    credentials: 'same-origin'
  }
  .then(response => response.json())
  .then(json => {
    return json;
  })
  .catch(error => {
    console.error(error);
  });
}

const registerUser = () => {
  fetch('/api/users'), {
    method: 'POST',
    credentials: 'same-origin'
  }
  .then(response => response.json())
  .then(json => {
    return json;
  })
  .catch(error => {
    console.error(error);
  });
}

const signIn = () => {
  fetch('/api/session'), {
    method: 'POST',
    credentials: 'same-origin'
  }
  .then(response => response.json())
  .then(json => {
    return json;
  })
  .catch(error => {
    console.error(error);
  });
}

const signOut = (session_id) => {
  fetch(`/api/session/${session_id}`),{
    method: 'DELETE',
    credentials: 'same-origin'
  }
  .then(response => response.json())
  .then(json => {
    return json;
  })
  .catch(error => {
    console.error(error);
  });
}