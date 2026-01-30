# Claude Code Organized Plugins

이미지에 있는 인기 스킬들을 용도별로 묶은 플러그인 모음입니다.

## 플러그인 목록

### 1. frontend-development-plugin (프론트엔드 개발)
React, Next.js, React Native 개발을 위한 베스트 프랙티스

**포함된 스킬:**
- `react-best-practices` - React/Next.js 성능 최적화 (vercel-labs)
- `composition-patterns` - 컴포넌트 구성 패턴 (vercel-labs)
- `react-native-skills` - React Native 개발 가이드 (vercel-labs)

### 2. design-ux-plugin (디자인 & UX)
웹 디자인과 UI/UX 베스트 프랙티스

**포함된 스킬:**
- `web-design-guidelines` - 웹 디자인 가이드라인 (vercel-labs)
- `frontend-design` - 프론트엔드 디자인 패턴 (anthropic)
- `ui-ux-pro-max` - 고급 UI/UX 디자인 (nextlevelbuilder)

### 3. marketing-seo-plugin (마케팅 & SEO)
SEO 최적화와 마케팅 전략 수립

**포함된 스킬:**
- `seo-audit` - SEO 감사 및 최적화 (coreyhaines31)
- `audit-website` - 웹사이트 감사 (squirrelscan)
- `analytics-tracking` - 분석 추적 설정 (coreyhaines31)
- `copywriting` - 카피라이팅 (coreyhaines31)
- `content-strategy` - 콘텐츠 전략 (coreyhaines31)

### 4. backend-database-plugin (백엔드 & 데이터베이스)
Supabase와 PostgreSQL 베스트 프랙티스

**포함된 스킬:**
- `supabase-postgres-best-practices` - Supabase/Postgres 최적화 (supabase)

### 5. productivity-tools-plugin (생산성 도구)
스킬 검색, 생성, 브라우저 자동화

**포함된 스킬:**
- `find-skills` - 스킬 검색 도구 (vercel-labs)
- `skill-creator` - 스킬 생성 도우미 (anthropic)
- `agent-browser` - 브라우저 자동화 (vercel-labs)

### 6. document-office-plugin (문서 작업)
오피스 문서 생성 및 편집

**포함된 스킬:**
- `pdf` - PDF 생성/편집 (anthropic)
- `docx` - Word 문서 생성 (anthropic)
- `pptx` - PowerPoint 생성 (anthropic)
- `xlsx` - Excel 스프레드시트 (anthropic)

### 7. media-creation-plugin (미디어 제작)
비디오, 애니메이션 등 미디어 콘텐츠 제작

**포함된 스킬:**
- `remotion` - React로 프로그래매틱 비디오 생성 (remotion-dev)

---

## 사용 방법

### 방법 1: 프로젝트에 직접 복사
```bash
# 원하는 플러그인을 프로젝트의 .claude-plugins 디렉토리에 복사
cp -r plugins/organized/frontend-development-plugin ~/my-project/.claude-plugins/
```

### 방법 2: 글로벌 설치
```bash
# 사용자 전역 플러그인 디렉토리에 복사
cp -r plugins/organized/frontend-development-plugin ~/.claude/plugins/
```

### 방법 3: Claude Code에서 직접 로드
```bash
# Claude Code 실행 시 플러그인 디렉토리 지정
claude --plugin-dir ./plugins/organized/frontend-development-plugin
```

## 플러그인 조합 예시

### 풀스택 웹 개발
- `frontend-development-plugin`
- `backend-database-plugin`
- `design-ux-plugin`

### 마케팅 웹사이트 제작
- `design-ux-plugin`
- `marketing-seo-plugin`
- `document-office-plugin`

### 모바일 앱 개발
- `frontend-development-plugin` (react-native-skills 포함)
- `design-ux-plugin`

### 콘텐츠 크리에이터
- `media-creation-plugin`
- `document-office-plugin`

---

## 원본 저장소

| 스킬 | 저장소 |
|------|--------|
| vercel-react-best-practices | [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills) |
| web-design-guidelines | [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills) |
| remotion-best-practices | [remotion-dev/skills](https://github.com/remotion-dev/skills) |
| find-skills | [vercel-labs/skills](https://github.com/vercel-labs/skills) |
| frontend-design | [anthropics/skills](https://github.com/anthropics/skills) |
| agent-browser | [vercel-labs/agent-browser](https://github.com/vercel-labs/agent-browser) |
| skill-creator | [anthropics/skills](https://github.com/anthropics/skills) |
| seo-audit | [coreyhaines31/marketingskills](https://github.com/coreyhaines31/marketingskills) |
| audit-website | [squirrelscan/skills](https://github.com/squirrelscan/skills) |
| supabase-postgres-best-practices | [supabase/agent-skills](https://github.com/supabase/agent-skills) |
| ui-ux-pro-max | [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) |
