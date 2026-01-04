@echo off
echo ================================
echo OpenForge Type Check & Dev Start
echo ================================

REM Run TypeScript type check
echo Running TypeScript checks...
call npx tsc --noEmit

IF %ERRORLEVEL% NEQ 0 (
    echo.
    echo ❌ TypeScript errors detected. Fix them before running the app.
    exit /b %ERRORLEVEL%
)

REM Start dev server
echo.
echo ✅ TypeScript check passed.
echo Starting development server...
call npm run dev
