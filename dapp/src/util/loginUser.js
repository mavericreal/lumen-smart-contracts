import { uport } from './connectors.js'
import { browserHistory } from 'react-router'

export const USER_LOGGED_IN = 'USER_LOGGED_IN'
function userLoggedIn(user) {
  return {
    type: USER_LOGGED_IN,
    payload: user
  }
}

export function loginUser() {

  uport.requestCredentials({
      requested: ['name', 'avatar', 'phone', 'country', 'email'],
      notifcations: true
    }).then((credentials) => {
    userLoggedIn(credentials);

    console.log("credentials=", credentials);

    // Used a manual redirect here as opposed to a wrapper.
    // This way, once logged in a user can still access the home page.
    var currentLocation = browserHistory.getCurrentLocation()

    if ('redirect' in currentLocation.query)
    {
      return browserHistory.push(decodeURIComponent(currentLocation.query.redirect))
    }

    return browserHistory.push('/dashboard')
  })

}
