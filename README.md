# Django-NuxtJS boilerplate


![Django Logo](https://www.djangoproject.com/m/img/logos/django-logo-negative.png) ![NuxtJS Logo](https://nuxtjs.ir/logos/nuxt-icon.png)

Welcome to the **Django-NuxtJS Boilerplate**, a powerful and flexible starting point for building web applications that combine the backend capabilities of Django with the frontend interactivity of NuxtJS. This boilerplate provides you with a structured setup and integration between these two frameworks, allowing you to focus on building your application's features rather than setting up the foundational structure.

## Features

- **Django Backend**: Utilize the robust capabilities of Django to handle authentication, data models, API endpoints, and more.

- **NuxtJS Frontend**: Leverage the versatility of NuxtJS to create dynamic and responsive frontend interfaces using Vue.js.

- **API Communication**: Seamless communication between the Django backend and NuxtJS frontend through well-defined API endpoints.

- **User Authentication**: Pre-configured user authentication system using Django's built-in authentication and token-based authentication for API requests.

- **Database Integration**: Integration with a relational database of your choice, thanks to Django's ORM.

- **State Management**: Vuex setup for centralized state management in your NuxtJS application.

- **Routing**: Configured routing setup for both Django and NuxtJS, ensuring consistent navigation.

- **Styling**: Basic styling setup with a responsive design to help you kickstart your UI.

## Prerequisites

- [Python](https://www.python.org/) and [pip](https://pip.pypa.io/en/stable/installing/) for setting up and running the Django backend.

- [Node.js](https://nodejs.org/) and [npm](https://www.npmjs.com/) for setting up and running the NuxtJS frontend.

## Getting Started

1. **Clone the Repository**: Begin by cloning this repository to your local machine.

```bash
git clone https://github.com/iasoloteravision/django-nuxtjs-boilerplate.git
cd django-nuxtjs-boilerplate
```

2. **give all permissions to installation file**:

```bash
chmod u+x createdjangoandnuxtproject.sh
```
3. **Run the .sh file**

``` ./createdjangoandnuxtproject.sh```

3. **Congratulations! You have installed the basic boilerplate!**:

   - Now run the Django development.
   ```bash
   cd backend
   python3 manage.py runserver
   ```

   - Open a new terminal and run the NuxtJS development server.
   ```bash
   cd backend ,if you followed the instructions or open your NuxtJs folder

   npm run dev
   ```

4. **Access Your App**:

   - Django backend: http://localhost:8000/
   - NuxtJS frontend: http://localhost:3000/

## Configuration

- Django settings can be configured in `backend/settings.py`.
- NuxtJS configuration is available in `frontend/nuxt.config.js`.

## Deployment

For deployment, you'll need to configure your server settings, set up a production-ready database, and consider using a production-grade web server like Gunicorn for Django and a reverse proxy for NuxtJS.

## Contributing

Contributions are welcome! If you find bugs or want to add new features, please create an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

---

Enjoy building your web application with the Django-NuxtJS Boilerplate! If you have any questions or need further assistance, feel free to reach out.
