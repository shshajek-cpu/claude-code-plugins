#!/bin/bash
# MCP Servers Installation Script
# Usage: bash install.sh
# Note: supabase/github 서버는 환경변수에 토큰 설정 필요

echo "Installing MCP servers..."

# === 토큰 필요 없는 서버 ===
claude mcp add context7 -- npx -y @upstash/context7-mcp
claude mcp add sequential-thinking -- npx -y @modelcontextprotocol/server-sequential-thinking
claude mcp add desktop-commander -- npx -y @anthropic/desktop-commander-mcp
claude mcp add stitch -- npx -y @anthropic/stitch-mcp

# === 토큰 필요한 서버 ===
if [ -n "$SUPABASE_ACCESS_TOKEN" ]; then
  claude mcp add supabase -e SUPABASE_ACCESS_TOKEN="$SUPABASE_ACCESS_TOKEN" -- npx @supabase/mcp-server-supabase
  echo "[OK] supabase installed"
else
  echo "[SKIP] supabase - SUPABASE_ACCESS_TOKEN 환경변수를 설정하세요"
fi

if [ -n "$GITHUB_TOKEN" ]; then
  claude mcp add github -e GITHUB_TOKEN="$GITHUB_TOKEN" -- npx @modelcontextprotocol/server-github
  echo "[OK] github installed"
else
  echo "[SKIP] github - GITHUB_TOKEN 환경변수를 설정하세요"
fi

echo ""
echo "Installing Skills (npx skills)..."

# === Agent Skills ===
npx -y skills add vercel-labs/skills@vercel-react-best-practices
echo "[OK] vercel-react-best-practices installed"
npx -y skills add vercel-labs/skills@web-design-guidelines
echo "[OK] web-design-guidelines installed"

echo ""
echo "Done! Checking installed servers..."
claude mcp list
