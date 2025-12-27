# Portfolio

Personal portfolio site for Phillip Friis Petersen - Platform Engineer & Musician.

## Tech Stack

- Vue 3 + TypeScript
- Vite
- Netlify (hosting)

## Embedded Projects

The portfolio integrates 5 separate project repositories as embedded experiences at `/projects/[name]/`:

| Project | Description | Tech |
|---------|-------------|------|
| [FULL OF NOISE](https://github.com/cloutphilled/full-of-noise) | Custom music player | HTML, CSS, JS |
| [TELOS](https://github.com/cloutphilled/TELOS) | Interactive band experience with p5.js | HTML, CSS, JS, p5.js |
| [IT Support Docs](https://github.com/cloutphilled/it-support-docs) | VitePress documentation site | VitePress, Vue, Markdown |
| [SEMLER](https://github.com/cloutphilled/SEMLER-frontend) | Frontend interview case | HTML, CSS |
| [Pokemon Trainer App](https://github.com/cloutphilled/angular-pokemon-app) | Pokemon trainer app | Angular, TypeScript, Bootstrap, TailwindCSS |

## Local Development

```sh
npm install
npm run dev
```

### Build Projects Locally

To build all embedded projects and the portfolio:

```sh
npm run build:all
```

Or build projects separately then build the portfolio:

```sh
npm run build:projects  # PowerShell script - copies/builds all projects to public/projects/
npm run build           # Vite build
```

## Deployment

### Automatic (GitHub Actions)

Pushes to `main` trigger the GitHub Actions workflow which:
1. Clones all 5 project repositories
2. Builds projects that require it (it-support-docs, angular-pokemon-app)
3. Copies everything to `public/projects/`
4. Builds the portfolio
5. Deploys to Netlify

Requires secrets: `NETLIFY_AUTH_TOKEN`, `NETLIFY_SITE_ID`

### Manual

```sh
npm run deploy  # Builds all and deploys to Netlify
```

Requires [Netlify CLI](https://docs.netlify.com/cli/get-started/) to be installed and authenticated.
