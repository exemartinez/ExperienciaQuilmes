# Experiencia Quilmes

`Experiencia Quilmes` is a hackathon prototype built for the first Eklos Hackathon in Buenos Aires for the Quilmes challenge in 2016. The idea was to extend the beer-drinking experience at home: a bottle would include a unique code that unlocks a microsite where friends upload a photo, add a shared phrase, and later order a personalized beer glass that preserves that moment.

The repository contains the original web prototype implemented as a Java web application packaged as a WAR, with mostly static HTML/JSP screens and frontend assets managed in the old Bower style. The product copy and screens are in Spanish.

## What the Prototype Does

The current app behaves as a linear clickable flow:

1. Landing page (`index.jsp`)
2. Code entry (`ingresaCodigo.html`)
3. Photo upload screen (`photoUpload.html`)
4. Phrase entry (`frase.html`)
5. Phrase confirmation with JSP rendering (`confirmacionFotoFrase.jsp`)
6. Glass selection (`elegirVaso.html`)
7. Shipping and payment form (`datosPago.html`)
8. Thank-you screen (`gracias.html`)

This is best understood as a product demo / prototype, not a complete transactional application.

## Tech Stack

- Java 8 era servlet web app
- Maven WAR packaging
- JSP + static HTML
- AngularJS 1.x
- jQuery
- Bootstrap 3
- `webapp-runner` for simple deployment

## Repository Layout

- `src/main/webapp/`: application pages, images, JS, and vendored frontend dependencies
- `src/main/webapp/js/app.js`: AngularJS code; partly unrelated to the visible prototype and not fully wired to the screens
- `src/main/webapp/WEB-INF/web.xml`: minimal servlet descriptor
- `pom.xml`: Maven build and WAR packaging configuration
- `Procfile`: Heroku-style command using `webapp-runner`
- `target/`: checked-in build artifacts, including a WAR and dependency jars

## Current State

What is implemented:

- The complete UI journey is present as navigable pages
- Static assets for the branded experience are included
- A JSP confirmation page injects the submitted phrase via query string
- A prebuilt WAR exists under `target/`

Shortcoming and improvement areas:

- The photo upload is UI-only; there is no real backend upload handling in this repo
- Forms mostly navigate between pages and do not persist data
- `js/app.js` includes leftover code from another AngularJS app (`linkeddynMsgsApp`) and is not a clean representation of this prototype
- Several pages reference `ngUpload`, but that dependency is not present in `bower_components`
- `target/` is committed, which is useful for archival/demo purposes but unusual for an actively maintained app

## Prerequisites

For working with the project from source:

- Java 8 or compatible JDK/JRE
- Maven 3.x

Notes from this repository snapshot:

- Java is available in the current environment
- Maven was not installed in the environment used to inspect this repo, so the build steps below are documented from the project configuration rather than verified live

## Running the App

### Option 1: Run from source with Maven

Build the WAR:

```bash
mvn package
```

Run it with the downloaded `webapp-runner` jar produced during packaging:

```bash
java -jar target/dependency/webapp-runner.jar --port 8080 target/*.war
```

Then open:

```text
http://localhost:8080
```

### Option 2: Run the checked-in artifact directly

Because the repository already includes the packaged WAR and runner jar under `target/`, you can run the archived build directly:

```bash
java -jar target/dependency/webapp-runner.jar --port 8080 target/ExperienciaQuilmes.war
```

### Option 3: Procfile / Heroku-style command

The repository includes:

```bash
java $JAVA_OPTS -jar target/dependency/webapp-runner.jar --port $PORT target/*.war
```

That matches a simple platform deployment flow where the WAR is built first and then launched by `webapp-runner`.

## Development Notes

- There is no modern frontend build pipeline here; assets are committed directly.
- Frontend libraries are vendored in `src/main/webapp/bower_components/`.
- The app is mostly static, so many changes can be made by editing HTML/JSP/CSS directly.
- `confirmacionFotoFrase.jsp` is the main page with server-side rendering behavior.

## TO-DOs

- Remove or isolate unrelated code from `src/main/webapp/js/app.js`
- Replace missing/dead frontend dependencies such as `ngUpload`
- Move committed build outputs out of version control
- Add a real backend for code validation, photo storage, order persistence, and payment handling
- Consolidate styles and shared layout fragments across pages

## Historical Context

This prototype was created for the Quilmes challenge during the first Eklos Hackathon in Buenos Aires (2016). 
The concept reached the top 5 ideas in the challenge.

## Spanish Original Project Summary

Below is the original idea summary, lightly normalized for readability:

> El desafio era proporcionar una experiencia superadora de tomar cerveza en casa. Quilmes, como marca de cerveza, conoce muy bien como mejorar la experiencia del consumidor fuera de la casa, pero conocen poco y han hecho pocas experiencias sobre como mejorar el tomarse unas birras con amigos en una fiesta casera.
>
> La idea que propusimos fue generar un token fisico que inmortalizara el momento que pasamos con esas personas en un sitio web. Desde la botella que se consume, se podia extraer un codigo que permitiera al consumidor acceder a un sitio donde subir su foto y una frase de recuerdo.
>
> Eso daria la posibilidad de comprar un vaso de cerveza personalizado con un QR code o un link corto a la foto y la frase compartida por todos los que tomaron esa birra.
