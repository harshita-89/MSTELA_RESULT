# MSTELA Monorepo

This repository is split into separate frontend and backend apps:

- `frontend/` -> Flutter Web/mobile app
- `backend/` -> Flask code execution API (`/execute`)

## Local Development

### Frontend (Flutter)

```bash
cd frontend
flutter pub get
# (run just once because it takes too long)
flask --app app run --host=0.0.0.0 --port=8080
flutter run -d chrome --dart-define=CODE_EXEC_ENDPOINT=http://localhost:8080/execute

# by default Flask server is currently running on:
# http://127.0.0.1:5000 not http://localhost:8080. So if your backend has an /execute route, the command would likely need to be the above mentioned
```

### Backend (Flask)

```bash
cd backend
pip install -r requirements.txt
# run above once or when changing the dependancies
#gunicorn -w 2 -b 0.0.0.0:8080 app:app -> this is a linux command; for windows use
python app.py
```

## Deploy Frontend to Vercel

Set the Vercel project root to `frontend`.

- Root Directory: `frontend`
- Build Command: `flutter build web --release`
- Output Directory: `build/web`
- Environment Variable:
  - `CODE_EXEC_ENDPOINT=https://<your-render-service>.onrender.com/execute`

## Deploy Backend to Render

Create a Web Service from this repo using:

- Root Directory: `backend`
- Runtime: `Docker` (recommended since this app needs Node/GCC/JDK too)
- Exposed port: `8080`
- Environment variable:
  - `CODE_EXEC_TIMEOUT_SECONDS=6`
  - `MAX_CONCURRENT_EXECUTIONS=6`
  - `RATE_LIMIT_MAX_REQUESTS=20`
  - `RATE_LIMIT_WINDOW_SECONDS=60`
  - `MAX_REQUEST_BYTES=200000`
  - `MAX_SOURCE_CHARS=50000`
  - `MAX_STDIN_CHARS=20000`

The backend endpoint will be:

`https://<your-render-service>.onrender.com/execute`

Use that URL as `CODE_EXEC_ENDPOINT` for the frontend deployment.
