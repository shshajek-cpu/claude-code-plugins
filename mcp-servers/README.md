# MCP Servers Configuration

Claude Code에서 사용하는 MCP (Model Context Protocol) 서버 설정 모음.
새로운 작업환경에서 클론 후 install 스크립트로 한 번에 설치 가능.

## 설치된 MCP 서버

| 이름 | 패키지 | 설명 | 토큰 필요 |
|------|--------|------|-----------|
| supabase | `@supabase/mcp-server-supabase` | Supabase DB 관리 | Yes |
| github | `@modelcontextprotocol/server-github` | GitHub 이슈/PR 관리 | Yes |
| context7 | `@upstash/context7-mcp` | 라이브러리 문서 검색 | No |
| sequential-thinking | `@modelcontextprotocol/server-sequential-thinking` | 순차적 사고 프로세스 지원 | No |
| desktop-commander | `@anthropic/desktop-commander-mcp` | 데스크탑 명령어 실행 | No |
| stitch | `@anthropic/stitch-mcp` | Stitch 통합 | No |

## 설치된 Skills (npx skills)

| 스킬 | 출처 | 설명 |
|------|------|------|
| vercel-react-best-practices | `vercel-labs/skills` | React/Next.js 성능 최적화 가이드라인 |
| web-design-guidelines | `vercel-labs/skills` | 웹 UI/UX 디자인 가이드라인 |

> `npx skills find <키워드>`로 추가 스킬 검색 가능

## 포함된 도구

### Agentation

AI 코딩 에이전트를 위한 시각적 피드백 도구. 웹페이지 요소를 클릭하고 주석을 달아 구조화된 출력을 생성합니다.

**주요 기능:**
- 클릭하여 요소 주석 달기 (자동 선택자 식별)
- 텍스트 선택으로 특정 콘텐츠 주석
- 드래그로 여러 요소 선택
- CSS 애니메이션 일시정지
- 선택자, 위치, 컨텍스트가 포함된 마크다운 출력

**사용법:**
```tsx
import { Agentation } from 'agentation';

function App() {
  return (
    <>
      <YourApp />
      <Agentation />
    </>
  );
}
```

**설치:** `npm install agentation -D`

**문서:** [agentation.dev](https://agentation.dev) | **출처:** [GitHub](https://github.com/benjitaylor/agentation)

### Design-to-Code CLI

Gemini로 디자인하고 Claude로 코드를 생성하는 CLI 도구. **API 키 없이 OAuth 로그인으로 사용 가능!**

| 서비스 | OAuth 로그인 | API Key |
|--------|--------------|---------|
| Gemini | `gcloud auth application-default login` | `GEMINI_API_KEY` |
| Claude | `claude login` | `ANTHROPIC_API_KEY` |

**주요 명령어:**
```bash
d2c generate                    # 인터랙티브 모드
d2c workflow "대시보드 페이지"    # 전체 워크플로우
d2c design generate "랜딩 페이지" # Gemini로 디자인
d2c code generate -d spec.json   # Claude로 코드 생성
```

**설치:**
```bash
cd design-to-code
npm install && npm run build && npm link
```

**지원 프레임워크:** Next.js, React, Vue 3

## 빠른 설치

### 1. 클론

```bash
git clone https://github.com/shshajek-cpu/mcp-servers.git
cd mcp-servers
```

### 2. 토큰이 필요한 서버용 환경변수 설정

```bash
# Windows
set SUPABASE_ACCESS_TOKEN=your_token_here
set GITHUB_TOKEN=your_token_here

# Mac/Linux
export SUPABASE_ACCESS_TOKEN=your_token_here
export GITHUB_TOKEN=your_token_here
```

### 3. 설치 스크립트 실행

```bash
# Windows
install.bat

# Mac/Linux
bash install.sh
```

토큰 환경변수가 없으면 해당 서버는 건너뜁니다.

## 수동 설치

```bash
# 토큰 불필요
claude mcp add context7 -- npx -y @upstash/context7-mcp
claude mcp add sequential-thinking -- npx -y @modelcontextprotocol/server-sequential-thinking
claude mcp add desktop-commander -- npx -y @anthropic/desktop-commander-mcp
claude mcp add stitch -- npx -y @anthropic/stitch-mcp

# 토큰 필요 (환경변수 먼저 설정)
claude mcp add supabase -e SUPABASE_ACCESS_TOKEN=$SUPABASE_ACCESS_TOKEN -- npx @supabase/mcp-server-supabase
claude mcp add github -e GITHUB_TOKEN=$GITHUB_TOKEN -- npx @modelcontextprotocol/server-github
```

## MCP 서버 관리 명령어

```bash
claude mcp list          # 목록 확인
claude mcp add <name>    # 서버 추가
claude mcp remove <name> # 서버 제거
```

## Skills 관리 명령어

```bash
npx skills find <query>  # 스킬 검색
npx skills add <package> # 스킬 설치
npx skills check         # 업데이트 확인
npx skills update        # 모든 스킬 업데이트
```

## 참고 링크

- [MCP 공식 문서](https://modelcontextprotocol.io/)
- [Supabase MCP](https://github.com/supabase/mcp-server-supabase)
- [Context7](https://github.com/upstash/context7)
- [Vercel Skills](https://github.com/vercel-labs/skills)
