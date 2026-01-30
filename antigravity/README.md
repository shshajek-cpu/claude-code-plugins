# Antigravity Rules Collection

Google Antigravity IDE용 규칙 모음입니다.

## 설치 방법

### 프로젝트별 설치
```bash
# 프로젝트 폴더에 .agent/rules/ 생성 후 복사
mkdir -p .agent/rules
cp rules/react-best-practices.md .agent/rules/
cp rules/seo-audit.md .agent/rules/
```

### 전역 설치
```bash
# ~/.gemini/antigravity/rules/ 에 복사
mkdir -p ~/.gemini/antigravity/rules
cp rules/*.md ~/.gemini/antigravity/rules/
```

## 포함된 규칙

### Frontend Development
| 파일 | 설명 |
|------|------|
| `react-best-practices.md` | React/Next.js 성능 최적화 (92KB) |
| `composition-patterns.md` | React 컴포넌트 구성 패턴 (26KB) |
| `react-native-skills.md` | React Native/Expo 개발 (82KB) |

### Design & UX
| 파일 | 설명 |
|------|------|
| `web-design-guidelines.md` | 웹 디자인 가이드라인 |
| `frontend-design.md` | 프론트엔드 UI 디자인 |
| `ui-ux-pro-max.md` | UI/UX 종합 가이드 |

### Marketing & SEO
| 파일 | 설명 |
|------|------|
| `seo-audit.md` | SEO 감사 |
| `audit-website.md` | 웹사이트 종합 감사 |
| `analytics-tracking.md` | GA4/GTM 분석 설정 |
| `copywriting.md` | 마케팅 카피라이팅 |
| `content-strategy.md` | 콘텐츠 전략 |

### Backend & Database
| 파일 | 설명 |
|------|------|
| `supabase-postgres-best-practices.md` | Postgres 최적화 (55KB) |

### Productivity
| 파일 | 설명 |
|------|------|
| `find-skills.md` | 스킬 검색 |
| `skill-creator.md` | 스킬 생성 가이드 |
| `agent-browser.md` | 브라우저 자동화 |

### Documents
| 파일 | 설명 |
|------|------|
| `pdf.md` | PDF 생성/편집 |
| `docx.md` | Word 문서 |
| `pptx.md` | PowerPoint |
| `xlsx.md` | Excel |

### Media
| 파일 | 설명 |
|------|------|
| `remotion.md` | React 비디오 생성 (90KB) |

## 사용 예시

프로젝트에 필요한 규칙만 선택해서 설치:

```bash
# React 프로젝트
cp rules/react-best-practices.md .agent/rules/
cp rules/composition-patterns.md .agent/rules/

# 마케팅 사이트
cp rules/seo-audit.md .agent/rules/
cp rules/copywriting.md .agent/rules/
```

## Claude Code 버전

Claude Code용 플러그인은 `../organized/` 폴더에 있습니다.
