@echo off
REM MCP Servers Installation Script for Windows
REM Usage: install.bat
REM Note: supabase/github 서버는 환경변수에 토큰 설정 필요

echo Installing MCP servers...

REM === 토큰 필요 없는 서버 ===
call claude mcp add context7 -- npx -y @upstash/context7-mcp
call claude mcp add sequential-thinking -- npx -y @modelcontextprotocol/server-sequential-thinking
call claude mcp add desktop-commander -- npx -y @anthropic/desktop-commander-mcp
call claude mcp add stitch -- npx -y @anthropic/stitch-mcp

REM === 토큰 필요한 서버 ===
REM 환경변수 SUPABASE_ACCESS_TOKEN, GITHUB_TOKEN 을 먼저 설정하세요
if defined SUPABASE_ACCESS_TOKEN (
    call claude mcp add supabase -e SUPABASE_ACCESS_TOKEN=%SUPABASE_ACCESS_TOKEN% -- npx @supabase/mcp-server-supabase
    echo [OK] supabase installed
) else (
    echo [SKIP] supabase - SUPABASE_ACCESS_TOKEN 환경변수를 설정하세요
)

if defined GITHUB_TOKEN (
    call claude mcp add github -e GITHUB_TOKEN=%GITHUB_TOKEN% -- npx @modelcontextprotocol/server-github
    echo [OK] github installed
) else (
    echo [SKIP] github - GITHUB_TOKEN 환경변수를 설정하세요
)

echo.
echo Installing Skills (npx skills)...

REM === Agent Skills ===
call npx -y skills add vercel-labs/skills@vercel-react-best-practices
echo [OK] vercel-react-best-practices installed
call npx -y skills add vercel-labs/skills@web-design-guidelines
echo [OK] web-design-guidelines installed

echo.
echo Done! Checking installed servers...
call claude mcp list

pause
